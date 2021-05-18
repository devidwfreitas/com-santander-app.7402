import java.io.InputStream;
import javax.net.ssl.SSLContext;

public class nah {
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
    //   65: ldc 'Error'
    //   67: aload_0
    //   68: invokevirtual getMessage : ()Ljava/lang/String;
    //   71: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   74: pop
    //   75: aload_1
    //   76: areturn
    //   77: astore_2
    //   78: aconst_null
    //   79: astore_1
    //   80: ldc 'Error'
    //   82: aload_2
    //   83: invokevirtual toString : ()Ljava/lang/String;
    //   86: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   89: pop
    //   90: aload_0
    //   91: invokevirtual close : ()V
    //   94: aload_1
    //   95: areturn
    //   96: astore_0
    //   97: ldc 'Error'
    //   99: aload_0
    //   100: invokevirtual getMessage : ()Ljava/lang/String;
    //   103: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   106: pop
    //   107: aload_1
    //   108: areturn
    //   109: astore_2
    //   110: aconst_null
    //   111: astore_1
    //   112: ldc 'Error'
    //   114: aload_2
    //   115: invokevirtual getMessage : ()Ljava/lang/String;
    //   118: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   121: pop
    //   122: aload_0
    //   123: invokevirtual close : ()V
    //   126: aload_1
    //   127: areturn
    //   128: astore_0
    //   129: ldc 'Error'
    //   131: aload_0
    //   132: invokevirtual getMessage : ()Ljava/lang/String;
    //   135: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   138: pop
    //   139: aload_1
    //   140: areturn
    //   141: astore_2
    //   142: aconst_null
    //   143: astore_1
    //   144: ldc 'Error'
    //   146: aload_2
    //   147: invokevirtual getMessage : ()Ljava/lang/String;
    //   150: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   153: pop
    //   154: aload_0
    //   155: invokevirtual close : ()V
    //   158: aload_1
    //   159: areturn
    //   160: astore_0
    //   161: ldc 'Error'
    //   163: aload_0
    //   164: invokevirtual getMessage : ()Ljava/lang/String;
    //   167: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   170: pop
    //   171: aload_1
    //   172: areturn
    //   173: astore_2
    //   174: aconst_null
    //   175: astore_1
    //   176: ldc 'Error'
    //   178: aload_2
    //   179: invokevirtual getMessage : ()Ljava/lang/String;
    //   182: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   185: pop
    //   186: aload_0
    //   187: invokevirtual close : ()V
    //   190: aload_1
    //   191: areturn
    //   192: astore_0
    //   193: ldc 'Error'
    //   195: aload_0
    //   196: invokevirtual getMessage : ()Ljava/lang/String;
    //   199: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   202: pop
    //   203: aload_1
    //   204: areturn
    //   205: astore_2
    //   206: aconst_null
    //   207: astore_1
    //   208: ldc 'Error'
    //   210: aload_2
    //   211: invokevirtual getMessage : ()Ljava/lang/String;
    //   214: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   217: pop
    //   218: aload_0
    //   219: invokevirtual close : ()V
    //   222: aload_1
    //   223: areturn
    //   224: astore_0
    //   225: ldc 'Error'
    //   227: aload_0
    //   228: invokevirtual getMessage : ()Ljava/lang/String;
    //   231: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   234: pop
    //   235: aload_1
    //   236: areturn
    //   237: astore_1
    //   238: aload_0
    //   239: invokevirtual close : ()V
    //   242: aload_1
    //   243: athrow
    //   244: astore_0
    //   245: ldc 'Error'
    //   247: aload_0
    //   248: invokevirtual getMessage : ()Ljava/lang/String;
    //   251: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   254: pop
    //   255: goto -> 242
    //   258: astore_2
    //   259: goto -> 208
    //   262: astore_2
    //   263: goto -> 176
    //   266: astore_2
    //   267: goto -> 144
    //   270: astore_2
    //   271: goto -> 112
    //   274: astore_2
    //   275: goto -> 80
    // Exception table:
    //   from	to	target	type
    //   0	48	77	java/io/IOException
    //   0	48	109	java/security/cert/CertificateException
    //   0	48	141	java/security/NoSuchAlgorithmException
    //   0	48	173	java/security/KeyStoreException
    //   0	48	205	java/security/KeyManagementException
    //   0	48	237	finally
    //   48	58	274	java/io/IOException
    //   48	58	270	java/security/cert/CertificateException
    //   48	58	266	java/security/NoSuchAlgorithmException
    //   48	58	262	java/security/KeyStoreException
    //   48	58	258	java/security/KeyManagementException
    //   48	58	237	finally
    //   58	62	64	java/io/IOException
    //   80	90	237	finally
    //   90	94	96	java/io/IOException
    //   112	122	237	finally
    //   122	126	128	java/io/IOException
    //   144	154	237	finally
    //   154	158	160	java/io/IOException
    //   176	186	237	finally
    //   186	190	192	java/io/IOException
    //   208	218	237	finally
    //   218	222	224	java/io/IOException
    //   238	242	244	java/io/IOException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */