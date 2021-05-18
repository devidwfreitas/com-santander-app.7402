package com.adjust.sdk;

import android.net.Uri;
import java.io.DataOutputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

public class UtilNetworking {
  private static String userAgent;
  
  private static String buildAuthorizationHeader(Map<String, String> paramMap, String paramString1, String paramString2, String paramString3) {
    if (paramString1 == null || paramString1.length() == 0)
      return null; 
    Map<String, String> map = getSignature(paramMap, paramString3, paramString1);
    String str1 = Util.sha256(map.get("clear_signature"));
    String str2 = map.get("fields");
    str1 = String.format("Signature %s,%s,%s,%s", new Object[] { String.format("secret_id=\"%s\"", new Object[] { paramString2 }), String.format("signature=\"%s\"", new Object[] { str1 }), String.format("algorithm=\"%s\"", new Object[] { "sha256" }), String.format("headers=\"%s\"", new Object[] { str2 }) });
    getLogger().verbose("authorizationHeader: %s", new Object[] { str1 });
    return str1;
  }
  
  private static Uri buildUri(String paramString, Map<String, String> paramMap) {
    Uri.Builder builder = new Uri.Builder();
    builder.scheme("https");
    builder.authority("app.adjust.com");
    builder.appendPath(paramString);
    for (Map.Entry<String, String> entry : paramMap.entrySet())
      builder.appendQueryParameter((String)entry.getKey(), (String)entry.getValue()); 
    long l = System.currentTimeMillis();
    builder.appendQueryParameter("sent_at", Util.dateFormatter.format(Long.valueOf(l)));
    return builder.build();
  }
  
  public static ResponseData createGETHttpsURLConnection(ActivityPackage paramActivityPackage) {
    try {
      HashMap<String, String> hashMap = new HashMap<String, String>(paramActivityPackage.getParameters());
      String str2 = extractAppSecret(hashMap);
      String str3 = extractSecretId(hashMap);
      HttpsURLConnection httpsURLConnection = AdjustFactory.getHttpsURLConnection(new URL(buildUri(paramActivityPackage.getPath(), hashMap).toString()));
      String str1 = buildAuthorizationHeader(hashMap, str2, str3, paramActivityPackage.getActivityKind().toString());
      if (str1 != null)
        httpsURLConnection.setRequestProperty("Authorization", str1); 
      setDefaultHttpsUrlConnectionProperties(httpsURLConnection, paramActivityPackage.getClientSdk());
      httpsURLConnection.setRequestMethod("GET");
      return readHttpResponse(httpsURLConnection, paramActivityPackage);
    } catch (Exception exception) {
      throw exception;
    } 
  }
  
  public static ResponseData createPOSTHttpsURLConnection(String paramString, ActivityPackage paramActivityPackage, int paramInt) {
    Exception exception3 = null;
    Exception exception2 = null;
    Exception exception1 = exception3;
    try {
      HttpsURLConnection httpsURLConnection = AdjustFactory.getHttpsURLConnection(new URL(paramString));
      exception1 = exception3;
      HashMap<String, String> hashMap = new HashMap<String, String>(paramActivityPackage.getParameters());
      exception1 = exception3;
      paramString = extractAppSecret(hashMap);
      exception1 = exception3;
      String str = extractSecretId(hashMap);
      exception1 = exception3;
      setDefaultHttpsUrlConnectionProperties(httpsURLConnection, paramActivityPackage.getClientSdk());
      exception1 = exception3;
      paramString = buildAuthorizationHeader(hashMap, paramString, str, paramActivityPackage.getActivityKind().toString());
      if (paramString != null) {
        exception1 = exception3;
        httpsURLConnection.setRequestProperty("Authorization", paramString);
      } 
      exception1 = exception3;
      httpsURLConnection.setRequestMethod("POST");
      exception1 = exception3;
      httpsURLConnection.setUseCaches(false);
      exception1 = exception3;
      httpsURLConnection.setDoInput(true);
      exception1 = exception3;
      httpsURLConnection.setDoOutput(true);
      exception1 = exception3;
      DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
      try {
        dataOutputStream.writeBytes(getPostDataString(hashMap, paramInt));
        return responseData;
      } catch (Exception exception4) {
      
      } finally {
        ActivityPackage activityPackage;
        paramActivityPackage = null;
        exception1 = exception;
      } 
    } catch (Exception exception) {
      exception1 = exception2;
      throw exception;
    } finally {}
    if (exception1 != null)
      try {
        exception1.flush();
        exception1.close();
      } catch (Exception exception) {} 
    throw paramString;
  }
  
  private static String extractAppSecret(Map<String, String> paramMap) {
    return paramMap.remove("app_secret");
  }
  
  private static String extractSecretId(Map<String, String> paramMap) {
    return paramMap.remove("secret_id");
  }
  
  private static ILogger getLogger() {
    return AdjustFactory.getLogger();
  }
  
  private static String getPostDataString(Map<String, String> paramMap, int paramInt) {
    StringBuilder stringBuilder = new StringBuilder();
    for (Map.Entry<String, String> entry : paramMap.entrySet()) {
      String str2 = URLEncoder.encode((String)entry.getKey(), "UTF-8");
      String str1 = (String)entry.getValue();
      if (str1 != null) {
        str1 = URLEncoder.encode(str1, "UTF-8");
      } else {
        str1 = "";
      } 
      if (stringBuilder.length() > 0)
        stringBuilder.append("&"); 
      stringBuilder.append(str2);
      stringBuilder.append("=");
      stringBuilder.append(str1);
    } 
    long l = System.currentTimeMillis();
    String str = Util.dateFormatter.format(Long.valueOf(l));
    stringBuilder.append("&");
    stringBuilder.append(URLEncoder.encode("sent_at", "UTF-8"));
    stringBuilder.append("=");
    stringBuilder.append(URLEncoder.encode(str, "UTF-8"));
    if (paramInt > 0) {
      stringBuilder.append("&");
      stringBuilder.append(URLEncoder.encode("queue_size", "UTF-8"));
      stringBuilder.append("=");
      stringBuilder.append(URLEncoder.encode("" + paramInt, "UTF-8"));
    } 
    return stringBuilder.toString();
  }
  
  private static Map<String, String> getSignature(Map<String, String> paramMap, String paramString1, String paramString2) {
    String str2 = paramMap.get("created_at");
    String str3 = getValidIdentifier(paramMap);
    String str1 = paramMap.get(str3);
    HashMap<Object, Object> hashMap2 = new HashMap<Object, Object>();
    hashMap2.put("app_secret", paramString2);
    hashMap2.put("created_at", str2);
    hashMap2.put("activity_kind", paramString1);
    hashMap2.put(str3, str1);
    paramString1 = "";
    str1 = "";
    for (Map.Entry<Object, Object> entry : hashMap2.entrySet()) {
      if (entry.getValue() != null) {
        paramString1 = paramString1 + (String)entry.getKey() + " ";
        str1 = str1 + (String)entry.getValue();
      } 
    } 
    paramString1 = paramString1.substring(0, paramString1.length() - 1);
    HashMap<Object, Object> hashMap1 = new HashMap<Object, Object>();
    hashMap1.put("clear_signature", str1);
    hashMap1.put("fields", paramString1);
    return (Map)hashMap1;
  }
  
  private static String getValidIdentifier(Map<String, String> paramMap) {
    return (paramMap.get("gps_adid") != null) ? "gps_adid" : ((paramMap.get("fire_adid") != null) ? "fire_adid" : ((paramMap.get("android_id") != null) ? "android_id" : ((paramMap.get("mac_sha1") != null) ? "mac_sha1" : ((paramMap.get("mac_md5") != null) ? "mac_md5" : ((paramMap.get("android_uuid") != null) ? "android_uuid" : null)))));
  }
  
  private static ResponseData readHttpResponse(HttpsURLConnection paramHttpsURLConnection, ActivityPackage paramActivityPackage) {
    // Byte code:
    //   0: new java/lang/StringBuffer
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #5
    //   9: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   12: astore_2
    //   13: aload_1
    //   14: invokestatic buildResponseData : (Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    //   17: astore_3
    //   18: aload_0
    //   19: invokevirtual connect : ()V
    //   22: aload_0
    //   23: invokevirtual getResponseCode : ()I
    //   26: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   29: astore #4
    //   31: aload #4
    //   33: invokevirtual intValue : ()I
    //   36: sipush #400
    //   39: if_icmplt -> 119
    //   42: aload_0
    //   43: invokevirtual getErrorStream : ()Ljava/io/InputStream;
    //   46: astore_1
    //   47: new java/io/BufferedReader
    //   50: dup
    //   51: new java/io/InputStreamReader
    //   54: dup
    //   55: aload_1
    //   56: invokespecial <init> : (Ljava/io/InputStream;)V
    //   59: invokespecial <init> : (Ljava/io/Reader;)V
    //   62: astore_1
    //   63: aload_1
    //   64: invokevirtual readLine : ()Ljava/lang/String;
    //   67: astore #6
    //   69: aload #6
    //   71: ifnull -> 127
    //   74: aload #5
    //   76: aload #6
    //   78: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   81: pop
    //   82: goto -> 63
    //   85: astore_1
    //   86: aload_2
    //   87: ldc_w 'Failed to read response. (%s)'
    //   90: iconst_1
    //   91: anewarray java/lang/Object
    //   94: dup
    //   95: iconst_0
    //   96: aload_1
    //   97: invokevirtual getMessage : ()Ljava/lang/String;
    //   100: aastore
    //   101: invokeinterface error : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   106: aload_1
    //   107: athrow
    //   108: astore_1
    //   109: aload_0
    //   110: ifnull -> 117
    //   113: aload_0
    //   114: invokevirtual disconnect : ()V
    //   117: aload_1
    //   118: athrow
    //   119: aload_0
    //   120: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   123: astore_1
    //   124: goto -> 47
    //   127: aload_0
    //   128: ifnull -> 135
    //   131: aload_0
    //   132: invokevirtual disconnect : ()V
    //   135: aload #5
    //   137: invokevirtual toString : ()Ljava/lang/String;
    //   140: astore_0
    //   141: aload_2
    //   142: ldc_w 'Response: %s'
    //   145: iconst_1
    //   146: anewarray java/lang/Object
    //   149: dup
    //   150: iconst_0
    //   151: aload_0
    //   152: aastore
    //   153: invokeinterface verbose : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   158: aload_0
    //   159: ifnull -> 169
    //   162: aload_0
    //   163: invokevirtual length : ()I
    //   166: ifne -> 171
    //   169: aload_3
    //   170: areturn
    //   171: new org/json/JSONObject
    //   174: dup
    //   175: aload_0
    //   176: invokespecial <init> : (Ljava/lang/String;)V
    //   179: astore_0
    //   180: aload_0
    //   181: ifnull -> 169
    //   184: aload_3
    //   185: aload_0
    //   186: putfield jsonResponse : Lorg/json/JSONObject;
    //   189: aload_0
    //   190: ldc_w 'message'
    //   193: aconst_null
    //   194: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   197: astore_1
    //   198: aload_3
    //   199: aload_1
    //   200: putfield message : Ljava/lang/String;
    //   203: aload_3
    //   204: aload_0
    //   205: ldc_w 'timestamp'
    //   208: aconst_null
    //   209: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   212: putfield timestamp : Ljava/lang/String;
    //   215: aload_3
    //   216: aload_0
    //   217: ldc_w 'adid'
    //   220: aconst_null
    //   221: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   224: putfield adid : Ljava/lang/String;
    //   227: aload_1
    //   228: astore_0
    //   229: aload_1
    //   230: ifnonnull -> 237
    //   233: ldc_w 'No message found'
    //   236: astore_0
    //   237: aload #4
    //   239: ifnull -> 317
    //   242: aload #4
    //   244: invokevirtual intValue : ()I
    //   247: sipush #200
    //   250: if_icmpne -> 317
    //   253: aload_2
    //   254: ldc_w '%s'
    //   257: iconst_1
    //   258: anewarray java/lang/Object
    //   261: dup
    //   262: iconst_0
    //   263: aload_0
    //   264: aastore
    //   265: invokeinterface info : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   270: aload_3
    //   271: iconst_1
    //   272: putfield success : Z
    //   275: aload_3
    //   276: areturn
    //   277: astore_0
    //   278: ldc_w 'Failed to parse json response. (%s)'
    //   281: iconst_1
    //   282: anewarray java/lang/Object
    //   285: dup
    //   286: iconst_0
    //   287: aload_0
    //   288: invokevirtual getMessage : ()Ljava/lang/String;
    //   291: aastore
    //   292: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   295: astore_0
    //   296: aload_2
    //   297: aload_0
    //   298: iconst_0
    //   299: anewarray java/lang/Object
    //   302: invokeinterface error : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   307: aload_3
    //   308: aload_0
    //   309: putfield message : Ljava/lang/String;
    //   312: aconst_null
    //   313: astore_0
    //   314: goto -> 180
    //   317: aload_2
    //   318: ldc_w '%s'
    //   321: iconst_1
    //   322: anewarray java/lang/Object
    //   325: dup
    //   326: iconst_0
    //   327: aload_0
    //   328: aastore
    //   329: invokeinterface error : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   334: aload_3
    //   335: areturn
    // Exception table:
    //   from	to	target	type
    //   18	47	85	java/lang/Exception
    //   18	47	108	finally
    //   47	63	85	java/lang/Exception
    //   47	63	108	finally
    //   63	69	85	java/lang/Exception
    //   63	69	108	finally
    //   74	82	85	java/lang/Exception
    //   74	82	108	finally
    //   86	108	108	finally
    //   119	124	85	java/lang/Exception
    //   119	124	108	finally
    //   171	180	277	org/json/JSONException
  }
  
  private static void setDefaultHttpsUrlConnectionProperties(HttpsURLConnection paramHttpsURLConnection, String paramString) {
    paramHttpsURLConnection.setRequestProperty("Client-SDK", paramString);
    paramHttpsURLConnection.setConnectTimeout(60000);
    paramHttpsURLConnection.setReadTimeout(60000);
    if (userAgent != null)
      paramHttpsURLConnection.setRequestProperty("User-Agent", userAgent); 
  }
  
  public static void setUserAgent(String paramString) {
    userAgent = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\UtilNetworking.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */