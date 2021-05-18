import android.os.AsyncTask;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;

class fix extends AsyncTask<Object, Object, Object> {
  String a = "";
  
  String b = "";
  
  private fix(fiu paramfiu) {}
  
  private SSLSocketFactory a() {
    try {
      SSLContext sSLContext;
      InputStream inputStream = this.c.getResources().openRawResource(2131230738);
      null = CertificateFactory.getInstance("X.509");
      try {
        Certificate certificate = null.generateCertificate(inputStream);
        System.out.println("ca=" + ((X509Certificate)certificate).getSubjectDN());
        inputStream.close();
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        keyStore.load(null, null);
        keyStore.setCertificateEntry("ca", certificate);
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        sSLContext = SSLContext.getInstance("TLS");
        return sSLContext.getSocketFactory();
      } finally {
        sSLContext.close();
      } 
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private byte[] a(InputStream paramInputStream) {
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
  
  protected Object doInBackground(Object... paramVarArgs) {
    // Byte code:
    //   0: new java/net/URL
    //   3: dup
    //   4: ldc 'https://mbb.paas.santanderbr.pre.corp/transfer/v1/listAllBanks'
    //   6: invokespecial <init> : (Ljava/lang/String;)V
    //   9: invokestatic openConnection : (Ljava/net/URL;)Ljava/net/URLConnection;
    //   12: checkcast javax/net/ssl/HttpsURLConnection
    //   15: astore_3
    //   16: aload_3
    //   17: aload_0
    //   18: invokespecial a : ()Ljavax/net/ssl/SSLSocketFactory;
    //   21: invokevirtual setSSLSocketFactory : (Ljavax/net/ssl/SSLSocketFactory;)V
    //   24: aload_3
    //   25: aload_0
    //   26: getfield c : Lfiu;
    //   29: invokestatic a : (Lfiu;)Ljavax/net/ssl/HostnameVerifier;
    //   32: invokevirtual setHostnameVerifier : (Ljavax/net/ssl/HostnameVerifier;)V
    //   35: aload_3
    //   36: ldc 'POST'
    //   38: invokevirtual setRequestMethod : (Ljava/lang/String;)V
    //   41: aload_3
    //   42: ldc 'Content-Type'
    //   44: ldc 'application/json'
    //   46: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   49: aload_3
    //   50: ldc 'accept'
    //   52: ldc 'application/json'
    //   54: invokevirtual addRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   57: aload_3
    //   58: ldc 'Accept-Encoding'
    //   60: ldc 'gzip'
    //   62: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload_3
    //   66: iconst_0
    //   67: invokevirtual setUseCaches : (Z)V
    //   70: aload_3
    //   71: iconst_1
    //   72: invokevirtual setDoInput : (Z)V
    //   75: aload_3
    //   76: iconst_1
    //   77: invokevirtual setDoOutput : (Z)V
    //   80: aload_3
    //   81: ldc 'Authorization'
    //   83: aload_0
    //   84: getfield c : Lfiu;
    //   87: invokestatic b : (Lfiu;)Ljava/lang/String;
    //   90: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   93: invokestatic a : ()Lnab;
    //   96: ldc '{"code":"877100000018301605021734110043020269826219074554", "name":"banco", "ispb":"3342" }'
    //   98: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   101: astore_1
    //   102: aload_1
    //   103: ifnull -> 462
    //   106: aload_1
    //   107: instanceof java/lang/String
    //   110: ifeq -> 370
    //   113: aload_1
    //   114: ifnull -> 457
    //   117: aload_1
    //   118: invokevirtual getBytes : ()[B
    //   121: astore_2
    //   122: aload_2
    //   123: astore_1
    //   124: aload_2
    //   125: arraylength
    //   126: i2l
    //   127: ldc2_w 256
    //   130: lcmp
    //   131: ifle -> 187
    //   134: new java/io/ByteArrayOutputStream
    //   137: dup
    //   138: invokespecial <init> : ()V
    //   141: astore #4
    //   143: new java/util/zip/GZIPOutputStream
    //   146: dup
    //   147: aload #4
    //   149: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   152: astore_1
    //   153: aload_1
    //   154: aload_2
    //   155: invokevirtual write : ([B)V
    //   158: aload_1
    //   159: invokevirtual close : ()V
    //   162: aload #4
    //   164: invokevirtual toByteArray : ()[B
    //   167: astore_1
    //   168: aload #4
    //   170: invokevirtual close : ()V
    //   173: aload_3
    //   174: ldc 'Content-Encoding'
    //   176: ldc 'gzip'
    //   178: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   181: aload_3
    //   182: aload_1
    //   183: arraylength
    //   184: invokevirtual setFixedLengthStreamingMode : (I)V
    //   187: new java/io/BufferedOutputStream
    //   190: dup
    //   191: aload_3
    //   192: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   195: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   198: astore_2
    //   199: aload_1
    //   200: ifnull -> 208
    //   203: aload_2
    //   204: aload_1
    //   205: invokevirtual write : ([B)V
    //   208: aload_2
    //   209: invokevirtual flush : ()V
    //   212: aload_2
    //   213: invokevirtual close : ()V
    //   216: aload_3
    //   217: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   220: invokevirtual close : ()V
    //   223: aload_3
    //   224: invokevirtual getResponseCode : ()I
    //   227: sipush #200
    //   230: if_icmpne -> 416
    //   233: aload_3
    //   234: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   237: astore_1
    //   238: aload_3
    //   239: invokevirtual getContentEncoding : ()Ljava/lang/String;
    //   242: ifnull -> 424
    //   245: aload_3
    //   246: invokevirtual getContentEncoding : ()Ljava/lang/String;
    //   249: ldc 'gzip'
    //   251: invokevirtual equals : (Ljava/lang/Object;)Z
    //   254: ifeq -> 424
    //   257: aload_0
    //   258: new java/io/BufferedInputStream
    //   261: dup
    //   262: new java/util/zip/GZIPInputStream
    //   265: dup
    //   266: aload_1
    //   267: invokespecial <init> : (Ljava/io/InputStream;)V
    //   270: invokespecial <init> : (Ljava/io/InputStream;)V
    //   273: invokespecial a : (Ljava/io/InputStream;)[B
    //   276: astore_2
    //   277: aload_1
    //   278: invokevirtual close : ()V
    //   281: aload_0
    //   282: new java/lang/String
    //   285: dup
    //   286: aload_2
    //   287: ldc_w 'UTF-8'
    //   290: invokespecial <init> : ([BLjava/lang/String;)V
    //   293: putfield a : Ljava/lang/String;
    //   296: aload_0
    //   297: aload_3
    //   298: ldc_w 'access-token'
    //   301: invokevirtual getHeaderField : (Ljava/lang/String;)Ljava/lang/String;
    //   304: putfield b : Ljava/lang/String;
    //   307: aload_0
    //   308: getfield a : Ljava/lang/String;
    //   311: ifnull -> 324
    //   314: aload_0
    //   315: getfield a : Ljava/lang/String;
    //   318: invokevirtual isEmpty : ()Z
    //   321: ifeq -> 341
    //   324: aload_3
    //   325: invokevirtual getResponseCode : ()I
    //   328: sipush #452
    //   331: if_icmpne -> 447
    //   334: aload_0
    //   335: ldc_w '452 - Erro na Autorização do Token'
    //   338: putfield a : Ljava/lang/String;
    //   341: aload_3
    //   342: invokevirtual getResponseCode : ()I
    //   345: sipush #200
    //   348: if_icmpne -> 365
    //   351: aload_0
    //   352: invokestatic a : ()Lnab;
    //   355: aload_0
    //   356: getfield a : Ljava/lang/String;
    //   359: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   362: putfield a : Ljava/lang/String;
    //   365: aload_0
    //   366: getfield a : Ljava/lang/String;
    //   369: areturn
    //   370: new eju
    //   373: dup
    //   374: invokespecial <init> : ()V
    //   377: astore_2
    //   378: aload_2
    //   379: invokevirtual h : ()Leju;
    //   382: pop
    //   383: aload_2
    //   384: invokevirtual j : ()Lejm;
    //   387: aload_1
    //   388: invokevirtual b : (Ljava/lang/Object;)Ljava/lang/String;
    //   391: astore_1
    //   392: goto -> 113
    //   395: astore_1
    //   396: aload_2
    //   397: invokevirtual close : ()V
    //   400: aload_3
    //   401: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   404: invokevirtual close : ()V
    //   407: aload_1
    //   408: athrow
    //   409: astore_1
    //   410: aload_1
    //   411: invokevirtual printStackTrace : ()V
    //   414: aconst_null
    //   415: areturn
    //   416: aload_3
    //   417: invokevirtual getErrorStream : ()Ljava/io/InputStream;
    //   420: astore_1
    //   421: goto -> 238
    //   424: aload_0
    //   425: new java/io/BufferedInputStream
    //   428: dup
    //   429: aload_1
    //   430: invokespecial <init> : (Ljava/io/InputStream;)V
    //   433: invokespecial a : (Ljava/io/InputStream;)[B
    //   436: astore_2
    //   437: goto -> 277
    //   440: astore_2
    //   441: aload_1
    //   442: invokevirtual close : ()V
    //   445: aload_2
    //   446: athrow
    //   447: aload_0
    //   448: ldc_w '500 - Erro Interno'
    //   451: putfield a : Ljava/lang/String;
    //   454: goto -> 341
    //   457: aconst_null
    //   458: astore_1
    //   459: goto -> 187
    //   462: aconst_null
    //   463: astore_1
    //   464: goto -> 113
    // Exception table:
    //   from	to	target	type
    //   0	102	409	java/lang/Exception
    //   106	113	409	java/lang/Exception
    //   117	122	409	java/lang/Exception
    //   124	187	409	java/lang/Exception
    //   187	199	409	java/lang/Exception
    //   203	208	395	finally
    //   208	212	395	finally
    //   212	238	409	java/lang/Exception
    //   238	277	440	finally
    //   277	324	409	java/lang/Exception
    //   324	341	409	java/lang/Exception
    //   341	365	409	java/lang/Exception
    //   365	370	409	java/lang/Exception
    //   370	392	409	java/lang/Exception
    //   396	409	409	java/lang/Exception
    //   416	421	409	java/lang/Exception
    //   424	437	440	finally
    //   441	447	409	java/lang/Exception
    //   447	454	409	java/lang/Exception
  }
  
  protected void onPostExecute(Object paramObject) {
    Log.i("PaaS", this.a);
    this.c.b.setText(this.a);
    if (this.b != null && !this.b.isEmpty()) {
      miq.C().f().a(new String(Base64.decode(this.b, 2)));
      Log.i("PaaS", this.a);
      this.c.b.setText(this.a);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */