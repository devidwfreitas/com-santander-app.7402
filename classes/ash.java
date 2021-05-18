import android.util.Log;
import android.webkit.URLUtil;
import com.ca.android.app.CaMDOHTTPClient;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;

public class ash {
  private static final String a = "[ConnectionProvider]";
  
  private static SSLContext b = null;
  
  private static final String c = "X.509";
  
  private static final String d = "ca";
  
  private static final String e = "TLS";
  
  private static InputStream f = null;
  
  public ash(String paramString) {
    a(paramString);
  }
  
  public static HttpURLConnection a(String paramString, InputStream paramInputStream) {
    if (paramString != null) {
      f = paramInputStream;
      if (b == null)
        b = a(f); 
      HttpURLConnection httpURLConnection = (HttpURLConnection)CaMDOHTTPClient.openConnection(new URL(paramString));
      if (b != null)
        ((HttpsURLConnection)httpURLConnection).setSSLSocketFactory(b.getSocketFactory()); 
      return httpURLConnection;
    } 
    return null;
  }
  
  public static SSLContext a(InputStream paramInputStream) {
    // Byte code:
    //   0: ldc 'X.509'
    //   2: invokestatic getInstance : (Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   5: aload_0
    //   6: invokevirtual generateCertificate : (Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   9: astore_2
    //   10: invokestatic getDefaultType : ()Ljava/lang/String;
    //   13: invokestatic getInstance : (Ljava/lang/String;)Ljava/security/KeyStore;
    //   16: astore_1
    //   17: aload_1
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual load : (Ljava/io/InputStream;[C)V
    //   23: aload_1
    //   24: ldc 'ca'
    //   26: aload_2
    //   27: invokevirtual setCertificateEntry : (Ljava/lang/String;Ljava/security/cert/Certificate;)V
    //   30: invokestatic getDefaultAlgorithm : ()Ljava/lang/String;
    //   33: invokestatic getInstance : (Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   36: astore_2
    //   37: aload_2
    //   38: aload_1
    //   39: invokevirtual init : (Ljava/security/KeyStore;)V
    //   42: ldc 'TLS'
    //   44: invokestatic getInstance : (Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   47: astore_1
    //   48: aload_1
    //   49: aconst_null
    //   50: aload_2
    //   51: invokevirtual getTrustManagers : ()[Ljavax/net/ssl/TrustManager;
    //   54: aconst_null
    //   55: invokevirtual init : ([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   58: aload_0
    //   59: invokevirtual close : ()V
    //   62: aload_1
    //   63: areturn
    //   64: astore_0
    //   65: ldc '[ConnectionProvider]'
    //   67: new java/lang/StringBuilder
    //   70: dup
    //   71: invokespecial <init> : ()V
    //   74: ldc 'configSSLContext ==> IOException '
    //   76: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: aload_0
    //   80: invokevirtual getMessage : ()Ljava/lang/String;
    //   83: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual toString : ()Ljava/lang/String;
    //   89: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   92: pop
    //   93: aload_1
    //   94: areturn
    //   95: astore_2
    //   96: aconst_null
    //   97: astore_1
    //   98: ldc '[ConnectionProvider]'
    //   100: new java/lang/StringBuilder
    //   103: dup
    //   104: invokespecial <init> : ()V
    //   107: ldc 'configSSLContext ==> IOException '
    //   109: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: aload_2
    //   113: invokevirtual getMessage : ()Ljava/lang/String;
    //   116: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual toString : ()Ljava/lang/String;
    //   122: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   125: pop
    //   126: aload_0
    //   127: invokevirtual close : ()V
    //   130: aload_1
    //   131: areturn
    //   132: astore_0
    //   133: ldc '[ConnectionProvider]'
    //   135: new java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial <init> : ()V
    //   142: ldc 'configSSLContext ==> IOException '
    //   144: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: aload_0
    //   148: invokevirtual getMessage : ()Ljava/lang/String;
    //   151: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual toString : ()Ljava/lang/String;
    //   157: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   160: pop
    //   161: aload_1
    //   162: areturn
    //   163: astore_2
    //   164: aconst_null
    //   165: astore_1
    //   166: ldc '[ConnectionProvider]'
    //   168: new java/lang/StringBuilder
    //   171: dup
    //   172: invokespecial <init> : ()V
    //   175: ldc 'configSSLContext ==> CertificateException '
    //   177: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload_2
    //   181: invokevirtual getMessage : ()Ljava/lang/String;
    //   184: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual toString : ()Ljava/lang/String;
    //   190: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   193: pop
    //   194: aload_0
    //   195: invokevirtual close : ()V
    //   198: aload_1
    //   199: areturn
    //   200: astore_0
    //   201: ldc '[ConnectionProvider]'
    //   203: new java/lang/StringBuilder
    //   206: dup
    //   207: invokespecial <init> : ()V
    //   210: ldc 'configSSLContext ==> IOException '
    //   212: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: aload_0
    //   216: invokevirtual getMessage : ()Ljava/lang/String;
    //   219: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: invokevirtual toString : ()Ljava/lang/String;
    //   225: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   228: pop
    //   229: aload_1
    //   230: areturn
    //   231: astore_2
    //   232: aconst_null
    //   233: astore_1
    //   234: ldc '[ConnectionProvider]'
    //   236: new java/lang/StringBuilder
    //   239: dup
    //   240: invokespecial <init> : ()V
    //   243: ldc 'configSSLContext ==> NoSuchAlgorithmException '
    //   245: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: aload_2
    //   249: invokevirtual getMessage : ()Ljava/lang/String;
    //   252: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: invokevirtual toString : ()Ljava/lang/String;
    //   258: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   261: pop
    //   262: aload_0
    //   263: invokevirtual close : ()V
    //   266: aload_1
    //   267: areturn
    //   268: astore_0
    //   269: ldc '[ConnectionProvider]'
    //   271: new java/lang/StringBuilder
    //   274: dup
    //   275: invokespecial <init> : ()V
    //   278: ldc 'configSSLContext ==> IOException '
    //   280: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: aload_0
    //   284: invokevirtual getMessage : ()Ljava/lang/String;
    //   287: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: invokevirtual toString : ()Ljava/lang/String;
    //   293: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   296: pop
    //   297: aload_1
    //   298: areturn
    //   299: astore_2
    //   300: aconst_null
    //   301: astore_1
    //   302: ldc '[ConnectionProvider]'
    //   304: new java/lang/StringBuilder
    //   307: dup
    //   308: invokespecial <init> : ()V
    //   311: ldc 'configSSLContext ==> KeyStoreException '
    //   313: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: aload_2
    //   317: invokevirtual getMessage : ()Ljava/lang/String;
    //   320: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: invokevirtual toString : ()Ljava/lang/String;
    //   326: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   329: pop
    //   330: aload_0
    //   331: invokevirtual close : ()V
    //   334: aload_1
    //   335: areturn
    //   336: astore_0
    //   337: ldc '[ConnectionProvider]'
    //   339: new java/lang/StringBuilder
    //   342: dup
    //   343: invokespecial <init> : ()V
    //   346: ldc 'configSSLContext ==> IOException '
    //   348: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: aload_0
    //   352: invokevirtual getMessage : ()Ljava/lang/String;
    //   355: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: invokevirtual toString : ()Ljava/lang/String;
    //   361: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   364: pop
    //   365: aload_1
    //   366: areturn
    //   367: astore_2
    //   368: aconst_null
    //   369: astore_1
    //   370: ldc '[ConnectionProvider]'
    //   372: new java/lang/StringBuilder
    //   375: dup
    //   376: invokespecial <init> : ()V
    //   379: ldc 'configSSLContext ==> KeyManagementException '
    //   381: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: aload_2
    //   385: invokevirtual getMessage : ()Ljava/lang/String;
    //   388: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   391: invokevirtual toString : ()Ljava/lang/String;
    //   394: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   397: pop
    //   398: aload_0
    //   399: invokevirtual close : ()V
    //   402: aload_1
    //   403: areturn
    //   404: astore_0
    //   405: ldc '[ConnectionProvider]'
    //   407: new java/lang/StringBuilder
    //   410: dup
    //   411: invokespecial <init> : ()V
    //   414: ldc 'configSSLContext ==> IOException '
    //   416: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   419: aload_0
    //   420: invokevirtual getMessage : ()Ljava/lang/String;
    //   423: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: invokevirtual toString : ()Ljava/lang/String;
    //   429: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   432: pop
    //   433: aload_1
    //   434: areturn
    //   435: astore_1
    //   436: aload_0
    //   437: invokevirtual close : ()V
    //   440: aload_1
    //   441: athrow
    //   442: astore_0
    //   443: ldc '[ConnectionProvider]'
    //   445: new java/lang/StringBuilder
    //   448: dup
    //   449: invokespecial <init> : ()V
    //   452: ldc 'configSSLContext ==> IOException '
    //   454: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: aload_0
    //   458: invokevirtual getMessage : ()Ljava/lang/String;
    //   461: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: invokevirtual toString : ()Ljava/lang/String;
    //   467: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   470: pop
    //   471: goto -> 440
    //   474: astore_2
    //   475: goto -> 370
    //   478: astore_2
    //   479: goto -> 302
    //   482: astore_2
    //   483: goto -> 234
    //   486: astore_2
    //   487: goto -> 166
    //   490: astore_2
    //   491: goto -> 98
    // Exception table:
    //   from	to	target	type
    //   0	48	95	java/io/IOException
    //   0	48	163	java/security/cert/CertificateException
    //   0	48	231	java/security/NoSuchAlgorithmException
    //   0	48	299	java/security/KeyStoreException
    //   0	48	367	java/security/KeyManagementException
    //   0	48	435	finally
    //   48	58	490	java/io/IOException
    //   48	58	486	java/security/cert/CertificateException
    //   48	58	482	java/security/NoSuchAlgorithmException
    //   48	58	478	java/security/KeyStoreException
    //   48	58	474	java/security/KeyManagementException
    //   48	58	435	finally
    //   58	62	64	java/io/IOException
    //   98	126	435	finally
    //   126	130	132	java/io/IOException
    //   166	194	435	finally
    //   194	198	200	java/io/IOException
    //   234	262	435	finally
    //   262	266	268	java/io/IOException
    //   302	330	435	finally
    //   330	334	336	java/io/IOException
    //   370	398	435	finally
    //   398	402	404	java/io/IOException
    //   436	440	442	java/io/IOException
  }
  
  private static void a(String paramString) {
    Certificate certificate = null;
    if (ase.b(paramString))
      throw new ExceptionInInitializerError("Erro nao foi inicializado uma url de servico valida."); 
    if (!URLUtil.isNetworkUrl(paramString.trim()))
      throw new ExceptionInInitializerError("Nao eh uma url valida ".concat(paramString)); 
    try {
      a(paramString, (TrustManager[])null);
      return;
    } catch (Exception exception) {
      try {
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
        BufferedInputStream bufferedInputStream = b(f);
        if (bufferedInputStream != null) {
          TrustManagerFactory trustManagerFactory;
          try {
            Certificate certificate1 = certificateFactory.generateCertificate(bufferedInputStream);
            certificate = certificate1;
            bufferedInputStream.close();
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setCertificateEntry("ca", certificate);
            trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            return;
          } catch (Exception exception1) {
            Log.e("[ConnectionProvider]", "Falha generateCertificate ".concat(ase.a(exception1.getMessage())), exception1);
            bufferedInputStream.close();
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setCertificateEntry("ca", (Certificate)trustManagerFactory);
            trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            return;
          } finally {
            bufferedInputStream.close();
          } 
        } 
      } catch (Exception exception1) {
        Log.e("[ConnectionProvider]", "Falha na inicialização SSL ".concat(ase.a(exception1.getMessage())), exception1);
        return;
      } 
      Log.e("[ConnectionProvider]", "Falha na inicialização SSL, nao foi identificado um ambiente seguro cadastrado.");
      return;
    } 
  }
  
  private static void a(String paramString, TrustManager[] paramArrayOfTrustManager) {
    if (URLUtil.isHttpsUrl(paramString)) {
      URLConnection uRLConnection = CaMDOHTTPClient.openConnection(new URL(paramString));
      if (uRLConnection instanceof HttpsURLConnection) {
        b = SSLContext.getInstance("TLS");
        b.init(null, paramArrayOfTrustManager, null);
        ((HttpsURLConnection)uRLConnection).setSSLSocketFactory(b.getSocketFactory());
        uRLConnection.connect();
        ((HttpsURLConnection)uRLConnection).disconnect();
      } 
    } 
  }
  
  private static BufferedInputStream b(InputStream paramInputStream) {
    return (paramInputStream != null) ? new BufferedInputStream(paramInputStream) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */