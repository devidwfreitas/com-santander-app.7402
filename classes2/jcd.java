import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Base64;
import android.util.Log;
import com.ca.android.app.CaMDOHTTPClient;
import com.santander.app.ExitActivity;
import com.santander.app.MinhaConta;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLContext;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

public class jcd {
  protected static final Set<String> a;
  
  protected static final Set<String> b;
  
  protected static final Set<String> c;
  
  public static final long d = 256L;
  
  public static final String e = "incorrect authentication";
  
  private static final String f = "ConnectionControler";
  
  private static final int g = 30000;
  
  private static final int h = 30000;
  
  private static final int i = 3;
  
  private static final int j = 5000;
  
  private static final int k = 3;
  
  private static final int l = 5000;
  
  private static final int m = 3;
  
  private static final int n = 5000;
  
  private static final String o = "Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.";
  
  private static final String p = "Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.";
  
  private static final String q = "Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.";
  
  private static final String r = "Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.";
  
  private static SSLContext s = null;
  
  private static ArrayList<String> t = new ArrayList<String>();
  
  private static naf u = new naf();
  
  private static final String v = "error sessao";
  
  private static final String w = "Ocorreu um erro de validação. Por favor, entre em contato com a Central de Atendimento.";
  
  private static final AtomicBoolean x = new AtomicBoolean();
  
  static {
    a = new HashSet<String>();
    a.add("tokenSession");
    a.add("tokenSessao");
    a.add("tokenTransacao");
    a.add("tokenTransacaoHub");
    a.add("dataHash");
    a.add("hash");
    a.add("idSessao");
    a.add("objSerial");
    a.add("conteudoArquivoManifestacao");
    b = new HashSet<String>();
    b.add("getPublicKey");
    b.add("init");
    b.add("buscarPorCoordenada2");
    b.add("buscarPorAgencia");
    b.add("listaBancosPopularesISPB");
    b.add("validarCPFNovo");
    b.add("obterUsuarioCpfNovo");
    b.add("prepararPerfilDispositivo");
    b.add("validarSenhaUsuarioPorCpf");
    b.add("autenticarUsuario");
    b.add("buscarPorAgencia");
    b.add("enviarGeolocalizacao");
    b.add("formatarDadosCliente");
    b.add("listaTodosBancos");
    b.add("notificarPhishing");
    c = new HashSet<String>();
    c.add("getPublicKey");
    c.add("init");
    c.add("buscarPorCoordenada2");
    c.add("obterUsuarioPorCpf");
    c.add("validarSessao");
    c.add("invalidarSessao");
    c.add("listaBancosPopularesISPB");
    c.add("validarCPFNovo");
    c.add("obterUsuarioCpfNovo");
    c.add("prepararPerfilDispositivo");
    c.add("validarSenhaUsuarioPorCpf");
    c.add("autenticarUsuario");
    c.add("enviarGeolocalizacao");
    c.add("formatarDadosCliente");
    c.add("listaTodosBancos");
    c.add("consultaContratosCP");
    c.add("notificarPhishing");
    c();
    a();
  }
  
  private static String a(String paramString) {
    return b(mxj.a(paramString, "//soapenv:Body", a).toString());
  }
  
  private static String a(String paramString1, String paramString2) {
    List<Node> list = (new SAXReader()).read(new StringReader(paramString1)).selectNodes(paramString2);
    return (list != null && !list.isEmpty()) ? ((Node)list.get(0)).getText() : "";
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    return x.get() ? null : a(paramString1, paramString2, paramString3, paramBoolean, false, true);
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2) {
    return x.get() ? null : a(paramString1, paramString2, paramString3, paramBoolean1, false, paramBoolean2);
  }
  
  private static String a(String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    // Byte code:
    //   0: getstatic jcd.x : Ljava/util/concurrent/atomic/AtomicBoolean;
    //   3: invokevirtual get : ()Z
    //   6: ifeq -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: invokestatic b : ()Landroid/content/Context;
    //   14: astore #8
    //   16: iconst_0
    //   17: istore #7
    //   19: iconst_0
    //   20: istore #6
    //   22: iload #6
    //   24: iconst_3
    //   25: if_icmpge -> 40
    //   28: aload #8
    //   30: invokestatic a : (Landroid/content/Context;)Z
    //   33: istore #7
    //   35: iload #7
    //   37: ifeq -> 357
    //   40: iload #7
    //   42: ifeq -> 497
    //   45: aload_1
    //   46: aload_1
    //   47: ldc '<web:'
    //   49: invokevirtual indexOf : (Ljava/lang/String;)I
    //   52: iconst_5
    //   53: iadd
    //   54: invokevirtual substring : (I)Ljava/lang/String;
    //   57: astore #8
    //   59: aload #8
    //   61: iconst_0
    //   62: aload #8
    //   64: ldc '>'
    //   66: invokevirtual indexOf : (Ljava/lang/String;)I
    //   69: invokevirtual substring : (II)Ljava/lang/String;
    //   72: ldc '/'
    //   74: ldc ''
    //   76: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   79: astore #11
    //   81: aconst_null
    //   82: astore #10
    //   84: ldc ''
    //   86: astore #8
    //   88: aload_1
    //   89: ldc 'connUuid'
    //   91: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   94: ifeq -> 388
    //   97: ldc '<connUuid>'
    //   99: astore #8
    //   101: aload_1
    //   102: astore #9
    //   104: getstatic jcd.c : Ljava/util/Set;
    //   107: aload #11
    //   109: invokeinterface contains : (Ljava/lang/Object;)Z
    //   114: ifne -> 152
    //   117: invokestatic randomUUID : ()Ljava/util/UUID;
    //   120: invokevirtual toString : ()Ljava/lang/String;
    //   123: astore #10
    //   125: aload_1
    //   126: aload #8
    //   128: ldc_w '<requestId>'
    //   131: aload #10
    //   133: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   136: ldc_w '</requestId>'
    //   139: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   142: aload #8
    //   144: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   147: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   150: astore #9
    //   152: aload #9
    //   154: astore_1
    //   155: getstatic jcd.b : Ljava/util/Set;
    //   158: aload #11
    //   160: invokeinterface contains : (Ljava/lang/Object;)Z
    //   165: ifne -> 198
    //   168: aload #9
    //   170: aload #8
    //   172: ldc_w '<dataHash>'
    //   175: aload #9
    //   177: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   180: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   183: ldc_w '</dataHash>'
    //   186: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   189: aload #8
    //   191: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   194: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   197: astore_1
    //   198: invokestatic a : ()Lmyu;
    //   201: aload_1
    //   202: aload_0
    //   203: aload #11
    //   205: invokevirtual a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   208: getstatic jcd.t : Ljava/util/ArrayList;
    //   211: aload #11
    //   213: invokevirtual contains : (Ljava/lang/Object;)Z
    //   216: ifeq -> 505
    //   219: iload #4
    //   221: ifeq -> 505
    //   224: new java/lang/StringBuilder
    //   227: dup
    //   228: invokespecial <init> : ()V
    //   231: invokestatic p : ()Ljava/lang/String;
    //   234: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: aload #11
    //   239: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: invokevirtual toString : ()Ljava/lang/String;
    //   245: astore_0
    //   246: aload_1
    //   247: ldc_w '//arg0'
    //   250: invokestatic c : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   253: astore_1
    //   254: iconst_1
    //   255: istore #6
    //   257: aload_1
    //   258: invokevirtual getBytes : ()[B
    //   261: arraylength
    //   262: i2l
    //   263: ldc2_w 256
    //   266: lcmp
    //   267: ifle -> 436
    //   270: new java/io/ByteArrayOutputStream
    //   273: dup
    //   274: invokespecial <init> : ()V
    //   277: astore #8
    //   279: new java/util/zip/GZIPOutputStream
    //   282: dup
    //   283: aload #8
    //   285: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   288: astore #9
    //   290: aload #9
    //   292: aload_1
    //   293: ldc_w 'UTF-8'
    //   296: invokestatic forName : (Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   299: invokevirtual getBytes : (Ljava/nio/charset/Charset;)[B
    //   302: invokevirtual write : ([B)V
    //   305: aload #9
    //   307: invokevirtual close : ()V
    //   310: aload #8
    //   312: invokevirtual toByteArray : ()[B
    //   315: astore_1
    //   316: aload #8
    //   318: invokevirtual close : ()V
    //   321: iload #4
    //   323: ifeq -> 430
    //   326: iload #6
    //   328: ifeq -> 430
    //   331: iconst_1
    //   332: istore #4
    //   334: aload_0
    //   335: aload_1
    //   336: aload_2
    //   337: iload_3
    //   338: iconst_0
    //   339: iconst_0
    //   340: iload #4
    //   342: aload #11
    //   344: ldc_w 'gzip'
    //   347: aload #10
    //   349: iload #5
    //   351: invokestatic a : (Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   354: astore_0
    //   355: aload_0
    //   356: areturn
    //   357: ldc2_w 5000
    //   360: invokestatic sleep : (J)V
    //   363: iload #6
    //   365: iconst_1
    //   366: iadd
    //   367: istore #6
    //   369: goto -> 22
    //   372: astore #9
    //   374: ldc 'ConnectionControler'
    //   376: ldc_w 'Erro Thread.sleep(5000).'
    //   379: aload #9
    //   381: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   384: pop
    //   385: goto -> 363
    //   388: aload_1
    //   389: ldc_w '</web:'
    //   392: invokevirtual indexOf : (Ljava/lang/String;)I
    //   395: istore #6
    //   397: iload #6
    //   399: iconst_m1
    //   400: if_icmple -> 101
    //   403: aload_1
    //   404: iconst_0
    //   405: iload #6
    //   407: invokevirtual substring : (II)Ljava/lang/String;
    //   410: astore #8
    //   412: aload #8
    //   414: aload #8
    //   416: ldc_w '<'
    //   419: invokevirtual lastIndexOf : (Ljava/lang/String;)I
    //   422: invokevirtual substring : (I)Ljava/lang/String;
    //   425: astore #8
    //   427: goto -> 101
    //   430: iconst_0
    //   431: istore #4
    //   433: goto -> 334
    //   436: aload_1
    //   437: invokevirtual getBytes : ()[B
    //   440: astore_1
    //   441: iload #4
    //   443: ifeq -> 477
    //   446: iload #6
    //   448: ifeq -> 477
    //   451: iconst_1
    //   452: istore #4
    //   454: aload_0
    //   455: aload_1
    //   456: aload_2
    //   457: iload_3
    //   458: iconst_0
    //   459: iconst_0
    //   460: iload #4
    //   462: aload #11
    //   464: ldc_w 'UTF-8'
    //   467: aload #10
    //   469: iload #5
    //   471: invokestatic a : (Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   474: astore_0
    //   475: aload_0
    //   476: areturn
    //   477: iconst_0
    //   478: istore #4
    //   480: goto -> 454
    //   483: astore_0
    //   484: ldc_w 'ConnectionController'
    //   487: ldc_w 'Erro na compressao'
    //   490: aload_0
    //   491: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   494: pop
    //   495: aconst_null
    //   496: areturn
    //   497: ldc 'Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.'
    //   499: iconst_0
    //   500: invokestatic a : (Ljava/lang/String;Z)V
    //   503: aconst_null
    //   504: areturn
    //   505: iconst_0
    //   506: istore #6
    //   508: goto -> 257
    // Exception table:
    //   from	to	target	type
    //   257	321	483	java/lang/Exception
    //   334	355	483	java/lang/Exception
    //   357	363	372	java/lang/Exception
    //   436	441	483	java/lang/Exception
    //   454	475	483	java/lang/Exception
  }
  
  private static String a(String paramString1, byte[] paramArrayOfbyte, String paramString2, boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2, String paramString3, String paramString4, String paramString5, boolean paramBoolean3) {
    // Byte code:
    //   0: getstatic jcd.x : Ljava/util/concurrent/atomic/AtomicBoolean;
    //   3: invokevirtual get : ()Z
    //   6: ifeq -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new java/net/URL
    //   14: dup
    //   15: aload_0
    //   16: invokespecial <init> : (Ljava/lang/String;)V
    //   19: invokestatic openConnection : (Ljava/net/URL;)Ljava/net/URLConnection;
    //   22: checkcast java/net/HttpURLConnection
    //   25: astore #13
    //   27: getstatic jcd.s : Ljavax/net/ssl/SSLContext;
    //   30: ifnull -> 47
    //   33: aload #13
    //   35: checkcast javax/net/ssl/HttpsURLConnection
    //   38: getstatic jcd.s : Ljavax/net/ssl/SSLContext;
    //   41: invokevirtual getSocketFactory : ()Ljavax/net/ssl/SSLSocketFactory;
    //   44: invokevirtual setSSLSocketFactory : (Ljavax/net/ssl/SSLSocketFactory;)V
    //   47: iload #10
    //   49: ifeq -> 60
    //   52: aload #13
    //   54: sipush #30000
    //   57: invokevirtual setConnectTimeout : (I)V
    //   60: aload #13
    //   62: sipush #30000
    //   65: invokevirtual setReadTimeout : (I)V
    //   68: aload #13
    //   70: iconst_1
    //   71: invokevirtual setDoInput : (Z)V
    //   74: aload #13
    //   76: iconst_1
    //   77: invokevirtual setDoOutput : (Z)V
    //   80: aload #13
    //   82: ldc_w 'POST'
    //   85: invokevirtual setRequestMethod : (Ljava/lang/String;)V
    //   88: aload #13
    //   90: ldc_w 'Content-Encoding'
    //   93: aload #8
    //   95: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   98: aload #13
    //   100: ldc_w 'Accept-Encoding'
    //   103: ldc_w 'gzip'
    //   106: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   109: aload #13
    //   111: aload_1
    //   112: arraylength
    //   113: invokevirtual setFixedLengthStreamingMode : (I)V
    //   116: iload #6
    //   118: ifeq -> 384
    //   121: aload #13
    //   123: ldc_w 'Content-Type'
    //   126: ldc_w 'application/json'
    //   129: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   132: aload #13
    //   134: ldc_w 'accept'
    //   137: ldc_w 'application/json'
    //   140: invokevirtual addRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   143: new java/util/Date
    //   146: dup
    //   147: invokespecial <init> : ()V
    //   150: pop
    //   151: invokestatic b : ()Landroid/content/Context;
    //   154: ldc_w 'connectivity'
    //   157: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   160: checkcast android/net/ConnectivityManager
    //   163: invokevirtual getActiveNetworkInfo : ()Landroid/net/NetworkInfo;
    //   166: pop
    //   167: new java/io/BufferedOutputStream
    //   170: dup
    //   171: aload #13
    //   173: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   176: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   179: astore #11
    //   181: aload #11
    //   183: aload_1
    //   184: invokevirtual write : ([B)V
    //   187: aload #11
    //   189: invokevirtual flush : ()V
    //   192: aload #11
    //   194: invokevirtual close : ()V
    //   197: aload #13
    //   199: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   202: invokevirtual close : ()V
    //   205: new java/util/Date
    //   208: dup
    //   209: invokespecial <init> : ()V
    //   212: pop
    //   213: aload #13
    //   215: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   218: sipush #200
    //   221: if_icmpne -> 601
    //   224: aload #13
    //   226: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   229: astore #11
    //   231: aload #13
    //   233: invokevirtual getContentEncoding : ()Ljava/lang/String;
    //   236: ifnull -> 611
    //   239: aload #13
    //   241: invokevirtual getContentEncoding : ()Ljava/lang/String;
    //   244: ldc_w 'gzip'
    //   247: invokevirtual equals : (Ljava/lang/Object;)Z
    //   250: ifeq -> 611
    //   253: new java/io/BufferedInputStream
    //   256: dup
    //   257: new java/util/zip/GZIPInputStream
    //   260: dup
    //   261: aload #11
    //   263: invokespecial <init> : (Ljava/io/InputStream;)V
    //   266: invokespecial <init> : (Ljava/io/InputStream;)V
    //   269: invokestatic a : (Ljava/io/InputStream;)[B
    //   272: astore #12
    //   274: aload #11
    //   276: invokevirtual close : ()V
    //   279: new java/lang/String
    //   282: dup
    //   283: aload #12
    //   285: ldc_w 'UTF-8'
    //   288: invokespecial <init> : ([BLjava/lang/String;)V
    //   291: astore #12
    //   293: aload #12
    //   295: astore #11
    //   297: iload #6
    //   299: ifeq -> 311
    //   302: aload #12
    //   304: aload #7
    //   306: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   309: astore #11
    //   311: aload #13
    //   313: invokevirtual disconnect : ()V
    //   316: invokestatic a : ()Lmyu;
    //   319: aload #11
    //   321: aload #7
    //   323: invokevirtual b : (Ljava/lang/String;Ljava/lang/String;)V
    //   326: aload #11
    //   328: ifnull -> 342
    //   331: aload #11
    //   333: invokevirtual trim : ()Ljava/lang/String;
    //   336: invokevirtual isEmpty : ()Z
    //   339: ifeq -> 692
    //   342: ldc_w 'Erro_Connection_Jab_Response_Html_Ou_Vazio'
    //   345: new java/lang/StringBuilder
    //   348: dup
    //   349: invokespecial <init> : ()V
    //   352: aload #7
    //   354: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   357: ldc_w ': '
    //   360: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: aload #11
    //   365: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: invokevirtual toString : ()Ljava/lang/String;
    //   371: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   374: ldc_w 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   377: iconst_1
    //   378: invokestatic a : (Ljava/lang/String;Z)V
    //   381: aload #11
    //   383: areturn
    //   384: aload_2
    //   385: ifnull -> 143
    //   388: aload #13
    //   390: ldc_w 'Content-type'
    //   393: ldc_w 'text/xml; charset=utf-8'
    //   396: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   399: aload #13
    //   401: ldc_w 'SOAPAction'
    //   404: aload #7
    //   406: ldc '/'
    //   408: ldc ''
    //   410: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   413: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   416: goto -> 143
    //   419: astore #11
    //   421: ldc 'ConnectionControler'
    //   423: ldc_w 'Erro ao tentar estabelecer conexão com o servidor - ConnectionTimeOut'
    //   426: aload #11
    //   428: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   431: pop
    //   432: iload #4
    //   434: iconst_1
    //   435: iadd
    //   436: istore #4
    //   438: iload #4
    //   440: iconst_3
    //   441: if_icmpge -> 1038
    //   444: ldc2_w 5000
    //   447: invokestatic sleep : (J)V
    //   450: aload_0
    //   451: aload_1
    //   452: aload_2
    //   453: iload_3
    //   454: iload #4
    //   456: iload #5
    //   458: iload #6
    //   460: aload #7
    //   462: aload #8
    //   464: aload #9
    //   466: iload #10
    //   468: invokestatic a : (Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   471: areturn
    //   472: astore #11
    //   474: ldc_w 'Error'
    //   477: aload #11
    //   479: invokevirtual getMessage : ()Ljava/lang/String;
    //   482: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   485: pop
    //   486: goto -> 167
    //   489: astore #11
    //   491: aload #11
    //   493: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   496: ifnull -> 1080
    //   499: aload #11
    //   501: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   504: ldc_w 'failed to connect to'
    //   507: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   510: ifeq -> 1080
    //   513: ldc 'ConnectionControler'
    //   515: ldc_w 'Erro ao tentar estabelecer conexão com o servidor - ConnectionTimeOut'
    //   518: aload #11
    //   520: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   523: pop
    //   524: iload #4
    //   526: iconst_1
    //   527: iadd
    //   528: istore #4
    //   530: iload #4
    //   532: iconst_3
    //   533: if_icmpge -> 1067
    //   536: ldc2_w 5000
    //   539: invokestatic sleep : (J)V
    //   542: aload_0
    //   543: aload_1
    //   544: aload_2
    //   545: iload_3
    //   546: iload #4
    //   548: iload #5
    //   550: iload #6
    //   552: aload #7
    //   554: aload #8
    //   556: aload #9
    //   558: iload #10
    //   560: invokestatic a : (Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   563: areturn
    //   564: astore #12
    //   566: aload #11
    //   568: invokevirtual close : ()V
    //   571: aload #13
    //   573: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   576: invokevirtual close : ()V
    //   579: aload #12
    //   581: athrow
    //   582: astore_0
    //   583: ldc 'ConnectionControler'
    //   585: ldc_w 'Erro de validacao.'
    //   588: aload_0
    //   589: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   592: pop
    //   593: ldc 'error sessao'
    //   595: iconst_1
    //   596: invokestatic a : (Ljava/lang/String;Z)V
    //   599: aconst_null
    //   600: areturn
    //   601: aload #13
    //   603: invokevirtual getErrorStream : ()Ljava/io/InputStream;
    //   606: astore #11
    //   608: goto -> 231
    //   611: new java/io/BufferedInputStream
    //   614: dup
    //   615: aload #11
    //   617: invokespecial <init> : (Ljava/io/InputStream;)V
    //   620: invokestatic a : (Ljava/io/InputStream;)[B
    //   623: astore #12
    //   625: goto -> 274
    //   628: astore #12
    //   630: aload #11
    //   632: invokevirtual close : ()V
    //   635: aload #12
    //   637: athrow
    //   638: astore #12
    //   640: ldc 'ConnectionControler'
    //   642: ldc_w 'Erro ao encerrar conexao.'
    //   645: aload #12
    //   647: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   650: pop
    //   651: goto -> 316
    //   654: astore_0
    //   655: ldc 'ConnectionControler'
    //   657: ldc_w 'Erro inesperado ao tentar se comunicar com o servidor.'
    //   660: aload_0
    //   661: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   664: pop
    //   665: ldc_w 'Error'
    //   668: aload_0
    //   669: invokevirtual getMessage : ()Ljava/lang/String;
    //   672: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   675: pop
    //   676: ldc_w 'Request Action'
    //   679: aload #7
    //   681: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   684: ldc 'Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.'
    //   686: iconst_0
    //   687: invokestatic a : (Ljava/lang/String;Z)V
    //   690: aconst_null
    //   691: areturn
    //   692: aload #11
    //   694: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   697: ldc 'error sessao'
    //   699: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   702: ifeq -> 713
    //   705: new hbo
    //   708: dup
    //   709: invokespecial <init> : ()V
    //   712: athrow
    //   713: aload #11
    //   715: ldc_w 'Hash validation error'
    //   718: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   721: ifne -> 734
    //   724: aload #11
    //   726: ldc 'Ocorreu um erro de validação. Por favor, entre em contato com a Central de Atendimento.'
    //   728: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   731: ifeq -> 742
    //   734: new hbo
    //   737: dup
    //   738: invokespecial <init> : ()V
    //   741: athrow
    //   742: aload #11
    //   744: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   747: ldc 'incorrect authentication'
    //   749: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   752: ifeq -> 797
    //   755: ldc_w 'Erro_Token_BKS'
    //   758: new java/lang/StringBuilder
    //   761: dup
    //   762: invokespecial <init> : ()V
    //   765: aload #7
    //   767: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   770: ldc_w ': '
    //   773: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   776: aload #11
    //   778: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   781: invokevirtual toString : ()Ljava/lang/String;
    //   784: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   787: ldc_w 'Conexão perdida. Por favor, aguarde uns minutos e acesse novamente.'
    //   790: iconst_1
    //   791: invokestatic a : (Ljava/lang/String;Z)V
    //   794: aload #11
    //   796: areturn
    //   797: aload #11
    //   799: ldc_w 'faultstring'
    //   802: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   805: ifne -> 819
    //   808: aload #11
    //   810: ldc_w 'faultcode'
    //   813: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   816: ifeq -> 859
    //   819: ldc_w '<?xml version="1.0" encoding="utf-8"?><soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"><soapenv:Body><return>'
    //   822: aload #11
    //   824: aload #11
    //   826: ldc_w '<faultstring>'
    //   829: invokevirtual indexOf : (Ljava/lang/String;)I
    //   832: aload #11
    //   834: ldc_w '</faultstring>'
    //   837: invokevirtual indexOf : (Ljava/lang/String;)I
    //   840: invokevirtual substring : (II)Ljava/lang/String;
    //   843: ldc_w '</faultstring>'
    //   846: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   849: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   852: ldc_w '</return></soapenv:Body></soapenv:Envelope>'
    //   855: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   858: areturn
    //   859: aload #13
    //   861: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   864: sipush #500
    //   867: if_icmpne -> 971
    //   870: aload #11
    //   872: ldc_w '<html>'
    //   875: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   878: ifne -> 914
    //   881: aload #11
    //   883: ldc_w '<HTML>'
    //   886: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   889: ifne -> 914
    //   892: aload #11
    //   894: ldc_w '<H1>'
    //   897: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   900: ifne -> 914
    //   903: aload #11
    //   905: ldc_w '<h1>'
    //   908: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   911: ifeq -> 971
    //   914: ldc_w 'Erro_Connection_Jab_Response_Html_Ou_Vazio'
    //   917: new java/lang/StringBuilder
    //   920: dup
    //   921: invokespecial <init> : ()V
    //   924: aload #7
    //   926: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   929: ldc_w ': '
    //   932: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   935: aload #11
    //   937: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   940: invokevirtual toString : ()Ljava/lang/String;
    //   943: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   946: invokestatic b : ()Landroid/content/Context;
    //   949: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   952: ldc_w 2131298210
    //   955: invokevirtual getString : (I)Ljava/lang/String;
    //   958: invokestatic fromHtml : (Ljava/lang/String;)Landroid/text/Spanned;
    //   961: invokevirtual toString : ()Ljava/lang/String;
    //   964: iconst_1
    //   965: invokestatic a : (Ljava/lang/String;Z)V
    //   968: aload #11
    //   970: areturn
    //   971: getstatic jcd.b : Ljava/util/Set;
    //   974: aload #7
    //   976: invokeinterface contains : (Ljava/lang/Object;)Z
    //   981: ifne -> 993
    //   984: aload #11
    //   986: ldc_w '//dataHash'
    //   989: aconst_null
    //   990: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    //   993: aload #9
    //   995: ifnull -> 1177
    //   998: aload #11
    //   1000: ldc_w '//requestId'
    //   1003: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1006: aload #9
    //   1008: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1011: ifne -> 1177
    //   1014: new hbo
    //   1017: dup
    //   1018: invokespecial <init> : ()V
    //   1021: athrow
    //   1022: astore #11
    //   1024: ldc 'ConnectionControler'
    //   1026: ldc_w 'Erro Thread.sleep(5000).'
    //   1029: aload #11
    //   1031: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1034: pop
    //   1035: goto -> 450
    //   1038: iload #10
    //   1040: ifeq -> 9
    //   1043: ldc 'Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.'
    //   1045: iconst_0
    //   1046: invokestatic a : (Ljava/lang/String;Z)V
    //   1049: aconst_null
    //   1050: areturn
    //   1051: astore #11
    //   1053: ldc 'ConnectionControler'
    //   1055: ldc_w 'Erro Thread.sleep(5000).'
    //   1058: aload #11
    //   1060: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1063: pop
    //   1064: goto -> 542
    //   1067: iload #10
    //   1069: ifeq -> 9
    //   1072: ldc 'Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.'
    //   1074: iconst_0
    //   1075: invokestatic a : (Ljava/lang/String;Z)V
    //   1078: aconst_null
    //   1079: areturn
    //   1080: ldc 'ConnectionControler'
    //   1082: ldc_w 'Erro ao tentar receber informações do servidor - ReadTimeOut'
    //   1085: aload #11
    //   1087: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1090: pop
    //   1091: iload_3
    //   1092: ifeq -> 1164
    //   1095: iload #5
    //   1097: iconst_1
    //   1098: iadd
    //   1099: istore #5
    //   1101: iload #5
    //   1103: iconst_3
    //   1104: if_icmpge -> 1151
    //   1107: ldc2_w 5000
    //   1110: invokestatic sleep : (J)V
    //   1113: aload_0
    //   1114: aload_1
    //   1115: aload_2
    //   1116: iload_3
    //   1117: iload #4
    //   1119: iload #5
    //   1121: iload #6
    //   1123: aload #7
    //   1125: aload #8
    //   1127: aload #9
    //   1129: iload #10
    //   1131: invokestatic a : (Ljava/lang/String;[BLjava/lang/String;ZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   1134: areturn
    //   1135: astore #11
    //   1137: ldc 'ConnectionControler'
    //   1139: ldc_w 'Erro Thread.sleep(5000).'
    //   1142: aload #11
    //   1144: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1147: pop
    //   1148: goto -> 1113
    //   1151: iload #10
    //   1153: ifeq -> 9
    //   1156: ldc 'Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.'
    //   1158: iconst_0
    //   1159: invokestatic a : (Ljava/lang/String;Z)V
    //   1162: aconst_null
    //   1163: areturn
    //   1164: iload #10
    //   1166: ifeq -> 9
    //   1169: ldc 'Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.'
    //   1171: iconst_0
    //   1172: invokestatic a : (Ljava/lang/String;Z)V
    //   1175: aconst_null
    //   1176: areturn
    //   1177: aload #11
    //   1179: areturn
    //   1180: astore_0
    //   1181: goto -> 583
    // Exception table:
    //   from	to	target	type
    //   11	47	419	org/apache/http/conn/ConnectTimeoutException
    //   11	47	489	java/net/SocketTimeoutException
    //   11	47	582	hbo
    //   11	47	1180	org/dom4j/DocumentException
    //   11	47	654	java/lang/Exception
    //   52	60	419	org/apache/http/conn/ConnectTimeoutException
    //   52	60	489	java/net/SocketTimeoutException
    //   52	60	582	hbo
    //   52	60	1180	org/dom4j/DocumentException
    //   52	60	654	java/lang/Exception
    //   60	116	419	org/apache/http/conn/ConnectTimeoutException
    //   60	116	489	java/net/SocketTimeoutException
    //   60	116	582	hbo
    //   60	116	1180	org/dom4j/DocumentException
    //   60	116	654	java/lang/Exception
    //   121	143	419	org/apache/http/conn/ConnectTimeoutException
    //   121	143	489	java/net/SocketTimeoutException
    //   121	143	582	hbo
    //   121	143	1180	org/dom4j/DocumentException
    //   121	143	654	java/lang/Exception
    //   143	167	472	java/lang/Exception
    //   143	167	419	org/apache/http/conn/ConnectTimeoutException
    //   143	167	489	java/net/SocketTimeoutException
    //   143	167	582	hbo
    //   143	167	1180	org/dom4j/DocumentException
    //   167	181	419	org/apache/http/conn/ConnectTimeoutException
    //   167	181	489	java/net/SocketTimeoutException
    //   167	181	582	hbo
    //   167	181	1180	org/dom4j/DocumentException
    //   167	181	654	java/lang/Exception
    //   181	192	564	finally
    //   192	231	419	org/apache/http/conn/ConnectTimeoutException
    //   192	231	489	java/net/SocketTimeoutException
    //   192	231	582	hbo
    //   192	231	1180	org/dom4j/DocumentException
    //   192	231	654	java/lang/Exception
    //   231	274	628	finally
    //   274	293	419	org/apache/http/conn/ConnectTimeoutException
    //   274	293	489	java/net/SocketTimeoutException
    //   274	293	582	hbo
    //   274	293	1180	org/dom4j/DocumentException
    //   274	293	654	java/lang/Exception
    //   302	311	419	org/apache/http/conn/ConnectTimeoutException
    //   302	311	489	java/net/SocketTimeoutException
    //   302	311	582	hbo
    //   302	311	1180	org/dom4j/DocumentException
    //   302	311	654	java/lang/Exception
    //   311	316	638	java/lang/Exception
    //   311	316	419	org/apache/http/conn/ConnectTimeoutException
    //   311	316	489	java/net/SocketTimeoutException
    //   311	316	582	hbo
    //   311	316	1180	org/dom4j/DocumentException
    //   316	326	419	org/apache/http/conn/ConnectTimeoutException
    //   316	326	489	java/net/SocketTimeoutException
    //   316	326	582	hbo
    //   316	326	1180	org/dom4j/DocumentException
    //   316	326	654	java/lang/Exception
    //   331	342	419	org/apache/http/conn/ConnectTimeoutException
    //   331	342	489	java/net/SocketTimeoutException
    //   331	342	582	hbo
    //   331	342	1180	org/dom4j/DocumentException
    //   331	342	654	java/lang/Exception
    //   342	381	419	org/apache/http/conn/ConnectTimeoutException
    //   342	381	489	java/net/SocketTimeoutException
    //   342	381	582	hbo
    //   342	381	1180	org/dom4j/DocumentException
    //   342	381	654	java/lang/Exception
    //   388	416	419	org/apache/http/conn/ConnectTimeoutException
    //   388	416	489	java/net/SocketTimeoutException
    //   388	416	582	hbo
    //   388	416	1180	org/dom4j/DocumentException
    //   388	416	654	java/lang/Exception
    //   444	450	1022	java/lang/Exception
    //   474	486	419	org/apache/http/conn/ConnectTimeoutException
    //   474	486	489	java/net/SocketTimeoutException
    //   474	486	582	hbo
    //   474	486	1180	org/dom4j/DocumentException
    //   474	486	654	java/lang/Exception
    //   536	542	1051	java/lang/Exception
    //   566	582	419	org/apache/http/conn/ConnectTimeoutException
    //   566	582	489	java/net/SocketTimeoutException
    //   566	582	582	hbo
    //   566	582	1180	org/dom4j/DocumentException
    //   566	582	654	java/lang/Exception
    //   601	608	419	org/apache/http/conn/ConnectTimeoutException
    //   601	608	489	java/net/SocketTimeoutException
    //   601	608	582	hbo
    //   601	608	1180	org/dom4j/DocumentException
    //   601	608	654	java/lang/Exception
    //   611	625	628	finally
    //   630	638	419	org/apache/http/conn/ConnectTimeoutException
    //   630	638	489	java/net/SocketTimeoutException
    //   630	638	582	hbo
    //   630	638	1180	org/dom4j/DocumentException
    //   630	638	654	java/lang/Exception
    //   640	651	419	org/apache/http/conn/ConnectTimeoutException
    //   640	651	489	java/net/SocketTimeoutException
    //   640	651	582	hbo
    //   640	651	1180	org/dom4j/DocumentException
    //   640	651	654	java/lang/Exception
    //   692	713	419	org/apache/http/conn/ConnectTimeoutException
    //   692	713	489	java/net/SocketTimeoutException
    //   692	713	582	hbo
    //   692	713	1180	org/dom4j/DocumentException
    //   692	713	654	java/lang/Exception
    //   713	734	419	org/apache/http/conn/ConnectTimeoutException
    //   713	734	489	java/net/SocketTimeoutException
    //   713	734	582	hbo
    //   713	734	1180	org/dom4j/DocumentException
    //   713	734	654	java/lang/Exception
    //   734	742	419	org/apache/http/conn/ConnectTimeoutException
    //   734	742	489	java/net/SocketTimeoutException
    //   734	742	582	hbo
    //   734	742	1180	org/dom4j/DocumentException
    //   734	742	654	java/lang/Exception
    //   742	794	419	org/apache/http/conn/ConnectTimeoutException
    //   742	794	489	java/net/SocketTimeoutException
    //   742	794	582	hbo
    //   742	794	1180	org/dom4j/DocumentException
    //   742	794	654	java/lang/Exception
    //   797	819	419	org/apache/http/conn/ConnectTimeoutException
    //   797	819	489	java/net/SocketTimeoutException
    //   797	819	582	hbo
    //   797	819	1180	org/dom4j/DocumentException
    //   797	819	654	java/lang/Exception
    //   819	859	419	org/apache/http/conn/ConnectTimeoutException
    //   819	859	489	java/net/SocketTimeoutException
    //   819	859	582	hbo
    //   819	859	1180	org/dom4j/DocumentException
    //   819	859	654	java/lang/Exception
    //   859	914	419	org/apache/http/conn/ConnectTimeoutException
    //   859	914	489	java/net/SocketTimeoutException
    //   859	914	582	hbo
    //   859	914	1180	org/dom4j/DocumentException
    //   859	914	654	java/lang/Exception
    //   914	968	419	org/apache/http/conn/ConnectTimeoutException
    //   914	968	489	java/net/SocketTimeoutException
    //   914	968	582	hbo
    //   914	968	1180	org/dom4j/DocumentException
    //   914	968	654	java/lang/Exception
    //   971	993	419	org/apache/http/conn/ConnectTimeoutException
    //   971	993	489	java/net/SocketTimeoutException
    //   971	993	582	hbo
    //   971	993	1180	org/dom4j/DocumentException
    //   971	993	654	java/lang/Exception
    //   998	1022	419	org/apache/http/conn/ConnectTimeoutException
    //   998	1022	489	java/net/SocketTimeoutException
    //   998	1022	582	hbo
    //   998	1022	1180	org/dom4j/DocumentException
    //   998	1022	654	java/lang/Exception
    //   1107	1113	1135	java/lang/Exception
  }
  
  public static void a() {
    x.set(false);
  }
  
  private static void a(String paramString1, String paramString2, Set<String> paramSet) {
    Set<String> set = paramSet;
    if (paramSet == null)
      set = new HashSet<String>(); 
    set.addAll(a);
    StringBuilder stringBuilder = mxj.a(paramString1, "//soapenv:Body", set);
    paramString1 = a(paramString1, paramString2);
    if (!b(stringBuilder.toString(), paramString1))
      throw new hbo(); 
  }
  
  private static void a(String paramString, boolean paramBoolean) {
    aqt.a();
    if (!MinhaConta.h() && !x.get()) {
      x.set(true);
      String str = paramString;
      if (paramString.equals("error sessao"))
        str = MinhaConta.b().getResources().getString(2131297202); 
      if (MinhaConta.c()) {
        MinhaConta.a(str, paramBoolean);
        return;
      } 
      Intent intent = new Intent(MinhaConta.b(), ExitActivity.class);
      intent.addFlags(268435456);
      intent.addFlags(67108864);
      intent.putExtra("errorMessage", str);
      intent.putExtra("showHome", paramBoolean);
      MinhaConta.b().startActivity(intent);
      return;
    } 
  }
  
  private static void a(Element paramElement, StringBuilder paramStringBuilder) {
    for (Element element : paramElement.elements()) {
      if (!element.elements().isEmpty()) {
        paramStringBuilder.append("{");
        a(element, paramStringBuilder);
        paramStringBuilder.append("}");
        continue;
      } 
      String str1 = element.getText();
      StringBuilder stringBuilder = new StringBuilder();
      String str2 = element.getName();
      for (int i = 0;; i++) {
        if (i < str1.length()) {
          char c = str1.charAt(i);
          switch (c) {
            default:
              if (c < ' ') {
                String str = "000" + Integer.toHexString(c);
                stringBuilder.append("\\u" + str.substring(str.length() - 4));
              } else {
                break;
              } 
              i++;
              continue;
            case '"':
            case '/':
            case '\\':
              stringBuilder.append("\\" + c);
              i++;
              continue;
            case '\b':
              stringBuilder.append("\\b");
              i++;
              continue;
            case '\f':
              stringBuilder.append("\\f");
              i++;
              continue;
            case '\n':
              stringBuilder.append("\\n");
              i++;
              continue;
            case '\r':
              stringBuilder.append("\\r");
              i++;
              continue;
            case '\t':
              stringBuilder.append("\\t");
              i++;
              continue;
          } 
          stringBuilder.append(c);
        } else {
          break;
        } 
      } 
      paramStringBuilder.append("\"" + str2 + "\":\"" + stringBuilder + "\",");
    } 
    paramStringBuilder.deleteCharAt(paramStringBuilder.length() - 1);
  }
  
  private static boolean a(Context paramContext) {
    NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected());
  }
  
  private static byte[] a(InputStream paramInputStream) {
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
  
  private static String b(String paramString) {
    if (miq.C().h() == null)
      return ""; 
    try {
      paramString = u.a(paramString);
      return u.b(paramString.getBytes("UTF-8"));
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static boolean b() {
    return x.get();
  }
  
  private static boolean b(String paramString1, String paramString2) {
    if (miq.C().h() != null)
      try {
        boolean bool = u.c(Base64.decode(paramString2, 0)).equals(u.a(paramString1));
        return bool;
      } catch (Exception exception) {
        return false;
      }  
    return false;
  }
  
  private static String c(String paramString1, String paramString2) {
    try {
      List<Node> list = (new SAXReader()).read(new StringReader(paramString1)).selectNodes(paramString2);
      if (list != null && !list.isEmpty()) {
        Node node = list.get(0);
        if (node instanceof Element) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("{");
          a((Element)node, stringBuilder);
          stringBuilder.append("}");
          return stringBuilder.toString();
        } 
      } 
    } catch (DocumentException documentException) {
      Log.e("Error", documentException.getMessage());
    } 
    return "";
  }
  
  private static void c() {
    String str = miq.C().m();
    if (str != null)
      try {
        if (CaMDOHTTPClient.openConnection(new URL(str)) instanceof javax.net.ssl.HttpsURLConnection) {
          InputStream inputStream = null;
          Context context = MinhaConta.b();
          if (str.equals("https://m.santander.com.br/") || str.equals("https://mbbocu.santander.com.br/")) {
            inputStream = context.getResources().openRawResource(2131230723);
          } else if (str.equals("https://mbbhk.santanderbr.pre.corp/")) {
            inputStream = context.getResources().openRawResource(2131230720);
          } else if (str.equals("https://mbbpi.santanderbr.pre.corp/")) {
            inputStream = context.getResources().openRawResource(2131230721);
          } else if (str.equals("https://mbbdes.santanderbr.pre.corp/")) {
            inputStream = context.getResources().openRawResource(2131230721);
          } else if (str.equals("https://mbbhk.santander.com.br/")) {
            inputStream = context.getResources().openRawResource(2131230732);
          } else if (str.equals("https://mbbdeploy.santander.com.br/")) {
            inputStream = context.getResources().openRawResource(2131230735);
          } 
          s = nah.a(inputStream);
          return;
        } 
        return;
      } catch (Exception exception) {
        Log.e("ConnectionControler", "Falha na inicialização do contexto SSL", exception);
        return;
      }  
  }
  
  private static String d(String paramString1, String paramString2) {
    String str;
    while (true) {
      str = paramString1;
      if (paramString1.contains("{")) {
        str = paramString1;
        if (paramString1.contains("}")) {
          StringBuilder stringBuilder = new StringBuilder(paramString1);
          int j = stringBuilder.lastIndexOf("{");
          int k = stringBuilder.indexOf("}", j) + 1;
          str = stringBuilder.substring(j, k);
          str = stringBuilder.replace(j, k, d(str.substring(1, str.length() - 1), paramString2)).toString();
        } 
      } 
      if (str.contains("{")) {
        paramString1 = str;
        if (!str.contains("}"))
          break; 
        continue;
      } 
      break;
    } 
    if (!str.contains("\":"))
      return "<?xml version=\"1.0\" encoding=\"UTF-8\"?><soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><soapenv:Body><dlwmin:" + paramString2 + "Response xmlns:dlwmin=\"http://webservice.mbb.app.bsbr.altec.com/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"><return>" + str + "</return></dlwmin:" + paramString2 + "Response></soapenv:Body></soapenv:Envelope>"; 
    String[] arrayOfString = str.split("\":");
    paramString1 = "";
    for (int i = 0; i < arrayOfString.length - 1; i++) {
      int j = arrayOfString[i].lastIndexOf("\"");
      String str1 = arrayOfString[i].substring(j + 1);
      paramString2 = paramString1;
      if (i > 0) {
        paramString2 = arrayOfString[i].substring(0, j - 1);
        if (paramString2.charAt(0) == '"' && paramString2.charAt(paramString2.length() - 1) == '"') {
          paramString2 = paramString1.replace("PLACE_HOLDER", paramString2.substring(1, paramString2.length() - 1));
        } else {
          paramString2 = paramString1.replace("PLACE_HOLDER", paramString2);
        } 
      } 
      paramString1 = paramString2 + "<" + str1 + ">PLACE_HOLDER</" + str1 + ">";
    } 
    paramString2 = arrayOfString[arrayOfString.length - 1];
    return (paramString2.charAt(0) == '"' && paramString2.charAt(paramString2.length() - 1) == '"') ? paramString1.replace("PLACE_HOLDER", paramString2.substring(1, paramString2.length() - 1)) : paramString1.replace("PLACE_HOLDER", paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */