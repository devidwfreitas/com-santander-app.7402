package com.ca.mdo;

import android.annotation.TargetApi;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

class AESEncrypter implements Encrypter {
  private static final String CIPHER_ALGO = "AES/CBC/PKCS5Padding";
  
  private static final String INITIAL_VECTOR_SEED = "Mobility#M@@15$1";
  
  private static final String KEY_ALGORITHM = "AES";
  
  private static final int PKCS5_PADDING_BYTES = 8;
  
  private static final int SYMMETRIC_KEY_SIZE = 256;
  
  private static AESEncrypter _instance = null;
  
  private byte[] iv;
  
  private AESEncrypter() {
    init();
  }
  
  public static AESEncrypter getInstance() {
    if (_instance == null)
      _instance = new AESEncrypter(); 
    return _instance;
  }
  
  private void init() {
    try {
      this.iv = "Mobility#M@@15$1".getBytes("UTF-8");
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      CALog.e("Exception while init IV :" + unsupportedEncodingException, unsupportedEncodingException);
      return;
    } 
  }
  
  @TargetApi(8)
  public String encryptData(byte[] paramArrayOfbyte, Object paramObject) throws Exception {
    paramObject = paramObject;
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(1, (Key)paramObject, new IvParameterSpec(this.iv));
    return Base64.encodeToString(cipher.doFinal(paramArrayOfbyte), 2);
  }
  
  public SecretKey generateSymmetricKey() {
    try {
      KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
      keyGenerator.init(256);
      return keyGenerator.generateKey();
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      CALog.e("Exception while AES " + noSuchAlgorithmException, noSuchAlgorithmException);
      return null;
    } 
  }
  
  public int getPaddingBytes() {
    return 8;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\AESEncrypter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */