import android.support.annotation.NonNull;
import android.util.Base64;
import android.util.Log;
import com.ca.android.app.CaMDOHTTPClient;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import org.json.JSONObject;

public class iz {
  private static final String b = "---------------------------------------";
  
  private static final String c = "HTTPRequester";
  
  private URL a;
  
  private Boolean d = Boolean.valueOf(false);
  
  private iv e;
  
  private ip f;
  
  private SSLContext g;
  
  public iz() {}
  
  public iz(ip paramip) {
    this.f = paramip;
  }
  
  public iz(iv paramiv, ip paramip) {
    this.e = paramiv;
    this.f = paramip;
  }
  
  private String a(InputStream paramInputStream) {
    try {
      StringBuilder stringBuilder = new StringBuilder();
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
      while (true) {
        String str = bufferedReader.readLine();
        if (str != null) {
          stringBuilder.append(str);
          continue;
        } 
        bufferedReader.close();
        return stringBuilder.toString();
      } 
    } catch (IOException iOException) {
      return null;
    } 
  }
  
  public static String a(byte[] paramArrayOfbyte) {
    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(paramArrayOfbyte);
    GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 32);
    StringBuilder stringBuilder = new StringBuilder();
    byte[] arrayOfByte = new byte[32];
    while (true) {
      int i = gZIPInputStream.read(arrayOfByte);
      if (i != -1) {
        stringBuilder.append(new String(arrayOfByte, 0, i));
        continue;
      } 
      gZIPInputStream.close();
      byteArrayInputStream.close();
      return stringBuilder.toString();
    } 
  }
  
  private void a(is paramis, HttpURLConnection paramHttpURLConnection) {
    // Byte code:
    //   0: aload_1
    //   1: aload_2
    //   2: invokevirtual getHeaderFields : ()Ljava/util/Map;
    //   5: invokevirtual a : (Ljava/util/Map;)V
    //   8: new java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: astore_3
    //   16: aload_0
    //   17: getfield f : Lip;
    //   20: getstatic ip.HUB : Lip;
    //   23: invokevirtual equals : (Ljava/lang/Object;)Z
    //   26: ifeq -> 117
    //   29: aload_3
    //   30: aload_0
    //   31: aload_2
    //   32: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   35: invokespecial b : (Ljava/io/InputStream;)Ljava/lang/String;
    //   38: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: aload_3
    //   43: invokevirtual length : ()I
    //   46: ifle -> 116
    //   49: aload_0
    //   50: getfield e : Liv;
    //   53: ifnull -> 202
    //   56: aload_0
    //   57: getfield e : Liv;
    //   60: aload_3
    //   61: invokevirtual toString : ()Ljava/lang/String;
    //   64: invokeinterface a : (Ljava/lang/String;)Ljava/lang/String;
    //   69: astore_2
    //   70: new org/json/JSONObject
    //   73: dup
    //   74: invokespecial <init> : ()V
    //   77: astore_3
    //   78: aload_2
    //   79: ldc '[]'
    //   81: invokevirtual equals : (Ljava/lang/Object;)Z
    //   84: ifne -> 246
    //   87: new org/json/JSONTokener
    //   90: dup
    //   91: aload_2
    //   92: invokespecial <init> : (Ljava/lang/String;)V
    //   95: invokevirtual nextValue : ()Ljava/lang/Object;
    //   98: astore_2
    //   99: aload_2
    //   100: instanceof org/json/JSONObject
    //   103: ifeq -> 210
    //   106: aload_2
    //   107: checkcast org/json/JSONObject
    //   110: astore_2
    //   111: aload_1
    //   112: aload_2
    //   113: invokevirtual a : (Lorg/json/JSONObject;)V
    //   116: return
    //   117: aload_2
    //   118: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   121: sipush #200
    //   124: if_icmpne -> 181
    //   127: aload_2
    //   128: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   131: astore_2
    //   132: aload_0
    //   133: getfield f : Lip;
    //   136: getstatic ip.PAAS : Lip;
    //   139: invokevirtual equals : (Ljava/lang/Object;)Z
    //   142: ifeq -> 189
    //   145: aload_3
    //   146: new java/lang/String
    //   149: dup
    //   150: aload_0
    //   151: new java/io/BufferedInputStream
    //   154: dup
    //   155: new java/util/zip/GZIPInputStream
    //   158: dup
    //   159: aload_2
    //   160: invokespecial <init> : (Ljava/io/InputStream;)V
    //   163: invokespecial <init> : (Ljava/io/InputStream;)V
    //   166: invokespecial c : (Ljava/io/InputStream;)[B
    //   169: ldc 'UTF-8'
    //   171: invokespecial <init> : ([BLjava/lang/String;)V
    //   174: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: goto -> 42
    //   181: aload_2
    //   182: invokevirtual getErrorStream : ()Ljava/io/InputStream;
    //   185: astore_2
    //   186: goto -> 132
    //   189: aload_3
    //   190: aload_0
    //   191: aload_2
    //   192: invokespecial b : (Ljava/io/InputStream;)Ljava/lang/String;
    //   195: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: pop
    //   199: goto -> 42
    //   202: aload_3
    //   203: invokevirtual toString : ()Ljava/lang/String;
    //   206: astore_2
    //   207: goto -> 70
    //   210: aload_2
    //   211: instanceof org/json/JSONArray
    //   214: ifeq -> 246
    //   217: aload_2
    //   218: checkcast org/json/JSONArray
    //   221: astore_3
    //   222: new org/json/JSONObject
    //   225: dup
    //   226: invokespecial <init> : ()V
    //   229: astore_2
    //   230: aload_2
    //   231: ldc 'data'
    //   233: aload_3
    //   234: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   237: pop
    //   238: aload_1
    //   239: aload_2
    //   240: invokevirtual a : (Lorg/json/JSONObject;)V
    //   243: goto -> 111
    //   246: aload_3
    //   247: astore_2
    //   248: goto -> 111
  }
  
  public static byte[] a(String paramString) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(paramString.length());
    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
    gZIPOutputStream.write(paramString.getBytes());
    gZIPOutputStream.close();
    byte[] arrayOfByte = byteArrayOutputStream.toByteArray();
    byteArrayOutputStream.close();
    return arrayOfByte;
  }
  
  private String b(InputStream paramInputStream) {
    StringBuilder stringBuilder = new StringBuilder();
    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(paramInputStream, "UTF-8"));
    while (true) {
      String str = bufferedReader.readLine();
      if (str != null) {
        stringBuilder.append(str);
        continue;
      } 
      return stringBuilder.toString();
    } 
  }
  
  private void b(HttpURLConnection paramHttpURLConnection) {
    String str;
    if (a().booleanValue() && paramHttpURLConnection != null && paramHttpURLConnection.getHeaderFields() != null && paramHttpURLConnection.getHeaderFields().containsKey("x-uid") && paramHttpURLConnection.getHeaderFields().containsKey("x-access-token")) {
      String str1 = paramHttpURLConnection.getHeaderField("x-uid");
      str = paramHttpURLConnection.getHeaderField("x-access-token");
      if (str1 != null && str != null) {
        str = Base64.encodeToString((str1 + ":" + str).getBytes(), 2);
        it.a().a(str);
      } 
      return;
    } 
    if (a().booleanValue() && str != null && str.getHeaderFields() != null && str.getHeaderFields().containsKey("access-token")) {
      str = str.getHeaderField("access-token");
      if (str != null) {
        ix.a().a(str);
        return;
      } 
    } 
  }
  
  private void c(HttpURLConnection paramHttpURLConnection) {
    if (ii.b != null)
      try {
        if (this.g == null) {
          Certificate certificate = CertificateFactory.getInstance("X.509").generateCertificate(new BufferedInputStream(ii.b));
          KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
          keyStore.load(null, null);
          keyStore.setCertificateEntry("ca", certificate);
          TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
          trustManagerFactory.init(keyStore);
          this.g = SSLContext.getInstance("TLS");
          this.g.init(null, trustManagerFactory.getTrustManagers(), null);
        } 
        ((HttpsURLConnection)paramHttpURLConnection).setSSLSocketFactory(this.g.getSocketFactory());
        return;
      } catch (Exception exception) {
        return;
      }  
  }
  
  private byte[] c(InputStream paramInputStream) {
    byte[] arrayOfByte = new byte[1024];
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    try {
      while (true) {
        int i = paramInputStream.read(arrayOfByte);
        if (i != -1) {
          byteArrayOutputStream.write(arrayOfByte, 0, i);
          continue;
        } 
        paramInputStream.close();
        return byteArrayOutputStream.toByteArray();
      } 
    } finally {
      byteArrayOutputStream.close();
    } 
  }
  
  public is a(iq paramiq) {
    boolean bool;
    URL uRL;
    if (this.f.equals(ip.REST)) {
      bool = false;
    } else {
      bool = paramiq.g().booleanValue();
    } 
    a(Boolean.valueOf(bool));
    if (ii.a != null && !ii.a.equals("")) {
      uRL = ii.a.toURI().resolve(paramiq.b()).toURL();
    } else {
      uRL = (new URI(paramiq.b())).toURL();
    } 
    try {
      HttpURLConnection httpURLConnection = (HttpURLConnection)CaMDOHTTPClient.openConnection(uRL);
    } catch (Exception exception) {
      return a((is)null, (HttpURLConnection)paramiq, exception);
    } finally {
      paramiq = null;
    } 
  }
  
  @NonNull
  protected is a(is paramis, HttpURLConnection paramHttpURLConnection, Exception paramException) {
    return (paramException instanceof java.net.UnknownHostException) ? new is(504, "Service Unavailable") : ((paramException instanceof java.net.SocketTimeoutException) ? new is(504, "Socket timeout") : ((paramException instanceof SecurityException) ? new is(-1, paramException.getMessage()) : ((paramException instanceof org.json.JSONException) ? new is(-1, paramException.getMessage()) : new is(500, paramException.getMessage()))));
  }
  
  @NonNull
  protected is a(HttpURLConnection paramHttpURLConnection) {
    int i = CaMDOHTTPClient.getResponseCode(paramHttpURLConnection);
    is is = new is();
    switch (i) {
      default:
        if (!this.f.equals(ip.REST))
          b(paramHttpURLConnection); 
        if (this.f != null && this.f.equals(ip.PAAS))
          a(is, paramHttpURLConnection); 
      case 504:
        return new is(i, a(paramHttpURLConnection.getErrorStream()));
      case 200:
      case 201:
      case 202:
      case 204:
      case 500:
        break;
    } 
    if (this.f == null || (this.f != null && !this.f.equals(ip.REST)))
      b(paramHttpURLConnection); 
    is.a(Integer.valueOf(CaMDOHTTPClient.getResponseCode(paramHttpURLConnection)));
    a(is, paramHttpURLConnection);
    return is;
  }
  
  protected Boolean a() {
    return this.d;
  }
  
  public void a(ip paramip) {
    this.f = paramip;
  }
  
  protected void a(iq paramiq, HttpURLConnection paramHttpURLConnection) {
    b(paramiq, paramHttpURLConnection);
    JSONObject jSONObject = paramiq.d();
    if (jSONObject != null) {
      Iterator<String> iterator = jSONObject.keys();
      while (iterator.hasNext()) {
        String str = iterator.next();
        paramHttpURLConnection.setRequestProperty(str, jSONObject.getString(str));
      } 
    } 
  }
  
  protected void a(iq paramiq, HttpURLConnection paramHttpURLConnection, is paramis) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(" --------------------------------------- \n");
    stringBuilder.append(" RESPONSE \n");
    stringBuilder.append("Endpoint : " + ii.a + paramiq.b() + "\n");
    stringBuilder.append("Status : " + paramis.a() + " - " + paramis.b() + "\n");
    stringBuilder.append("Header : [ \n");
    for (Map.Entry<String, List<String>> entry : paramHttpURLConnection.getHeaderFields().entrySet()) {
      for (String str : entry.getValue())
        stringBuilder.append((String)entry.getKey() + " : " + str + "\n"); 
    } 
    stringBuilder.append("] \n");
    if (paramis.a().intValue() == 201 || paramis.a().intValue() == 200) {
      ejm ejm = new ejm();
      stringBuilder.append("     " + ejm.b(paramis.c()));
    } 
    stringBuilder.append(" }\n");
    stringBuilder.append(" --------------------------------------- \n");
    Log.v("HTTPRequester", stringBuilder.toString());
  }
  
  @NonNull
  protected void a(iq paramiq, URL paramURL, HttpURLConnection paramHttpURLConnection) {
    paramHttpURLConnection.setConnectTimeout(paramiq.f().intValue());
    paramHttpURLConnection.setReadTimeout(paramiq.f().intValue());
    paramHttpURLConnection.setDoInput(true);
  }
  
  public void a(iv paramiv) {
    this.e = paramiv;
  }
  
  protected void a(Boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public ip b() {
    return this.f;
  }
  
  protected void b(iq paramiq) {
    JSONObject jSONObject1;
    String str = null;
    if (paramiq.e() instanceof JSONObject) {
      jSONObject1 = (JSONObject)paramiq.e();
    } else if (paramiq.e() instanceof String) {
      str = (String)paramiq.e();
      jSONObject1 = null;
    } else {
      jSONObject1 = null;
    } 
    JSONObject jSONObject2 = paramiq.d();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(" --------------------------------------- \n");
    stringBuilder.append(" REQUEST \n");
    stringBuilder.append(" Http method : " + paramiq.c() + "\n");
    stringBuilder.append(" Endpoint : " + ii.a + paramiq.b() + "\n");
    stringBuilder.append("Header : { \n");
    Iterator<String> iterator = jSONObject2.keys();
    while (iterator.hasNext()) {
      String str1 = iterator.next();
      stringBuilder.append("     " + str1 + " : " + jSONObject2.get(str1) + "\n");
    } 
    if (paramiq instanceof ir) {
      String str1 = it.a().b();
      paramiq = paramiq;
      if (str1 != null && paramiq.g().booleanValue())
        stringBuilder.append("     Authorization : Bearer " + str1 + "\n"); 
    } else {
      String str1 = ix.a().b();
      if (str1 != null && paramiq.g().booleanValue())
        stringBuilder.append("     Authorization : Bearer " + str1 + "\n"); 
    } 
    stringBuilder.append("} \n");
    stringBuilder.append(" Body : { \n");
    if (jSONObject1 != null) {
      Iterator<String> iterator1 = jSONObject1.keys();
      while (iterator1.hasNext()) {
        str = iterator1.next();
        stringBuilder.append("     " + str + " : " + jSONObject1.get(str) + "\n");
      } 
    } else {
      stringBuilder.append("     " + str + "\n");
    } 
    stringBuilder.append(" }\n");
    stringBuilder.append(" --------------------------------------- \n");
    Log.v("HTTPRequester", stringBuilder.toString());
  }
  
  protected void b(iq paramiq, HttpURLConnection paramHttpURLConnection) {
    // Byte code:
    //   0: aload_0
    //   1: getfield f : Lip;
    //   4: ifnull -> 138
    //   7: aload_0
    //   8: getfield f : Lip;
    //   11: getstatic ip.PAAS : Lip;
    //   14: invokevirtual equals : (Ljava/lang/Object;)Z
    //   17: ifeq -> 138
    //   20: aload_1
    //   21: invokevirtual d : ()Lorg/json/JSONObject;
    //   24: ldc 'x-uid'
    //   26: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   29: astore #4
    //   31: aload_1
    //   32: invokevirtual d : ()Lorg/json/JSONObject;
    //   35: ldc_w 'x-authorization-token'
    //   38: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   41: astore_3
    //   42: aload_1
    //   43: invokevirtual d : ()Lorg/json/JSONObject;
    //   46: ldc 'x-uid'
    //   48: invokevirtual remove : (Ljava/lang/String;)Ljava/lang/Object;
    //   51: pop
    //   52: aload_1
    //   53: invokevirtual d : ()Lorg/json/JSONObject;
    //   56: ldc_w 'x-authorization-token'
    //   59: invokevirtual remove : (Ljava/lang/String;)Ljava/lang/Object;
    //   62: pop
    //   63: aload_3
    //   64: ifnull -> 79
    //   67: aload_3
    //   68: astore_1
    //   69: ldc_w ''
    //   72: aload_3
    //   73: invokevirtual equals : (Ljava/lang/Object;)Z
    //   76: ifeq -> 99
    //   79: new java/lang/String
    //   82: dup
    //   83: invokestatic a : ()Lix;
    //   86: invokevirtual b : ()Ljava/lang/String;
    //   89: iconst_2
    //   90: invokestatic decode : (Ljava/lang/String;I)[B
    //   93: ldc 'UTF-8'
    //   95: invokespecial <init> : ([BLjava/lang/String;)V
    //   98: astore_1
    //   99: aload_2
    //   100: ldc_w 'Authorization'
    //   103: new java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial <init> : ()V
    //   110: aload #4
    //   112: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: ldc ':'
    //   117: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload_1
    //   121: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: invokevirtual toString : ()Ljava/lang/String;
    //   127: invokevirtual getBytes : ()[B
    //   130: iconst_2
    //   131: invokestatic encodeToString : ([BI)Ljava/lang/String;
    //   134: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   137: return
    //   138: aload_0
    //   139: getfield f : Lip;
    //   142: ifnull -> 208
    //   145: aload_0
    //   146: getfield f : Lip;
    //   149: getstatic ip.HUB : Lip;
    //   152: invokevirtual equals : (Ljava/lang/Object;)Z
    //   155: ifeq -> 208
    //   158: invokestatic a : ()Lit;
    //   161: invokevirtual b : ()Ljava/lang/String;
    //   164: astore_3
    //   165: aload_3
    //   166: ifnull -> 208
    //   169: aload_1
    //   170: invokevirtual g : ()Ljava/lang/Boolean;
    //   173: invokevirtual booleanValue : ()Z
    //   176: ifeq -> 208
    //   179: aload_2
    //   180: ldc_w 'Authorization'
    //   183: new java/lang/StringBuilder
    //   186: dup
    //   187: invokespecial <init> : ()V
    //   190: ldc_w 'Bearer '
    //   193: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: aload_3
    //   197: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual toString : ()Ljava/lang/String;
    //   203: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   206: return
    //   207: astore_1
    //   208: return
    // Exception table:
    //   from	to	target	type
    //   0	63	207	java/lang/Exception
    //   69	79	207	java/lang/Exception
    //   79	99	207	java/lang/Exception
    //   99	137	207	java/lang/Exception
    //   138	165	207	java/lang/Exception
    //   169	206	207	java/lang/Exception
  }
  
  protected void c(iq paramiq, HttpURLConnection paramHttpURLConnection) {
    paramHttpURLConnection.setRequestMethod(paramiq.c().toString());
  }
  
  protected void d(iq paramiq, HttpURLConnection paramHttpURLConnection) {
    // Byte code:
    //   0: getstatic ja.a : [I
    //   3: aload_1
    //   4: invokevirtual c : ()Lim;
    //   7: invokevirtual ordinal : ()I
    //   10: iaload
    //   11: tableswitch default -> 36, 1 -> 157, 2 -> 157, 3 -> 157
    //   36: aload_2
    //   37: iconst_0
    //   38: invokevirtual setDoOutput : (Z)V
    //   41: aload_1
    //   42: invokevirtual e : ()Ljava/lang/Object;
    //   45: ifnull -> 156
    //   48: aload_1
    //   49: invokevirtual e : ()Ljava/lang/Object;
    //   52: instanceof java/lang/String
    //   55: ifne -> 68
    //   58: aload_1
    //   59: invokevirtual e : ()Ljava/lang/Object;
    //   62: instanceof org/json/JSONObject
    //   65: ifeq -> 179
    //   68: aload_1
    //   69: invokevirtual e : ()Ljava/lang/Object;
    //   72: ifnull -> 156
    //   75: aload_1
    //   76: invokevirtual e : ()Ljava/lang/Object;
    //   79: invokevirtual toString : ()Ljava/lang/String;
    //   82: invokevirtual length : ()I
    //   85: ifle -> 156
    //   88: ldc_w '{}'
    //   91: aload_1
    //   92: invokevirtual e : ()Ljava/lang/Object;
    //   95: invokevirtual toString : ()Ljava/lang/String;
    //   98: invokevirtual equals : (Ljava/lang/Object;)Z
    //   101: ifne -> 156
    //   104: aload_0
    //   105: getfield f : Lip;
    //   108: ifnull -> 165
    //   111: aload_0
    //   112: getfield f : Lip;
    //   115: getstatic ip.PAAS : Lip;
    //   118: invokevirtual equals : (Ljava/lang/Object;)Z
    //   121: ifeq -> 165
    //   124: aload_1
    //   125: invokevirtual e : ()Ljava/lang/Object;
    //   128: invokevirtual toString : ()Ljava/lang/String;
    //   131: invokestatic a : (Ljava/lang/String;)[B
    //   134: astore_1
    //   135: new java/io/DataOutputStream
    //   138: dup
    //   139: aload_2
    //   140: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   143: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   146: astore_2
    //   147: aload_2
    //   148: aload_1
    //   149: invokevirtual write : ([B)V
    //   152: aload_2
    //   153: invokevirtual flush : ()V
    //   156: return
    //   157: aload_2
    //   158: iconst_1
    //   159: invokevirtual setDoOutput : (Z)V
    //   162: goto -> 41
    //   165: aload_1
    //   166: invokevirtual e : ()Ljava/lang/Object;
    //   169: invokevirtual toString : ()Ljava/lang/String;
    //   172: invokevirtual getBytes : ()[B
    //   175: astore_1
    //   176: goto -> 135
    //   179: new java/io/IOException
    //   182: dup
    //   183: ldc_w ''
    //   186: invokespecial <init> : (Ljava/lang/String;)V
    //   189: athrow
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */