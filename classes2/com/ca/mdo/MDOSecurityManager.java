package com.ca.mdo;

import android.annotation.TargetApi;
import android.content.SharedPreferences;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import javax.crypto.SecretKey;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONException;
import org.json.JSONObject;

class MDOSecurityManager {
  private static MDOSecurityManager _instance;
  
  private String mCryptoUrl;
  
  private String mEncryptionAlgorithm;
  
  private String mEncryptionKey;
  
  private String mEncryptionKeyVersion;
  
  private Integer mKeySize;
  
  private boolean mSecureMode = false;
  
  public static MDOSecurityManager getInstance() {
    if (_instance == null)
      _instance = new MDOSecurityManager(); 
    return _instance;
  }
  
  private String getPublicEncryptionKey() {
    return Util.getSharedPreferences().getString(Constants.PREF_ENCRYPTION_KEY, null);
  }
  
  private String getPublicKeyAlgo() {
    return Util.getSharedPreferences().getString(Constants.PREF_ENCRYPTION_KEY_ALGO, null);
  }
  
  private int getPublicKeySize() {
    return Util.getSharedPreferences().getInt(Constants.PREF_ENCRYPTION_KEY_SIZE, 0);
  }
  
  private void loadNewKeyInfo(String paramString1, String paramString2, String paramString3, int paramInt) {
    SharedPreferences.Editor editor = Util.getSharedPreferencesEditor();
    editor.putString(Constants.PREF_NEW_ENCRYPTION_KEY, paramString1);
    editor.putString(Constants.PREF_NEW_ENCRYPTION_KEY_ALGO, paramString3);
    editor.putString(Constants.PREF_NEW_ENCRYPTION_KEY_VER, paramString2);
    editor.putInt(Constants.PREF_NEW_ENCRYPTION_KEY_SIZE, paramInt);
    editor.commit();
  }
  
  private JSONObject modifyHeaderForEncryption(JSONObject paramJSONObject) throws JSONException {
    JSONObject jSONObject = new JSONObject();
    jSONObject.put("cpt", paramJSONObject.get("cpt"));
    paramJSONObject.remove("cpt");
    jSONObject.put("ckv", paramJSONObject.get("ckv"));
    paramJSONObject.remove("ckv");
    jSONObject.put("v", paramJSONObject);
    return jSONObject;
  }
  
  public void downloadNewSecurityKey() {
    DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
    HttpGet httpGet = new HttpGet(this.mCryptoUrl);
    try {
      JSONObject jSONObject;
      HttpResponse httpResponse = defaultHttpClient.execute((HttpUriRequest)httpGet);
      if (httpResponse.getStatusLine().getStatusCode() == 200) {
        CALog.d("Successfully downloaded new encryption  data");
        jSONObject = Util.readJsonFromResponse(httpResponse);
        if (jSONObject != null) {
          loadNewKeyInfo(jSONObject.getString("encryptionKey"), jSONObject.getString("encryptionKeyVersion"), jSONObject.getString("algorithm"), jSONObject.getInt("keySize"));
          return;
        } 
      } else {
        CALog.e("Failed to download new Security Key " + jSONObject.getStatusLine());
        return;
      } 
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
    } 
  }
  
  @TargetApi(8)
  public String encrypt(JSONObject paramJSONObject, String paramString) {
    JSONObject jSONObject;
    String str2 = paramJSONObject.toString();
    String str1 = str2;
    if (this.mSecureMode) {
      JSONObject jSONObject1;
      if (this.mSecureMode && this.mEncryptionAlgorithm.equals("RSA")) {
        jSONObject1 = new JSONObject();
        RSAEncrypter rSAEncrypter = RSAEncrypter.getInstance();
        byte[] arrayOfByte = new byte[0];
        try {
          byte[] arrayOfByte1 = paramJSONObject.toString().getBytes("utf-8");
          arrayOfByte = arrayOfByte1;
        } catch (UnsupportedEncodingException unsupportedEncodingException) {
          CALog.e(unsupportedEncodingException.getMessage(), unsupportedEncodingException);
        } 
        int i = this.mKeySize.intValue() / 8;
        int j = rSAEncrypter.getPaddingBytes();
        int k = arrayOfByte.length;
        boolean bool = "hdr".equals(paramString);
        if (k < i - j) {
          if (bool) {
            try {
              paramJSONObject = modifyHeaderForEncryption(paramJSONObject);
              paramJSONObject.put("v", rSAEncrypter.encryptData(paramJSONObject.get("v").toString().getBytes("utf-8"), this.mEncryptionKey));
            } catch (Exception exception) {
              CALog.e("Exception while encrypting data with RSA" + exception, exception);
              jSONObject = jSONObject1;
            } 
          } else {
            jSONObject1.put("v", rSAEncrypter.encryptData(arrayOfByte, this.mEncryptionKey));
            paramJSONObject = jSONObject1;
          } 
        } else {
          AESEncrypter aESEncrypter = AESEncrypter.getInstance();
          SecretKey secretKey = aESEncrypter.generateSymmetricKey();
          try {
            String str = rSAEncrypter.encryptData(secretKey.getEncoded(), this.mEncryptionKey);
            if (bool) {
              paramJSONObject = modifyHeaderForEncryption(paramJSONObject);
              paramJSONObject.put("v", aESEncrypter.encryptData(paramJSONObject.get("v").toString().getBytes("utf-8"), secretKey));
              paramJSONObject.put("k", str);
            } else {
              jSONObject1.put("v", aESEncrypter.encryptData(paramJSONObject.toString().getBytes("utf-8"), secretKey));
              jSONObject1.put("k", str);
              paramJSONObject = jSONObject1;
            } 
            str1 = paramJSONObject.toString();
          } catch (Exception exception) {
            CALog.e("Exception while encrypting data with RSA" + exception, exception);
            jSONObject = jSONObject1;
            str1 = jSONObject.toString();
          } 
          return str1;
        } 
      } else {
        CALog.e("Invalid encrypt() call : isSecureMode=" + this.mSecureMode + " Algo=" + this.mEncryptionAlgorithm);
        return (String)jSONObject1;
      } 
    } else {
      return str1;
    } 
    str1 = jSONObject.toString();
  }
  
  public long getPublicEncryptionKeyVersion() {
    String str;
    if (this.mEncryptionKeyVersion == null) {
      str = Util.getSharedPreferences().getString(Constants.PREF_ENCRYPTION_KEY_VER, "1");
    } else {
      str = this.mEncryptionKeyVersion;
    } 
    long l2 = Long.parseLong(str);
    long l1 = l2;
    if (l2 <= 0L)
      l1 = 1L; 
    return l1;
  }
  
  public void initPublicKeyInfo(String paramString1, String paramString2, String paramString3, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial getPublicEncryptionKey : ()Ljava/lang/String;
    //   4: astore #11
    //   6: aload_0
    //   7: invokevirtual getPublicEncryptionKeyVersion : ()J
    //   10: invokestatic valueOf : (J)Ljava/lang/String;
    //   13: astore #10
    //   15: aload_0
    //   16: invokespecial getPublicKeyAlgo : ()Ljava/lang/String;
    //   19: astore #9
    //   21: aload_0
    //   22: invokespecial getPublicKeySize : ()I
    //   25: istore #6
    //   27: aload #11
    //   29: astore #8
    //   31: aload #11
    //   33: ifnonnull -> 57
    //   36: invokestatic getSharedPreferencesEditor : ()Landroid/content/SharedPreferences$Editor;
    //   39: getstatic com/ca/mdo/Constants.PREF_ENCRYPTION_KEY : Ljava/lang/String;
    //   42: aload_1
    //   43: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   48: invokeinterface commit : ()Z
    //   53: pop
    //   54: aload_1
    //   55: astore #8
    //   57: aload #10
    //   59: ifnull -> 76
    //   62: aload #10
    //   64: astore_1
    //   65: aload #10
    //   67: ldc_w '1'
    //   70: invokevirtual equals : (Ljava/lang/Object;)Z
    //   73: ifeq -> 96
    //   76: invokestatic getSharedPreferencesEditor : ()Landroid/content/SharedPreferences$Editor;
    //   79: getstatic com/ca/mdo/Constants.PREF_ENCRYPTION_KEY_VER : Ljava/lang/String;
    //   82: aload_2
    //   83: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   88: invokeinterface commit : ()Z
    //   93: pop
    //   94: aload_2
    //   95: astore_1
    //   96: aload #9
    //   98: astore_2
    //   99: aload #9
    //   101: ifnonnull -> 124
    //   104: invokestatic getSharedPreferencesEditor : ()Landroid/content/SharedPreferences$Editor;
    //   107: getstatic com/ca/mdo/Constants.PREF_ENCRYPTION_KEY_ALGO : Ljava/lang/String;
    //   110: aload_3
    //   111: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   116: invokeinterface commit : ()Z
    //   121: pop
    //   122: aload_3
    //   123: astore_2
    //   124: iload #6
    //   126: istore #5
    //   128: iload #6
    //   130: ifne -> 156
    //   133: invokestatic getSharedPreferencesEditor : ()Landroid/content/SharedPreferences$Editor;
    //   136: getstatic com/ca/mdo/Constants.PREF_ENCRYPTION_KEY_SIZE : Ljava/lang/String;
    //   139: iload #4
    //   141: invokeinterface putInt : (Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    //   146: invokeinterface commit : ()Z
    //   151: pop
    //   152: iload #4
    //   154: istore #5
    //   156: aload_0
    //   157: iload #5
    //   159: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   162: putfield mKeySize : Ljava/lang/Integer;
    //   165: aload_0
    //   166: aload #8
    //   168: putfield mEncryptionKey : Ljava/lang/String;
    //   171: aload_0
    //   172: aload_1
    //   173: putfield mEncryptionKeyVersion : Ljava/lang/String;
    //   176: aload_0
    //   177: aload_2
    //   178: putfield mEncryptionAlgorithm : Ljava/lang/String;
    //   181: aload #8
    //   183: ifnull -> 200
    //   186: aload_1
    //   187: ifnull -> 200
    //   190: iconst_1
    //   191: istore #7
    //   193: aload_0
    //   194: iload #7
    //   196: putfield mSecureMode : Z
    //   199: return
    //   200: iconst_0
    //   201: istore #7
    //   203: goto -> 193
  }
  
  public boolean isSecureMode() {
    return this.mSecureMode;
  }
  
  public void loadPlistConfiguration(Map<String, String> paramMap) {
    this.mCryptoUrl = paramMap.get(Constants.CRYPTO_URL);
    String str2 = paramMap.get("encryptionKey");
    String str3 = paramMap.get("encryptionKeyVersion");
    String str4 = paramMap.get(Constants.ENCRYPTION_ALGORITHM);
    String str1 = paramMap.get(Constants.ENCRYPTION_KEY_SIZE);
    if (str2 != null && str3 != null)
      initPublicKeyInfo(str2, str3, str4, Integer.valueOf(str1).intValue()); 
  }
  
  public void replaceSecurityKeyWithNewKey() {
    SharedPreferences sharedPreferences = Util.getSharedPreferences();
    String str = sharedPreferences.getString(Constants.PREF_NEW_ENCRYPTION_KEY, null);
    SharedPreferences.Editor editor = Util.getSharedPreferencesEditor();
    if (str != null) {
      String str1 = sharedPreferences.getString(Constants.PREF_NEW_ENCRYPTION_KEY_VER, null);
      int i = sharedPreferences.getInt(Constants.PREF_NEW_ENCRYPTION_KEY_SIZE, 0);
      String str2 = sharedPreferences.getString(Constants.PREF_NEW_ENCRYPTION_KEY_ALGO, null);
      CALog.v("New key information is available :New Version =" + str1);
      editor.putString(Constants.PREF_ENCRYPTION_KEY_ALGO, str2);
      editor.putString(Constants.PREF_ENCRYPTION_KEY, str);
      editor.putString(Constants.PREF_ENCRYPTION_KEY_VER, str1);
      editor.putInt(Constants.PREF_ENCRYPTION_KEY_SIZE, i);
      editor.remove(Constants.PREF_NEW_ENCRYPTION_KEY);
      editor.remove(Constants.PREF_NEW_ENCRYPTION_KEY_VER);
      editor.remove(Constants.PREF_NEW_ENCRYPTION_KEY_SIZE);
      editor.remove(Constants.PREF_NEW_ENCRYPTION_KEY_ALGO);
      editor.commit();
      this.mEncryptionKeyVersion = str1;
      this.mEncryptionKey = str;
      this.mEncryptionAlgorithm = str2;
      this.mKeySize = Integer.valueOf(i);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\MDOSecurityManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */