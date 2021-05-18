import android.util.Log;
import com.ca.android.app.CaMDOHTTPClient;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class ary implements arx {
  private static String a;
  
  private static InputStream b;
  
  private static final String c = "[ChatServiceImpl]";
  
  private static apw f;
  
  private static ary i;
  
  private final Object d = new Object();
  
  private int e;
  
  private int g = 30000;
  
  private int h = 0;
  
  private aru j;
  
  private ary() {}
  
  public ary(int paramInt) {
    if (paramInt > 0)
      this.g = paramInt; 
  }
  
  private static String a(String paramString) {
    return c().concat(paramString);
  }
  
  private String a(HttpURLConnection paramHttpURLConnection) {
    return a(paramHttpURLConnection, (String)null);
  }
  
  private String a(HttpURLConnection paramHttpURLConnection, String paramString) {
    String str1 = "";
    String str2 = str1;
    try {
      if (CaMDOHTTPClient.getResponseCode(paramHttpURLConnection) != 404)
        str2 = ase.a(paramHttpURLConnection.getInputStream(), paramString); 
      return str2;
    } catch (IOException iOException) {
      Log.e("[ChatServiceImpl]", "getHttpData error httpURLConnection.getInputStream() : " + ase.d(iOException.getMessage()));
      try {
        String str = ase.a(paramHttpURLConnection.getErrorStream(), paramString);
        str1 = str;
        Log.e("[ChatServiceImpl]", "getHttpData error httpURLConnection.getErrorStream() : " + ase.d(str));
        return str;
      } catch (IOException iOException1) {
        Log.e("[ChatServiceImpl]", "getHttpData error httpURLConnection.getErrorStream() : " + ase.d(iOException1.getMessage()));
        return str1;
      } 
    } 
  }
  
  private ark b(String paramString) {
    if (!ase.b(paramString))
      for (ark ark : ard.a().r()) {
        if (ark.l() != null && ark.l().p() != null && paramString.equals(ark.l().p().c()))
          return ark; 
      }  
    return null;
  }
  
  public static ary b() {
    if (i == null)
      i = new ary(); 
    return i;
  }
  
  private void b(ark paramark) {
    arj arj = paramark.l();
    if (arj.k() && !arj.n()) {
      arj.d(false);
      arj.f(true);
      (new Thread(new arz(this, arj))).start();
    } 
  }
  
  private static String c() {
    if (ase.b(a))
      throw new ExceptionInInitializerError("Erro nao foi inicializado uma url de servico de chat valida."); 
    return a;
  }
  
  private void c(arj paramarj) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #8
    //   3: aconst_null
    //   4: astore #5
    //   6: aconst_null
    //   7: astore #7
    //   9: aload_1
    //   10: iconst_0
    //   11: invokevirtual e : (Z)V
    //   14: aload_1
    //   15: iconst_0
    //   16: invokevirtual b : (Z)V
    //   19: aload_1
    //   20: iconst_1
    //   21: invokevirtual g : (Z)V
    //   24: aload_1
    //   25: iconst_1
    //   26: invokevirtual h : (Z)V
    //   29: aload_1
    //   30: iconst_0
    //   31: invokevirtual i : (Z)V
    //   34: aload_0
    //   35: new arw
    //   38: dup
    //   39: invokespecial <init> : ()V
    //   42: putfield j : Laru;
    //   45: aload_1
    //   46: ifnull -> 3697
    //   49: ldc '[ChatServiceImpl]'
    //   51: ldc 'Log 3 - inicio da solicitacao token de arquivo'
    //   53: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   56: pop
    //   57: aload_0
    //   58: aload_1
    //   59: invokevirtual a : (Larj;)Lari;
    //   62: astore #9
    //   64: ldc '[ChatServiceImpl]'
    //   66: ldc 'Log 3 - fim da solicitacao token de arquivo'
    //   68: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   71: pop
    //   72: aload #9
    //   74: ifnull -> 3648
    //   77: ldc '[ChatServiceImpl]'
    //   79: ldc 'Log 4 - inicio de envio de arquivo'
    //   81: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   84: pop
    //   85: new java/io/FileInputStream
    //   88: dup
    //   89: aload_1
    //   90: invokevirtual c : ()Ljava/io/File;
    //   93: invokespecial <init> : (Ljava/io/File;)V
    //   96: astore #6
    //   98: ldc '[ChatServiceImpl]'
    //   100: ldc 'Log 5 - conexao'
    //   102: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   105: pop
    //   106: ldc '/chatfile/sessions/file/{fileToken}'
    //   108: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   111: invokestatic a : ()Lard;
    //   114: invokestatic a : (Ljava/lang/String;Lard;)Ljava/lang/String;
    //   117: ldc '{fileToken}'
    //   119: aload #9
    //   121: invokevirtual c : ()Ljava/lang/String;
    //   124: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   127: astore #5
    //   129: ldc '[ChatServiceImpl]'
    //   131: ldc_w 'Log 5 - boundary'
    //   134: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   137: pop
    //   138: aload_1
    //   139: invokevirtual c : ()Ljava/io/File;
    //   142: invokevirtual getName : ()Ljava/lang/String;
    //   145: astore #19
    //   147: ldc '[ChatServiceImpl]'
    //   149: new java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial <init> : ()V
    //   156: ldc_w 'Log 5 - fileName: '
    //   159: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: aload #19
    //   164: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual toString : ()Ljava/lang/String;
    //   170: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   173: pop
    //   174: ldc '[ChatServiceImpl]'
    //   176: ldc_w 'Log 6'
    //   179: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   182: pop
    //   183: aload #5
    //   185: getstatic ary.b : Ljava/io/InputStream;
    //   188: invokestatic a : (Ljava/lang/String;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;
    //   191: astore #20
    //   193: aload #20
    //   195: sipush #30000
    //   198: invokevirtual setConnectTimeout : (I)V
    //   201: aload_0
    //   202: getfield g : I
    //   205: ifle -> 1335
    //   208: aload #20
    //   210: aload_0
    //   211: getfield g : I
    //   214: invokevirtual setReadTimeout : (I)V
    //   217: ldc '[ChatServiceImpl]'
    //   219: ldc_w 'Log 7 - set dos parametros de envio multipart da conexao'
    //   222: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   225: pop
    //   226: aload #20
    //   228: iconst_1
    //   229: invokevirtual setDoInput : (Z)V
    //   232: aload #20
    //   234: iconst_1
    //   235: invokevirtual setDoOutput : (Z)V
    //   238: aload #20
    //   240: iconst_0
    //   241: invokevirtual setUseCaches : (Z)V
    //   244: aload #20
    //   246: getstatic apz.POST : Lapz;
    //   249: invokevirtual toString : ()Ljava/lang/String;
    //   252: invokevirtual setRequestMethod : (Ljava/lang/String;)V
    //   255: aload #20
    //   257: ldc_w 'Connection'
    //   260: ldc_w 'Keep-Alive'
    //   263: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   266: aload #20
    //   268: ldc_w 'Accept'
    //   271: ldc_w 'application/json'
    //   274: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   277: aload #20
    //   279: ldc_w 'ChatSessionId'
    //   282: invokestatic a : ()Lard;
    //   285: invokevirtual j : ()Ljava/lang/String;
    //   288: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   291: aload #20
    //   293: ldc_w 'RequestSignature'
    //   296: ldc ''
    //   298: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   301: aload #20
    //   303: ldc_w 'HTTP_ENCTYPE'
    //   306: ldc_w 'multipart/form-data'
    //   309: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   312: aload #20
    //   314: ldc_w 'Content-Type'
    //   317: ldc_w 'multipart/form-data;boundary=*****'
    //   320: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   323: aload #20
    //   325: ldc_w 'filename'
    //   328: aload #19
    //   330: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   333: ldc '[ChatServiceImpl]'
    //   335: new java/lang/StringBuilder
    //   338: dup
    //   339: invokespecial <init> : ()V
    //   342: ldc_w 'Log 8 - '
    //   345: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: aload #20
    //   350: invokevirtual toString : ()Ljava/lang/String;
    //   353: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: invokevirtual toString : ()Ljava/lang/String;
    //   359: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   362: pop
    //   363: new java/io/DataOutputStream
    //   366: dup
    //   367: aload #20
    //   369: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   372: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   375: astore #18
    //   377: ldc '[ChatServiceImpl]'
    //   379: ldc_w 'Log 9 -  header para o multipart body --boundary values'
    //   382: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   385: pop
    //   386: aload #18
    //   388: ldc_w '--*****\\r\\n'
    //   391: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   394: aload #18
    //   396: new java/lang/StringBuilder
    //   399: dup
    //   400: invokespecial <init> : ()V
    //   403: ldc_w 'Content-Disposition: form-data; name="file"; filename="'
    //   406: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: aload #19
    //   411: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: ldc_w '"'
    //   417: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: ldc_w '\\r\\n'
    //   423: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: invokevirtual toString : ()Ljava/lang/String;
    //   429: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   432: aload #18
    //   434: ldc_w '\\r\\n'
    //   437: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   440: aload_1
    //   441: invokevirtual c : ()Ljava/io/File;
    //   444: invokevirtual length : ()J
    //   447: l2i
    //   448: newarray byte
    //   450: astore #5
    //   452: aload #6
    //   454: aload #5
    //   456: invokevirtual read : ([B)I
    //   459: istore_2
    //   460: ldc '[ChatServiceImpl]'
    //   462: new java/lang/StringBuilder
    //   465: dup
    //   466: invokespecial <init> : ()V
    //   469: ldc_w 'Log 10 - total de bytes lido: '
    //   472: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: iload_2
    //   476: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   479: invokevirtual toString : ()Ljava/lang/String;
    //   482: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   485: pop
    //   486: aload_1
    //   487: invokevirtual r : ()Ljava/lang/String;
    //   490: astore #7
    //   492: ldc '[ChatServiceImpl]'
    //   494: new java/lang/StringBuilder
    //   497: dup
    //   498: invokespecial <init> : ()V
    //   501: ldc_w 'Log 10 - sendFile - cryptoKey: '
    //   504: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   507: aload #7
    //   509: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: invokevirtual toString : ()Ljava/lang/String;
    //   515: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   518: pop
    //   519: aload #7
    //   521: invokestatic b : (Ljava/lang/String;)Z
    //   524: ifne -> 3274
    //   527: aload_0
    //   528: getfield j : Laru;
    //   531: aload #7
    //   533: aload #5
    //   535: invokevirtual b : (Ljava/lang/String;[B)[B
    //   538: astore #21
    //   540: new java/io/ByteArrayInputStream
    //   543: dup
    //   544: aload #21
    //   546: invokespecial <init> : ([B)V
    //   549: astore #8
    //   551: aload #8
    //   553: astore #15
    //   555: aload #8
    //   557: astore #16
    //   559: aload #8
    //   561: astore #7
    //   563: aload #8
    //   565: astore #17
    //   567: aload #8
    //   569: astore #5
    //   571: aload #8
    //   573: astore #9
    //   575: aload #8
    //   577: astore #10
    //   579: aload #8
    //   581: astore #11
    //   583: aload #8
    //   585: astore #12
    //   587: aload #8
    //   589: astore #13
    //   591: aload #8
    //   593: astore #14
    //   595: aload #8
    //   597: invokevirtual available : ()I
    //   600: sipush #4096
    //   603: invokestatic min : (II)I
    //   606: istore_3
    //   607: aload #8
    //   609: astore #15
    //   611: aload #8
    //   613: astore #16
    //   615: aload #8
    //   617: astore #7
    //   619: aload #8
    //   621: astore #17
    //   623: aload #8
    //   625: astore #5
    //   627: aload #8
    //   629: astore #9
    //   631: aload #8
    //   633: astore #10
    //   635: aload #8
    //   637: astore #11
    //   639: aload #8
    //   641: astore #12
    //   643: aload #8
    //   645: astore #13
    //   647: aload #8
    //   649: astore #14
    //   651: iload_3
    //   652: newarray byte
    //   654: astore #6
    //   656: aload #8
    //   658: astore #15
    //   660: aload #8
    //   662: astore #16
    //   664: aload #8
    //   666: astore #7
    //   668: aload #8
    //   670: astore #17
    //   672: aload #8
    //   674: astore #5
    //   676: aload #8
    //   678: astore #9
    //   680: aload #8
    //   682: astore #10
    //   684: aload #8
    //   686: astore #11
    //   688: aload #8
    //   690: astore #12
    //   692: aload #8
    //   694: astore #13
    //   696: aload #8
    //   698: astore #14
    //   700: ldc '[ChatServiceImpl]'
    //   702: ldc_w 'Log 10 - read file and write it into form'
    //   705: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   708: pop
    //   709: aload #8
    //   711: astore #15
    //   713: aload #8
    //   715: astore #16
    //   717: aload #8
    //   719: astore #7
    //   721: aload #8
    //   723: astore #17
    //   725: aload #8
    //   727: astore #5
    //   729: aload #8
    //   731: astore #9
    //   733: aload #8
    //   735: astore #10
    //   737: aload #8
    //   739: astore #11
    //   741: aload #8
    //   743: astore #12
    //   745: aload #8
    //   747: astore #13
    //   749: aload #8
    //   751: astore #14
    //   753: aload #8
    //   755: aload #6
    //   757: iconst_0
    //   758: iload_3
    //   759: invokevirtual read : ([BII)I
    //   762: istore #4
    //   764: iconst_0
    //   765: istore_2
    //   766: iload #4
    //   768: ifle -> 1445
    //   771: aload #8
    //   773: astore #15
    //   775: aload #8
    //   777: astore #16
    //   779: aload #8
    //   781: astore #7
    //   783: aload #8
    //   785: astore #17
    //   787: aload #8
    //   789: astore #5
    //   791: aload #8
    //   793: astore #9
    //   795: aload #8
    //   797: astore #10
    //   799: aload #8
    //   801: astore #11
    //   803: aload #8
    //   805: astore #12
    //   807: aload #8
    //   809: astore #13
    //   811: aload #8
    //   813: astore #14
    //   815: ldc2_w 4
    //   818: invokestatic sleep : (J)V
    //   821: aload #8
    //   823: astore #15
    //   825: aload #8
    //   827: astore #16
    //   829: aload #8
    //   831: astore #7
    //   833: aload #8
    //   835: astore #17
    //   837: aload #8
    //   839: astore #5
    //   841: aload #8
    //   843: astore #9
    //   845: aload #8
    //   847: astore #10
    //   849: aload #8
    //   851: astore #11
    //   853: aload #8
    //   855: astore #12
    //   857: aload #8
    //   859: astore #13
    //   861: aload #8
    //   863: astore #14
    //   865: aload_1
    //   866: invokevirtual l : ()Z
    //   869: ifne -> 1350
    //   872: aload #8
    //   874: astore #15
    //   876: aload #8
    //   878: astore #16
    //   880: aload #8
    //   882: astore #7
    //   884: aload #8
    //   886: astore #17
    //   888: aload #8
    //   890: astore #5
    //   892: aload #8
    //   894: astore #9
    //   896: aload #8
    //   898: astore #10
    //   900: aload #8
    //   902: astore #11
    //   904: aload #8
    //   906: astore #12
    //   908: aload #8
    //   910: astore #13
    //   912: aload #8
    //   914: astore #14
    //   916: aload_1
    //   917: invokevirtual g : ()Z
    //   920: ifne -> 1350
    //   923: aload #8
    //   925: astore #15
    //   927: aload #8
    //   929: astore #16
    //   931: aload #8
    //   933: astore #7
    //   935: aload #8
    //   937: astore #17
    //   939: aload #8
    //   941: astore #5
    //   943: aload #8
    //   945: astore #9
    //   947: aload #8
    //   949: astore #10
    //   951: aload #8
    //   953: astore #11
    //   955: aload #8
    //   957: astore #12
    //   959: aload #8
    //   961: astore #13
    //   963: aload #8
    //   965: astore #14
    //   967: aload #18
    //   969: aload #6
    //   971: iconst_0
    //   972: iload_3
    //   973: invokevirtual write : ([BII)V
    //   976: aload #8
    //   978: astore #15
    //   980: aload #8
    //   982: astore #16
    //   984: aload #8
    //   986: astore #7
    //   988: aload #8
    //   990: astore #17
    //   992: aload #8
    //   994: astore #5
    //   996: aload #8
    //   998: astore #9
    //   1000: aload #8
    //   1002: astore #10
    //   1004: aload #8
    //   1006: astore #11
    //   1008: aload #8
    //   1010: astore #12
    //   1012: aload #8
    //   1014: astore #13
    //   1016: aload #8
    //   1018: astore #14
    //   1020: aload #8
    //   1022: invokevirtual available : ()I
    //   1025: sipush #4096
    //   1028: invokestatic min : (II)I
    //   1031: istore_3
    //   1032: iload_2
    //   1033: iload_3
    //   1034: iadd
    //   1035: istore_2
    //   1036: aload #8
    //   1038: astore #15
    //   1040: aload #8
    //   1042: astore #16
    //   1044: aload #8
    //   1046: astore #7
    //   1048: aload #8
    //   1050: astore #17
    //   1052: aload #8
    //   1054: astore #5
    //   1056: aload #8
    //   1058: astore #9
    //   1060: aload #8
    //   1062: astore #10
    //   1064: aload #8
    //   1066: astore #11
    //   1068: aload #8
    //   1070: astore #12
    //   1072: aload #8
    //   1074: astore #13
    //   1076: aload #8
    //   1078: astore #14
    //   1080: aload #8
    //   1082: aload #6
    //   1084: iconst_0
    //   1085: iload_3
    //   1086: invokevirtual read : ([BII)I
    //   1089: istore #4
    //   1091: aload #8
    //   1093: astore #15
    //   1095: aload #8
    //   1097: astore #16
    //   1099: aload #8
    //   1101: astore #7
    //   1103: aload #8
    //   1105: astore #17
    //   1107: aload #8
    //   1109: astore #5
    //   1111: aload #8
    //   1113: astore #9
    //   1115: aload #8
    //   1117: astore #10
    //   1119: aload #8
    //   1121: astore #11
    //   1123: aload #8
    //   1125: astore #12
    //   1127: aload #8
    //   1129: astore #13
    //   1131: aload #8
    //   1133: astore #14
    //   1135: aload_1
    //   1136: iload_2
    //   1137: bipush #100
    //   1139: imul
    //   1140: aload #21
    //   1142: arraylength
    //   1143: idiv
    //   1144: invokevirtual a : (I)V
    //   1147: aload #8
    //   1149: astore #15
    //   1151: aload #8
    //   1153: astore #16
    //   1155: aload #8
    //   1157: astore #7
    //   1159: aload #8
    //   1161: astore #17
    //   1163: aload #8
    //   1165: astore #5
    //   1167: aload #8
    //   1169: astore #9
    //   1171: aload #8
    //   1173: astore #10
    //   1175: aload #8
    //   1177: astore #11
    //   1179: aload #8
    //   1181: astore #12
    //   1183: aload #8
    //   1185: astore #13
    //   1187: aload #8
    //   1189: astore #14
    //   1191: ldc '[ChatServiceImpl]'
    //   1193: new java/lang/StringBuilder
    //   1196: dup
    //   1197: invokespecial <init> : ()V
    //   1200: ldc_w 'Log 11 - arquivo: '
    //   1203: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1206: aload #19
    //   1208: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1211: ldc_w ' - progresso envio: '
    //   1214: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1217: aload_1
    //   1218: invokevirtual d : ()I
    //   1221: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1224: ldc_w '%'
    //   1227: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1230: invokevirtual toString : ()Ljava/lang/String;
    //   1233: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1236: pop
    //   1237: goto -> 766
    //   1240: astore_1
    //   1241: aload #15
    //   1243: astore #6
    //   1245: aload #6
    //   1247: astore #7
    //   1249: aload #6
    //   1251: astore #8
    //   1253: aload #6
    //   1255: astore #5
    //   1257: ldc '[ChatServiceImpl]'
    //   1259: new java/lang/StringBuilder
    //   1262: dup
    //   1263: invokespecial <init> : ()V
    //   1266: ldc_w 'sendFile - IOException '
    //   1269: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1272: aload_1
    //   1273: invokevirtual getMessage : ()Ljava/lang/String;
    //   1276: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1279: invokevirtual toString : ()Ljava/lang/String;
    //   1282: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1285: pop
    //   1286: aload #6
    //   1288: ifnull -> 1296
    //   1291: aload #6
    //   1293: invokevirtual close : ()V
    //   1296: return
    //   1297: astore #6
    //   1299: ldc '[ChatServiceImpl]'
    //   1301: new java/lang/StringBuilder
    //   1304: dup
    //   1305: invokespecial <init> : ()V
    //   1308: ldc_w 'Ocorreu um erro na requisicao do token de envio de arquivo. '
    //   1311: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1314: aload #6
    //   1316: invokevirtual getMessage : ()Ljava/lang/String;
    //   1319: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1322: invokevirtual toString : ()Ljava/lang/String;
    //   1325: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1328: pop
    //   1329: aconst_null
    //   1330: astore #9
    //   1332: goto -> 64
    //   1335: aload #20
    //   1337: sipush #15000
    //   1340: invokevirtual setReadTimeout : (I)V
    //   1343: goto -> 217
    //   1346: astore_1
    //   1347: goto -> 1245
    //   1350: aload #8
    //   1352: astore #15
    //   1354: aload #8
    //   1356: astore #16
    //   1358: aload #8
    //   1360: astore #7
    //   1362: aload #8
    //   1364: astore #17
    //   1366: aload #8
    //   1368: astore #5
    //   1370: aload #8
    //   1372: astore #9
    //   1374: aload #8
    //   1376: astore #10
    //   1378: aload #8
    //   1380: astore #11
    //   1382: aload #8
    //   1384: astore #12
    //   1386: aload #8
    //   1388: astore #13
    //   1390: aload #8
    //   1392: astore #14
    //   1394: ldc '[ChatServiceImpl]'
    //   1396: ldc_w 'Log 11 - progresso de envio: CANCELADO'
    //   1399: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1402: pop
    //   1403: aload #8
    //   1405: ifnull -> 1296
    //   1408: aload #8
    //   1410: invokevirtual close : ()V
    //   1413: return
    //   1414: astore_1
    //   1415: ldc '[ChatServiceImpl]'
    //   1417: new java/lang/StringBuilder
    //   1420: dup
    //   1421: invokespecial <init> : ()V
    //   1424: ldc_w 'sendFile close fileInputStream '
    //   1427: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1430: aload_1
    //   1431: invokevirtual getMessage : ()Ljava/lang/String;
    //   1434: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1437: invokevirtual toString : ()Ljava/lang/String;
    //   1440: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1443: pop
    //   1444: return
    //   1445: aload #8
    //   1447: astore #15
    //   1449: aload #8
    //   1451: astore #16
    //   1453: aload #8
    //   1455: astore #7
    //   1457: aload #8
    //   1459: astore #17
    //   1461: aload #8
    //   1463: astore #5
    //   1465: aload #8
    //   1467: astore #9
    //   1469: aload #8
    //   1471: astore #10
    //   1473: aload #8
    //   1475: astore #11
    //   1477: aload #8
    //   1479: astore #12
    //   1481: aload #8
    //   1483: astore #13
    //   1485: aload #8
    //   1487: astore #14
    //   1489: ldc '[ChatServiceImpl]'
    //   1491: ldc_w 'Log 12 - send multipart form data init'
    //   1494: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1497: pop
    //   1498: aload #8
    //   1500: astore #15
    //   1502: aload #8
    //   1504: astore #16
    //   1506: aload #8
    //   1508: astore #7
    //   1510: aload #8
    //   1512: astore #17
    //   1514: aload #8
    //   1516: astore #5
    //   1518: aload #8
    //   1520: astore #9
    //   1522: aload #8
    //   1524: astore #10
    //   1526: aload #8
    //   1528: astore #11
    //   1530: aload #8
    //   1532: astore #12
    //   1534: aload #8
    //   1536: astore #13
    //   1538: aload #8
    //   1540: astore #14
    //   1542: aload #18
    //   1544: ldc_w '\\r\\n'
    //   1547: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   1550: aload #8
    //   1552: astore #15
    //   1554: aload #8
    //   1556: astore #16
    //   1558: aload #8
    //   1560: astore #7
    //   1562: aload #8
    //   1564: astore #17
    //   1566: aload #8
    //   1568: astore #5
    //   1570: aload #8
    //   1572: astore #9
    //   1574: aload #8
    //   1576: astore #10
    //   1578: aload #8
    //   1580: astore #11
    //   1582: aload #8
    //   1584: astore #12
    //   1586: aload #8
    //   1588: astore #13
    //   1590: aload #8
    //   1592: astore #14
    //   1594: aload #18
    //   1596: ldc_w '--*****--\\r\\n'
    //   1599: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   1602: aload #8
    //   1604: astore #15
    //   1606: aload #8
    //   1608: astore #16
    //   1610: aload #8
    //   1612: astore #7
    //   1614: aload #8
    //   1616: astore #17
    //   1618: aload #8
    //   1620: astore #5
    //   1622: aload #8
    //   1624: astore #9
    //   1626: aload #8
    //   1628: astore #10
    //   1630: aload #8
    //   1632: astore #11
    //   1634: aload #8
    //   1636: astore #12
    //   1638: aload #8
    //   1640: astore #13
    //   1642: aload #8
    //   1644: astore #14
    //   1646: ldc '[ChatServiceImpl]'
    //   1648: ldc_w 'Log 12 - send multipart form data end'
    //   1651: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1654: pop
    //   1655: aload #8
    //   1657: astore #15
    //   1659: aload #8
    //   1661: astore #16
    //   1663: aload #8
    //   1665: astore #7
    //   1667: aload #8
    //   1669: astore #17
    //   1671: aload #8
    //   1673: astore #5
    //   1675: aload #8
    //   1677: astore #9
    //   1679: aload #8
    //   1681: astore #10
    //   1683: aload #8
    //   1685: astore #11
    //   1687: aload #8
    //   1689: astore #12
    //   1691: aload #8
    //   1693: astore #13
    //   1695: aload #8
    //   1697: astore #14
    //   1699: aload #20
    //   1701: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   1704: istore_2
    //   1705: aload #8
    //   1707: astore #15
    //   1709: aload #8
    //   1711: astore #16
    //   1713: aload #8
    //   1715: astore #7
    //   1717: aload #8
    //   1719: astore #17
    //   1721: aload #8
    //   1723: astore #5
    //   1725: aload #8
    //   1727: astore #9
    //   1729: aload #8
    //   1731: astore #10
    //   1733: aload #8
    //   1735: astore #11
    //   1737: aload #8
    //   1739: astore #12
    //   1741: aload #8
    //   1743: astore #13
    //   1745: aload #8
    //   1747: astore #14
    //   1749: aload #20
    //   1751: invokevirtual getResponseMessage : ()Ljava/lang/String;
    //   1754: astore #6
    //   1756: aload #8
    //   1758: astore #15
    //   1760: aload #8
    //   1762: astore #16
    //   1764: aload #8
    //   1766: astore #7
    //   1768: aload #8
    //   1770: astore #17
    //   1772: aload #8
    //   1774: astore #5
    //   1776: aload #8
    //   1778: astore #9
    //   1780: aload #8
    //   1782: astore #10
    //   1784: aload #8
    //   1786: astore #11
    //   1788: aload #8
    //   1790: astore #12
    //   1792: aload #8
    //   1794: astore #13
    //   1796: aload #8
    //   1798: astore #14
    //   1800: ldc '[ChatServiceImpl]'
    //   1802: new java/lang/StringBuilder
    //   1805: dup
    //   1806: invokespecial <init> : ()V
    //   1809: ldc_w 'Log 13 - server response code: '
    //   1812: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1815: iload_2
    //   1816: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1819: invokevirtual toString : ()Ljava/lang/String;
    //   1822: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1825: pop
    //   1826: aload #8
    //   1828: astore #15
    //   1830: aload #8
    //   1832: astore #16
    //   1834: aload #8
    //   1836: astore #7
    //   1838: aload #8
    //   1840: astore #17
    //   1842: aload #8
    //   1844: astore #5
    //   1846: aload #8
    //   1848: astore #9
    //   1850: aload #8
    //   1852: astore #10
    //   1854: aload #8
    //   1856: astore #11
    //   1858: aload #8
    //   1860: astore #12
    //   1862: aload #8
    //   1864: astore #13
    //   1866: aload #8
    //   1868: astore #14
    //   1870: ldc '[ChatServiceImpl]'
    //   1872: new java/lang/StringBuilder
    //   1875: dup
    //   1876: invokespecial <init> : ()V
    //   1879: ldc_w 'Log 13 - server response message: '
    //   1882: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1885: aload #6
    //   1887: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1890: invokevirtual toString : ()Ljava/lang/String;
    //   1893: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1896: pop
    //   1897: iload_2
    //   1898: sipush #201
    //   1901: if_icmpne -> 2786
    //   1904: aload #8
    //   1906: astore #15
    //   1908: aload #8
    //   1910: astore #16
    //   1912: aload #8
    //   1914: astore #7
    //   1916: aload #8
    //   1918: astore #17
    //   1920: aload #8
    //   1922: astore #5
    //   1924: aload #8
    //   1926: astore #9
    //   1928: aload #8
    //   1930: astore #10
    //   1932: aload #8
    //   1934: astore #11
    //   1936: aload #8
    //   1938: astore #12
    //   1940: aload #8
    //   1942: astore #13
    //   1944: aload #8
    //   1946: astore #14
    //   1948: aload_1
    //   1949: iconst_0
    //   1950: invokevirtual f : (Z)V
    //   1953: aload #8
    //   1955: astore #15
    //   1957: aload #8
    //   1959: astore #16
    //   1961: aload #8
    //   1963: astore #7
    //   1965: aload #8
    //   1967: astore #17
    //   1969: aload #8
    //   1971: astore #5
    //   1973: aload #8
    //   1975: astore #9
    //   1977: aload #8
    //   1979: astore #10
    //   1981: aload #8
    //   1983: astore #11
    //   1985: aload #8
    //   1987: astore #12
    //   1989: aload #8
    //   1991: astore #13
    //   1993: aload #8
    //   1995: astore #14
    //   1997: aload_1
    //   1998: iconst_0
    //   1999: invokevirtual f : (Z)V
    //   2002: aload #8
    //   2004: astore #15
    //   2006: aload #8
    //   2008: astore #6
    //   2010: aload #8
    //   2012: astore #16
    //   2014: aload #8
    //   2016: astore #7
    //   2018: aload #8
    //   2020: astore #17
    //   2022: aload #8
    //   2024: astore #5
    //   2026: aload #8
    //   2028: astore #9
    //   2030: aload #8
    //   2032: astore #10
    //   2034: aload #8
    //   2036: astore #11
    //   2038: aload #8
    //   2040: astore #12
    //   2042: aload #8
    //   2044: astore #13
    //   2046: aload #8
    //   2048: astore #14
    //   2050: aload_1
    //   2051: invokevirtual l : ()Z
    //   2054: ifne -> 2507
    //   2057: aload #8
    //   2059: astore #15
    //   2061: aload #8
    //   2063: astore #16
    //   2065: aload #8
    //   2067: astore #7
    //   2069: aload #8
    //   2071: astore #17
    //   2073: aload #8
    //   2075: astore #5
    //   2077: aload #8
    //   2079: astore #9
    //   2081: aload #8
    //   2083: astore #10
    //   2085: aload #8
    //   2087: astore #11
    //   2089: aload #8
    //   2091: astore #12
    //   2093: aload #8
    //   2095: astore #13
    //   2097: aload #8
    //   2099: astore #14
    //   2101: aload_1
    //   2102: bipush #100
    //   2104: invokevirtual a : (I)V
    //   2107: aload #8
    //   2109: astore #15
    //   2111: aload #8
    //   2113: astore #16
    //   2115: aload #8
    //   2117: astore #7
    //   2119: aload #8
    //   2121: astore #17
    //   2123: aload #8
    //   2125: astore #5
    //   2127: aload #8
    //   2129: astore #9
    //   2131: aload #8
    //   2133: astore #10
    //   2135: aload #8
    //   2137: astore #11
    //   2139: aload #8
    //   2141: astore #12
    //   2143: aload #8
    //   2145: astore #13
    //   2147: aload #8
    //   2149: astore #14
    //   2151: ldc '[ChatServiceImpl]'
    //   2153: new java/lang/StringBuilder
    //   2156: dup
    //   2157: invokespecial <init> : ()V
    //   2160: ldc_w 'Log 14 - arquivo: '
    //   2163: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2166: aload #19
    //   2168: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2171: ldc_w ' - progresso envio: '
    //   2174: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2177: aload_1
    //   2178: invokevirtual d : ()I
    //   2181: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   2184: ldc_w '%'
    //   2187: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2190: invokevirtual toString : ()Ljava/lang/String;
    //   2193: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   2196: pop
    //   2197: aload #8
    //   2199: astore #15
    //   2201: aload #8
    //   2203: astore #16
    //   2205: aload #8
    //   2207: astore #7
    //   2209: aload #8
    //   2211: astore #17
    //   2213: aload #8
    //   2215: astore #5
    //   2217: aload #8
    //   2219: astore #9
    //   2221: aload #8
    //   2223: astore #10
    //   2225: aload #8
    //   2227: astore #11
    //   2229: aload #8
    //   2231: astore #12
    //   2233: aload #8
    //   2235: astore #13
    //   2237: aload #8
    //   2239: astore #14
    //   2241: ldc '[ChatServiceImpl]'
    //   2243: ldc_w 'Log 14 - file set'
    //   2246: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   2249: pop
    //   2250: aload #8
    //   2252: astore #15
    //   2254: aload #8
    //   2256: astore #16
    //   2258: aload #8
    //   2260: astore #7
    //   2262: aload #8
    //   2264: astore #17
    //   2266: aload #8
    //   2268: astore #5
    //   2270: aload #8
    //   2272: astore #9
    //   2274: aload #8
    //   2276: astore #10
    //   2278: aload #8
    //   2280: astore #11
    //   2282: aload #8
    //   2284: astore #12
    //   2286: aload #8
    //   2288: astore #13
    //   2290: aload #8
    //   2292: astore #14
    //   2294: aload_1
    //   2295: invokestatic getInstance : ()Ljava/util/Calendar;
    //   2298: invokevirtual getTime : ()Ljava/util/Date;
    //   2301: invokevirtual a : (Ljava/util/Date;)V
    //   2304: aload #8
    //   2306: astore #15
    //   2308: aload #8
    //   2310: astore #16
    //   2312: aload #8
    //   2314: astore #7
    //   2316: aload #8
    //   2318: astore #17
    //   2320: aload #8
    //   2322: astore #5
    //   2324: aload #8
    //   2326: astore #9
    //   2328: aload #8
    //   2330: astore #10
    //   2332: aload #8
    //   2334: astore #11
    //   2336: aload #8
    //   2338: astore #12
    //   2340: aload #8
    //   2342: astore #13
    //   2344: aload #8
    //   2346: astore #14
    //   2348: aload_1
    //   2349: aload_1
    //   2350: invokevirtual f : ()Ljava/util/Date;
    //   2353: invokevirtual b : (Ljava/util/Date;)V
    //   2356: aload #8
    //   2358: astore #15
    //   2360: aload #8
    //   2362: astore #16
    //   2364: aload #8
    //   2366: astore #7
    //   2368: aload #8
    //   2370: astore #17
    //   2372: aload #8
    //   2374: astore #5
    //   2376: aload #8
    //   2378: astore #9
    //   2380: aload #8
    //   2382: astore #10
    //   2384: aload #8
    //   2386: astore #11
    //   2388: aload #8
    //   2390: astore #12
    //   2392: aload #8
    //   2394: astore #13
    //   2396: aload #8
    //   2398: astore #14
    //   2400: aload_1
    //   2401: iconst_1
    //   2402: invokevirtual b : (Z)V
    //   2405: aload #8
    //   2407: astore #15
    //   2409: aload #8
    //   2411: astore #16
    //   2413: aload #8
    //   2415: astore #7
    //   2417: aload #8
    //   2419: astore #17
    //   2421: aload #8
    //   2423: astore #5
    //   2425: aload #8
    //   2427: astore #9
    //   2429: aload #8
    //   2431: astore #10
    //   2433: aload #8
    //   2435: astore #11
    //   2437: aload #8
    //   2439: astore #12
    //   2441: aload #8
    //   2443: astore #13
    //   2445: aload #8
    //   2447: astore #14
    //   2449: aload_1
    //   2450: iconst_0
    //   2451: invokevirtual f : (Z)V
    //   2454: aload #8
    //   2456: astore #15
    //   2458: aload #8
    //   2460: astore #16
    //   2462: aload #8
    //   2464: astore #7
    //   2466: aload #8
    //   2468: astore #17
    //   2470: aload #8
    //   2472: astore #5
    //   2474: aload #8
    //   2476: astore #9
    //   2478: aload #8
    //   2480: astore #10
    //   2482: aload #8
    //   2484: astore #11
    //   2486: aload #8
    //   2488: astore #12
    //   2490: aload #8
    //   2492: astore #13
    //   2494: aload #8
    //   2496: astore #14
    //   2498: aload_1
    //   2499: iconst_1
    //   2500: invokevirtual a : (Z)V
    //   2503: aload #8
    //   2505: astore #6
    //   2507: aload #6
    //   2509: astore #15
    //   2511: aload #6
    //   2513: astore #16
    //   2515: aload #6
    //   2517: astore #7
    //   2519: aload #6
    //   2521: astore #17
    //   2523: aload #6
    //   2525: astore #5
    //   2527: aload #6
    //   2529: astore #9
    //   2531: aload #6
    //   2533: astore #10
    //   2535: aload #6
    //   2537: astore #11
    //   2539: aload #6
    //   2541: astore #12
    //   2543: aload #6
    //   2545: astore #13
    //   2547: aload #6
    //   2549: astore #14
    //   2551: aload #18
    //   2553: invokevirtual flush : ()V
    //   2556: aload #6
    //   2558: astore #15
    //   2560: aload #6
    //   2562: astore #16
    //   2564: aload #6
    //   2566: astore #7
    //   2568: aload #6
    //   2570: astore #17
    //   2572: aload #6
    //   2574: astore #5
    //   2576: aload #6
    //   2578: astore #9
    //   2580: aload #6
    //   2582: astore #10
    //   2584: aload #6
    //   2586: astore #11
    //   2588: aload #6
    //   2590: astore #12
    //   2592: aload #6
    //   2594: astore #13
    //   2596: aload #6
    //   2598: astore #14
    //   2600: aload #18
    //   2602: invokevirtual close : ()V
    //   2605: aload #6
    //   2607: astore #15
    //   2609: aload #6
    //   2611: astore #16
    //   2613: aload #6
    //   2615: astore #7
    //   2617: aload #6
    //   2619: astore #17
    //   2621: aload #6
    //   2623: astore #5
    //   2625: aload #6
    //   2627: astore #9
    //   2629: aload #6
    //   2631: astore #10
    //   2633: aload #6
    //   2635: astore #11
    //   2637: aload #6
    //   2639: astore #12
    //   2641: aload #6
    //   2643: astore #13
    //   2645: aload #6
    //   2647: astore #14
    //   2649: ldc '[ChatServiceImpl]'
    //   2651: ldc_w 'Log 14 - dataOutputStream flush / close'
    //   2654: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   2657: pop
    //   2658: goto -> 1286
    //   2661: astore_1
    //   2662: aload #16
    //   2664: astore #6
    //   2666: aload #6
    //   2668: astore #7
    //   2670: aload #6
    //   2672: astore #8
    //   2674: aload #6
    //   2676: astore #5
    //   2678: ldc '[ChatServiceImpl]'
    //   2680: new java/lang/StringBuilder
    //   2683: dup
    //   2684: invokespecial <init> : ()V
    //   2687: ldc_w 'sendFile - InvalidKey '
    //   2690: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2693: aload_1
    //   2694: invokevirtual getMessage : ()Ljava/lang/String;
    //   2697: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2700: invokevirtual toString : ()Ljava/lang/String;
    //   2703: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   2706: pop
    //   2707: goto -> 1286
    //   2710: astore_1
    //   2711: aload #7
    //   2713: astore #5
    //   2715: ldc '[ChatServiceImpl]'
    //   2717: new java/lang/StringBuilder
    //   2720: dup
    //   2721: invokespecial <init> : ()V
    //   2724: ldc_w 'sendFile FileNotFoundException nao foi possivel encontrar o arquivo '
    //   2727: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2730: aload_1
    //   2731: invokevirtual getMessage : ()Ljava/lang/String;
    //   2734: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2737: invokevirtual toString : ()Ljava/lang/String;
    //   2740: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   2743: pop
    //   2744: aload #7
    //   2746: ifnull -> 1296
    //   2749: aload #7
    //   2751: invokevirtual close : ()V
    //   2754: return
    //   2755: astore_1
    //   2756: ldc '[ChatServiceImpl]'
    //   2758: new java/lang/StringBuilder
    //   2761: dup
    //   2762: invokespecial <init> : ()V
    //   2765: ldc_w 'sendFile close fileInputStream '
    //   2768: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2771: aload_1
    //   2772: invokevirtual getMessage : ()Ljava/lang/String;
    //   2775: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2778: invokevirtual toString : ()Ljava/lang/String;
    //   2781: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   2784: pop
    //   2785: return
    //   2786: aload #8
    //   2788: astore #15
    //   2790: aload #8
    //   2792: astore #16
    //   2794: aload #8
    //   2796: astore #7
    //   2798: aload #8
    //   2800: astore #17
    //   2802: aload #8
    //   2804: astore #5
    //   2806: aload #8
    //   2808: astore #9
    //   2810: aload #8
    //   2812: astore #10
    //   2814: aload #8
    //   2816: astore #11
    //   2818: aload #8
    //   2820: astore #12
    //   2822: aload #8
    //   2824: astore #13
    //   2826: aload #8
    //   2828: astore #14
    //   2830: new arh
    //   2833: dup
    //   2834: invokespecial <init> : ()V
    //   2837: astore #6
    //   2839: aload #8
    //   2841: astore #15
    //   2843: aload #8
    //   2845: astore #16
    //   2847: aload #8
    //   2849: astore #7
    //   2851: aload #8
    //   2853: astore #17
    //   2855: aload #8
    //   2857: astore #5
    //   2859: aload #8
    //   2861: astore #9
    //   2863: aload #8
    //   2865: astore #10
    //   2867: aload #8
    //   2869: astore #11
    //   2871: aload #8
    //   2873: astore #12
    //   2875: aload #8
    //   2877: astore #13
    //   2879: aload #8
    //   2881: astore #14
    //   2883: aload #6
    //   2885: sipush #999
    //   2888: invokevirtual a : (I)V
    //   2891: aload #8
    //   2893: astore #15
    //   2895: aload #8
    //   2897: astore #16
    //   2899: aload #8
    //   2901: astore #7
    //   2903: aload #8
    //   2905: astore #17
    //   2907: aload #8
    //   2909: astore #5
    //   2911: aload #8
    //   2913: astore #9
    //   2915: aload #8
    //   2917: astore #10
    //   2919: aload #8
    //   2921: astore #11
    //   2923: aload #8
    //   2925: astore #12
    //   2927: aload #8
    //   2929: astore #13
    //   2931: aload #8
    //   2933: astore #14
    //   2935: aload #6
    //   2937: ldc_w 'Falha ao enviar arquivo'
    //   2940: invokevirtual a : (Ljava/lang/String;)V
    //   2943: aload #8
    //   2945: astore #15
    //   2947: aload #8
    //   2949: astore #16
    //   2951: aload #8
    //   2953: astore #7
    //   2955: aload #8
    //   2957: astore #17
    //   2959: aload #8
    //   2961: astore #5
    //   2963: aload #8
    //   2965: astore #9
    //   2967: aload #8
    //   2969: astore #10
    //   2971: aload #8
    //   2973: astore #11
    //   2975: aload #8
    //   2977: astore #12
    //   2979: aload #8
    //   2981: astore #13
    //   2983: aload #8
    //   2985: astore #14
    //   2987: aload_1
    //   2988: iconst_0
    //   2989: invokevirtual f : (Z)V
    //   2992: aload #8
    //   2994: astore #15
    //   2996: aload #8
    //   2998: astore #16
    //   3000: aload #8
    //   3002: astore #7
    //   3004: aload #8
    //   3006: astore #17
    //   3008: aload #8
    //   3010: astore #5
    //   3012: aload #8
    //   3014: astore #9
    //   3016: aload #8
    //   3018: astore #10
    //   3020: aload #8
    //   3022: astore #11
    //   3024: aload #8
    //   3026: astore #12
    //   3028: aload #8
    //   3030: astore #13
    //   3032: aload #8
    //   3034: astore #14
    //   3036: aload_1
    //   3037: aload #6
    //   3039: invokevirtual a : (Larh;)V
    //   3042: aload #8
    //   3044: astore #15
    //   3046: aload #8
    //   3048: astore #16
    //   3050: aload #8
    //   3052: astore #7
    //   3054: aload #8
    //   3056: astore #17
    //   3058: aload #8
    //   3060: astore #5
    //   3062: aload #8
    //   3064: astore #9
    //   3066: aload #8
    //   3068: astore #10
    //   3070: aload #8
    //   3072: astore #11
    //   3074: aload #8
    //   3076: astore #12
    //   3078: aload #8
    //   3080: astore #13
    //   3082: aload #8
    //   3084: astore #14
    //   3086: aload_1
    //   3087: iconst_1
    //   3088: invokevirtual i : (Z)V
    //   3091: aload #8
    //   3093: astore #15
    //   3095: aload #8
    //   3097: astore #16
    //   3099: aload #8
    //   3101: astore #7
    //   3103: aload #8
    //   3105: astore #17
    //   3107: aload #8
    //   3109: astore #5
    //   3111: aload #8
    //   3113: astore #9
    //   3115: aload #8
    //   3117: astore #10
    //   3119: aload #8
    //   3121: astore #11
    //   3123: aload #8
    //   3125: astore #12
    //   3127: aload #8
    //   3129: astore #13
    //   3131: aload #8
    //   3133: astore #14
    //   3135: ldc '[ChatServiceImpl]'
    //   3137: new java/lang/StringBuilder
    //   3140: dup
    //   3141: invokespecial <init> : ()V
    //   3144: ldc_w 'Error: '
    //   3147: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3150: iload_2
    //   3151: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   3154: invokevirtual toString : ()Ljava/lang/String;
    //   3157: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3160: pop
    //   3161: aload #8
    //   3163: astore #6
    //   3165: goto -> 2507
    //   3168: astore_1
    //   3169: aload #17
    //   3171: astore #6
    //   3173: aload #6
    //   3175: astore #7
    //   3177: aload #6
    //   3179: astore #8
    //   3181: aload #6
    //   3183: astore #5
    //   3185: ldc '[ChatServiceImpl]'
    //   3187: new java/lang/StringBuilder
    //   3190: dup
    //   3191: invokespecial <init> : ()V
    //   3194: ldc_w 'sendFile - NoSuchPadding '
    //   3197: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3200: aload_1
    //   3201: invokevirtual getMessage : ()Ljava/lang/String;
    //   3204: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3207: invokevirtual toString : ()Ljava/lang/String;
    //   3210: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3213: pop
    //   3214: goto -> 1286
    //   3217: astore_1
    //   3218: aload #8
    //   3220: astore #5
    //   3222: ldc '[ChatServiceImpl]'
    //   3224: ldc_w 'sendFile FileNotFoundException nao foi possivel enviar o arquivo '
    //   3227: aload_1
    //   3228: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   3231: pop
    //   3232: aload #8
    //   3234: ifnull -> 1296
    //   3237: aload #8
    //   3239: invokevirtual close : ()V
    //   3242: return
    //   3243: astore_1
    //   3244: ldc '[ChatServiceImpl]'
    //   3246: new java/lang/StringBuilder
    //   3249: dup
    //   3250: invokespecial <init> : ()V
    //   3253: ldc_w 'sendFile close fileInputStream '
    //   3256: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3259: aload_1
    //   3260: invokevirtual getMessage : ()Ljava/lang/String;
    //   3263: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3266: invokevirtual toString : ()Ljava/lang/String;
    //   3269: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   3272: pop
    //   3273: return
    //   3274: new arh
    //   3277: dup
    //   3278: invokespecial <init> : ()V
    //   3281: astore #5
    //   3283: aload #5
    //   3285: sipush #999
    //   3288: invokevirtual a : (I)V
    //   3291: aload #5
    //   3293: ldc_w 'Falha ao enviar arquivo'
    //   3296: invokevirtual a : (Ljava/lang/String;)V
    //   3299: aload_1
    //   3300: aload #5
    //   3302: invokevirtual a : (Larh;)V
    //   3305: aload_1
    //   3306: iconst_1
    //   3307: invokevirtual i : (Z)V
    //   3310: ldc '[ChatServiceImpl]'
    //   3312: ldc_w '! CryptoKey'
    //   3315: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3318: pop
    //   3319: goto -> 2507
    //   3322: astore_1
    //   3323: aload #6
    //   3325: astore #7
    //   3327: aload #6
    //   3329: astore #8
    //   3331: aload #6
    //   3333: astore #5
    //   3335: ldc '[ChatServiceImpl]'
    //   3337: new java/lang/StringBuilder
    //   3340: dup
    //   3341: invokespecial <init> : ()V
    //   3344: ldc_w 'sendFile - NoSuchAlgorithm '
    //   3347: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3350: aload_1
    //   3351: invokevirtual getMessage : ()Ljava/lang/String;
    //   3354: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3357: invokevirtual toString : ()Ljava/lang/String;
    //   3360: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3363: pop
    //   3364: goto -> 1286
    //   3367: astore_1
    //   3368: aload #5
    //   3370: ifnull -> 3378
    //   3373: aload #5
    //   3375: invokevirtual close : ()V
    //   3378: aload_1
    //   3379: athrow
    //   3380: astore_1
    //   3381: aload #6
    //   3383: astore #7
    //   3385: aload #6
    //   3387: astore #8
    //   3389: aload #6
    //   3391: astore #5
    //   3393: ldc '[ChatServiceImpl]'
    //   3395: new java/lang/StringBuilder
    //   3398: dup
    //   3399: invokespecial <init> : ()V
    //   3402: ldc_w 'sendFile - InvalidAlgorithmParameter '
    //   3405: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3408: aload_1
    //   3409: invokevirtual getMessage : ()Ljava/lang/String;
    //   3412: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3415: invokevirtual toString : ()Ljava/lang/String;
    //   3418: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3421: pop
    //   3422: goto -> 1286
    //   3425: aload #6
    //   3427: astore #7
    //   3429: aload #6
    //   3431: astore #8
    //   3433: aload #6
    //   3435: astore #5
    //   3437: ldc '[ChatServiceImpl]'
    //   3439: new java/lang/StringBuilder
    //   3442: dup
    //   3443: invokespecial <init> : ()V
    //   3446: ldc_w 'sendFile - IllegalBlockSize '
    //   3449: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3452: aload_1
    //   3453: invokevirtual getMessage : ()Ljava/lang/String;
    //   3456: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3459: invokevirtual toString : ()Ljava/lang/String;
    //   3462: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3465: pop
    //   3466: goto -> 1286
    //   3469: aload #6
    //   3471: astore #7
    //   3473: aload #6
    //   3475: astore #8
    //   3477: aload #6
    //   3479: astore #5
    //   3481: ldc '[ChatServiceImpl]'
    //   3483: new java/lang/StringBuilder
    //   3486: dup
    //   3487: invokespecial <init> : ()V
    //   3490: ldc_w 'sendFile - BadPadding '
    //   3493: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3496: aload_1
    //   3497: invokevirtual getMessage : ()Ljava/lang/String;
    //   3500: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3503: invokevirtual toString : ()Ljava/lang/String;
    //   3506: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3509: pop
    //   3510: goto -> 1286
    //   3513: aload #6
    //   3515: astore #7
    //   3517: aload #6
    //   3519: astore #8
    //   3521: aload #6
    //   3523: astore #5
    //   3525: ldc '[ChatServiceImpl]'
    //   3527: new java/lang/StringBuilder
    //   3530: dup
    //   3531: invokespecial <init> : ()V
    //   3534: ldc_w 'sendFile - InterruptedException '
    //   3537: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3540: aload_1
    //   3541: invokevirtual getMessage : ()Ljava/lang/String;
    //   3544: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3547: invokevirtual toString : ()Ljava/lang/String;
    //   3550: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3553: pop
    //   3554: goto -> 1286
    //   3557: aload #6
    //   3559: astore #7
    //   3561: aload #6
    //   3563: astore #8
    //   3565: aload #6
    //   3567: astore #5
    //   3569: ldc '[ChatServiceImpl]'
    //   3571: ldc_w 'sendFile - Exception '
    //   3574: aload_1
    //   3575: invokestatic d : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   3578: pop
    //   3579: goto -> 1286
    //   3582: astore_1
    //   3583: ldc '[ChatServiceImpl]'
    //   3585: new java/lang/StringBuilder
    //   3588: dup
    //   3589: invokespecial <init> : ()V
    //   3592: ldc_w 'sendFile close fileInputStream '
    //   3595: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3598: aload_1
    //   3599: invokevirtual getMessage : ()Ljava/lang/String;
    //   3602: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3605: invokevirtual toString : ()Ljava/lang/String;
    //   3608: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   3611: pop
    //   3612: return
    //   3613: astore #5
    //   3615: ldc '[ChatServiceImpl]'
    //   3617: new java/lang/StringBuilder
    //   3620: dup
    //   3621: invokespecial <init> : ()V
    //   3624: ldc_w 'sendFile close fileInputStream '
    //   3627: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3630: aload #5
    //   3632: invokevirtual getMessage : ()Ljava/lang/String;
    //   3635: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3638: invokevirtual toString : ()Ljava/lang/String;
    //   3641: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   3644: pop
    //   3645: goto -> 3378
    //   3648: new arh
    //   3651: dup
    //   3652: invokespecial <init> : ()V
    //   3655: astore #5
    //   3657: aload #5
    //   3659: sipush #999
    //   3662: invokevirtual a : (I)V
    //   3665: aload #5
    //   3667: ldc_w 'Falha ao enviar arquivo'
    //   3670: invokevirtual a : (Ljava/lang/String;)V
    //   3673: aload_1
    //   3674: aload #5
    //   3676: invokevirtual a : (Larh;)V
    //   3679: aload_1
    //   3680: iconst_1
    //   3681: invokevirtual i : (Z)V
    //   3684: ldc '[ChatServiceImpl]'
    //   3686: ldc_w 'Erro ao solicitar ticket '
    //   3689: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3692: pop
    //   3693: invokestatic b : ()V
    //   3696: return
    //   3697: ldc '[ChatServiceImpl]'
    //   3699: ldc_w 'FileWrapper null'
    //   3702: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   3705: pop
    //   3706: return
    //   3707: astore_1
    //   3708: aload #6
    //   3710: astore #5
    //   3712: goto -> 3368
    //   3715: astore_1
    //   3716: aload #6
    //   3718: astore #8
    //   3720: goto -> 3218
    //   3723: astore_1
    //   3724: aload #6
    //   3726: astore #7
    //   3728: goto -> 2711
    //   3731: astore_1
    //   3732: aload #9
    //   3734: astore #6
    //   3736: goto -> 3557
    //   3739: astore_1
    //   3740: aload #10
    //   3742: astore #6
    //   3744: goto -> 3513
    //   3747: astore_1
    //   3748: aload #11
    //   3750: astore #6
    //   3752: goto -> 3469
    //   3755: astore_1
    //   3756: aload #12
    //   3758: astore #6
    //   3760: goto -> 3425
    //   3763: astore_1
    //   3764: aload #13
    //   3766: astore #6
    //   3768: goto -> 3381
    //   3771: astore_1
    //   3772: aload #14
    //   3774: astore #6
    //   3776: goto -> 3323
    //   3779: astore_1
    //   3780: goto -> 3173
    //   3783: astore_1
    //   3784: goto -> 2666
    //   3787: astore_1
    //   3788: goto -> 3425
    //   3791: astore_1
    //   3792: goto -> 3469
    //   3795: astore_1
    //   3796: goto -> 3513
    //   3799: astore_1
    //   3800: goto -> 3557
    // Exception table:
    //   from	to	target	type
    //   57	64	1297	java/lang/Exception
    //   85	98	2710	java/io/FileNotFoundException
    //   85	98	3217	java/lang/Exception
    //   85	98	3367	finally
    //   98	174	3723	java/io/FileNotFoundException
    //   98	174	3715	java/lang/Exception
    //   98	174	3707	finally
    //   174	217	1346	java/io/IOException
    //   174	217	3783	java/security/InvalidKeyException
    //   174	217	3779	javax/crypto/NoSuchPaddingException
    //   174	217	3322	java/security/NoSuchAlgorithmException
    //   174	217	3380	java/security/InvalidAlgorithmParameterException
    //   174	217	3787	javax/crypto/IllegalBlockSizeException
    //   174	217	3791	javax/crypto/BadPaddingException
    //   174	217	3795	java/lang/InterruptedException
    //   174	217	3799	java/lang/Exception
    //   174	217	3723	java/io/FileNotFoundException
    //   174	217	3707	finally
    //   217	551	1346	java/io/IOException
    //   217	551	3783	java/security/InvalidKeyException
    //   217	551	3779	javax/crypto/NoSuchPaddingException
    //   217	551	3322	java/security/NoSuchAlgorithmException
    //   217	551	3380	java/security/InvalidAlgorithmParameterException
    //   217	551	3787	javax/crypto/IllegalBlockSizeException
    //   217	551	3791	javax/crypto/BadPaddingException
    //   217	551	3795	java/lang/InterruptedException
    //   217	551	3799	java/lang/Exception
    //   217	551	3723	java/io/FileNotFoundException
    //   217	551	3707	finally
    //   595	607	1240	java/io/IOException
    //   595	607	2661	java/security/InvalidKeyException
    //   595	607	3168	javax/crypto/NoSuchPaddingException
    //   595	607	3771	java/security/NoSuchAlgorithmException
    //   595	607	3763	java/security/InvalidAlgorithmParameterException
    //   595	607	3755	javax/crypto/IllegalBlockSizeException
    //   595	607	3747	javax/crypto/BadPaddingException
    //   595	607	3739	java/lang/InterruptedException
    //   595	607	3731	java/lang/Exception
    //   595	607	2710	java/io/FileNotFoundException
    //   595	607	3367	finally
    //   651	656	1240	java/io/IOException
    //   651	656	2661	java/security/InvalidKeyException
    //   651	656	3168	javax/crypto/NoSuchPaddingException
    //   651	656	3771	java/security/NoSuchAlgorithmException
    //   651	656	3763	java/security/InvalidAlgorithmParameterException
    //   651	656	3755	javax/crypto/IllegalBlockSizeException
    //   651	656	3747	javax/crypto/BadPaddingException
    //   651	656	3739	java/lang/InterruptedException
    //   651	656	3731	java/lang/Exception
    //   651	656	2710	java/io/FileNotFoundException
    //   651	656	3367	finally
    //   700	709	1240	java/io/IOException
    //   700	709	2661	java/security/InvalidKeyException
    //   700	709	3168	javax/crypto/NoSuchPaddingException
    //   700	709	3771	java/security/NoSuchAlgorithmException
    //   700	709	3763	java/security/InvalidAlgorithmParameterException
    //   700	709	3755	javax/crypto/IllegalBlockSizeException
    //   700	709	3747	javax/crypto/BadPaddingException
    //   700	709	3739	java/lang/InterruptedException
    //   700	709	3731	java/lang/Exception
    //   700	709	2710	java/io/FileNotFoundException
    //   700	709	3367	finally
    //   753	764	1240	java/io/IOException
    //   753	764	2661	java/security/InvalidKeyException
    //   753	764	3168	javax/crypto/NoSuchPaddingException
    //   753	764	3771	java/security/NoSuchAlgorithmException
    //   753	764	3763	java/security/InvalidAlgorithmParameterException
    //   753	764	3755	javax/crypto/IllegalBlockSizeException
    //   753	764	3747	javax/crypto/BadPaddingException
    //   753	764	3739	java/lang/InterruptedException
    //   753	764	3731	java/lang/Exception
    //   753	764	2710	java/io/FileNotFoundException
    //   753	764	3367	finally
    //   815	821	1240	java/io/IOException
    //   815	821	2661	java/security/InvalidKeyException
    //   815	821	3168	javax/crypto/NoSuchPaddingException
    //   815	821	3771	java/security/NoSuchAlgorithmException
    //   815	821	3763	java/security/InvalidAlgorithmParameterException
    //   815	821	3755	javax/crypto/IllegalBlockSizeException
    //   815	821	3747	javax/crypto/BadPaddingException
    //   815	821	3739	java/lang/InterruptedException
    //   815	821	3731	java/lang/Exception
    //   815	821	2710	java/io/FileNotFoundException
    //   815	821	3367	finally
    //   865	872	1240	java/io/IOException
    //   865	872	2661	java/security/InvalidKeyException
    //   865	872	3168	javax/crypto/NoSuchPaddingException
    //   865	872	3771	java/security/NoSuchAlgorithmException
    //   865	872	3763	java/security/InvalidAlgorithmParameterException
    //   865	872	3755	javax/crypto/IllegalBlockSizeException
    //   865	872	3747	javax/crypto/BadPaddingException
    //   865	872	3739	java/lang/InterruptedException
    //   865	872	3731	java/lang/Exception
    //   865	872	2710	java/io/FileNotFoundException
    //   865	872	3367	finally
    //   916	923	1240	java/io/IOException
    //   916	923	2661	java/security/InvalidKeyException
    //   916	923	3168	javax/crypto/NoSuchPaddingException
    //   916	923	3771	java/security/NoSuchAlgorithmException
    //   916	923	3763	java/security/InvalidAlgorithmParameterException
    //   916	923	3755	javax/crypto/IllegalBlockSizeException
    //   916	923	3747	javax/crypto/BadPaddingException
    //   916	923	3739	java/lang/InterruptedException
    //   916	923	3731	java/lang/Exception
    //   916	923	2710	java/io/FileNotFoundException
    //   916	923	3367	finally
    //   967	976	1240	java/io/IOException
    //   967	976	2661	java/security/InvalidKeyException
    //   967	976	3168	javax/crypto/NoSuchPaddingException
    //   967	976	3771	java/security/NoSuchAlgorithmException
    //   967	976	3763	java/security/InvalidAlgorithmParameterException
    //   967	976	3755	javax/crypto/IllegalBlockSizeException
    //   967	976	3747	javax/crypto/BadPaddingException
    //   967	976	3739	java/lang/InterruptedException
    //   967	976	3731	java/lang/Exception
    //   967	976	2710	java/io/FileNotFoundException
    //   967	976	3367	finally
    //   1020	1032	1240	java/io/IOException
    //   1020	1032	2661	java/security/InvalidKeyException
    //   1020	1032	3168	javax/crypto/NoSuchPaddingException
    //   1020	1032	3771	java/security/NoSuchAlgorithmException
    //   1020	1032	3763	java/security/InvalidAlgorithmParameterException
    //   1020	1032	3755	javax/crypto/IllegalBlockSizeException
    //   1020	1032	3747	javax/crypto/BadPaddingException
    //   1020	1032	3739	java/lang/InterruptedException
    //   1020	1032	3731	java/lang/Exception
    //   1020	1032	2710	java/io/FileNotFoundException
    //   1020	1032	3367	finally
    //   1080	1091	1240	java/io/IOException
    //   1080	1091	2661	java/security/InvalidKeyException
    //   1080	1091	3168	javax/crypto/NoSuchPaddingException
    //   1080	1091	3771	java/security/NoSuchAlgorithmException
    //   1080	1091	3763	java/security/InvalidAlgorithmParameterException
    //   1080	1091	3755	javax/crypto/IllegalBlockSizeException
    //   1080	1091	3747	javax/crypto/BadPaddingException
    //   1080	1091	3739	java/lang/InterruptedException
    //   1080	1091	3731	java/lang/Exception
    //   1080	1091	2710	java/io/FileNotFoundException
    //   1080	1091	3367	finally
    //   1135	1147	1240	java/io/IOException
    //   1135	1147	2661	java/security/InvalidKeyException
    //   1135	1147	3168	javax/crypto/NoSuchPaddingException
    //   1135	1147	3771	java/security/NoSuchAlgorithmException
    //   1135	1147	3763	java/security/InvalidAlgorithmParameterException
    //   1135	1147	3755	javax/crypto/IllegalBlockSizeException
    //   1135	1147	3747	javax/crypto/BadPaddingException
    //   1135	1147	3739	java/lang/InterruptedException
    //   1135	1147	3731	java/lang/Exception
    //   1135	1147	2710	java/io/FileNotFoundException
    //   1135	1147	3367	finally
    //   1191	1237	1240	java/io/IOException
    //   1191	1237	2661	java/security/InvalidKeyException
    //   1191	1237	3168	javax/crypto/NoSuchPaddingException
    //   1191	1237	3771	java/security/NoSuchAlgorithmException
    //   1191	1237	3763	java/security/InvalidAlgorithmParameterException
    //   1191	1237	3755	javax/crypto/IllegalBlockSizeException
    //   1191	1237	3747	javax/crypto/BadPaddingException
    //   1191	1237	3739	java/lang/InterruptedException
    //   1191	1237	3731	java/lang/Exception
    //   1191	1237	2710	java/io/FileNotFoundException
    //   1191	1237	3367	finally
    //   1257	1286	2710	java/io/FileNotFoundException
    //   1257	1286	3217	java/lang/Exception
    //   1257	1286	3367	finally
    //   1291	1296	3582	java/io/IOException
    //   1335	1343	1346	java/io/IOException
    //   1335	1343	3783	java/security/InvalidKeyException
    //   1335	1343	3779	javax/crypto/NoSuchPaddingException
    //   1335	1343	3322	java/security/NoSuchAlgorithmException
    //   1335	1343	3380	java/security/InvalidAlgorithmParameterException
    //   1335	1343	3787	javax/crypto/IllegalBlockSizeException
    //   1335	1343	3791	javax/crypto/BadPaddingException
    //   1335	1343	3795	java/lang/InterruptedException
    //   1335	1343	3799	java/lang/Exception
    //   1335	1343	3723	java/io/FileNotFoundException
    //   1335	1343	3707	finally
    //   1394	1403	1240	java/io/IOException
    //   1394	1403	2661	java/security/InvalidKeyException
    //   1394	1403	3168	javax/crypto/NoSuchPaddingException
    //   1394	1403	3771	java/security/NoSuchAlgorithmException
    //   1394	1403	3763	java/security/InvalidAlgorithmParameterException
    //   1394	1403	3755	javax/crypto/IllegalBlockSizeException
    //   1394	1403	3747	javax/crypto/BadPaddingException
    //   1394	1403	3739	java/lang/InterruptedException
    //   1394	1403	3731	java/lang/Exception
    //   1394	1403	2710	java/io/FileNotFoundException
    //   1394	1403	3367	finally
    //   1408	1413	1414	java/io/IOException
    //   1489	1498	1240	java/io/IOException
    //   1489	1498	2661	java/security/InvalidKeyException
    //   1489	1498	3168	javax/crypto/NoSuchPaddingException
    //   1489	1498	3771	java/security/NoSuchAlgorithmException
    //   1489	1498	3763	java/security/InvalidAlgorithmParameterException
    //   1489	1498	3755	javax/crypto/IllegalBlockSizeException
    //   1489	1498	3747	javax/crypto/BadPaddingException
    //   1489	1498	3739	java/lang/InterruptedException
    //   1489	1498	3731	java/lang/Exception
    //   1489	1498	2710	java/io/FileNotFoundException
    //   1489	1498	3367	finally
    //   1542	1550	1240	java/io/IOException
    //   1542	1550	2661	java/security/InvalidKeyException
    //   1542	1550	3168	javax/crypto/NoSuchPaddingException
    //   1542	1550	3771	java/security/NoSuchAlgorithmException
    //   1542	1550	3763	java/security/InvalidAlgorithmParameterException
    //   1542	1550	3755	javax/crypto/IllegalBlockSizeException
    //   1542	1550	3747	javax/crypto/BadPaddingException
    //   1542	1550	3739	java/lang/InterruptedException
    //   1542	1550	3731	java/lang/Exception
    //   1542	1550	2710	java/io/FileNotFoundException
    //   1542	1550	3367	finally
    //   1594	1602	1240	java/io/IOException
    //   1594	1602	2661	java/security/InvalidKeyException
    //   1594	1602	3168	javax/crypto/NoSuchPaddingException
    //   1594	1602	3771	java/security/NoSuchAlgorithmException
    //   1594	1602	3763	java/security/InvalidAlgorithmParameterException
    //   1594	1602	3755	javax/crypto/IllegalBlockSizeException
    //   1594	1602	3747	javax/crypto/BadPaddingException
    //   1594	1602	3739	java/lang/InterruptedException
    //   1594	1602	3731	java/lang/Exception
    //   1594	1602	2710	java/io/FileNotFoundException
    //   1594	1602	3367	finally
    //   1646	1655	1240	java/io/IOException
    //   1646	1655	2661	java/security/InvalidKeyException
    //   1646	1655	3168	javax/crypto/NoSuchPaddingException
    //   1646	1655	3771	java/security/NoSuchAlgorithmException
    //   1646	1655	3763	java/security/InvalidAlgorithmParameterException
    //   1646	1655	3755	javax/crypto/IllegalBlockSizeException
    //   1646	1655	3747	javax/crypto/BadPaddingException
    //   1646	1655	3739	java/lang/InterruptedException
    //   1646	1655	3731	java/lang/Exception
    //   1646	1655	2710	java/io/FileNotFoundException
    //   1646	1655	3367	finally
    //   1699	1705	1240	java/io/IOException
    //   1699	1705	2661	java/security/InvalidKeyException
    //   1699	1705	3168	javax/crypto/NoSuchPaddingException
    //   1699	1705	3771	java/security/NoSuchAlgorithmException
    //   1699	1705	3763	java/security/InvalidAlgorithmParameterException
    //   1699	1705	3755	javax/crypto/IllegalBlockSizeException
    //   1699	1705	3747	javax/crypto/BadPaddingException
    //   1699	1705	3739	java/lang/InterruptedException
    //   1699	1705	3731	java/lang/Exception
    //   1699	1705	2710	java/io/FileNotFoundException
    //   1699	1705	3367	finally
    //   1749	1756	1240	java/io/IOException
    //   1749	1756	2661	java/security/InvalidKeyException
    //   1749	1756	3168	javax/crypto/NoSuchPaddingException
    //   1749	1756	3771	java/security/NoSuchAlgorithmException
    //   1749	1756	3763	java/security/InvalidAlgorithmParameterException
    //   1749	1756	3755	javax/crypto/IllegalBlockSizeException
    //   1749	1756	3747	javax/crypto/BadPaddingException
    //   1749	1756	3739	java/lang/InterruptedException
    //   1749	1756	3731	java/lang/Exception
    //   1749	1756	2710	java/io/FileNotFoundException
    //   1749	1756	3367	finally
    //   1800	1826	1240	java/io/IOException
    //   1800	1826	2661	java/security/InvalidKeyException
    //   1800	1826	3168	javax/crypto/NoSuchPaddingException
    //   1800	1826	3771	java/security/NoSuchAlgorithmException
    //   1800	1826	3763	java/security/InvalidAlgorithmParameterException
    //   1800	1826	3755	javax/crypto/IllegalBlockSizeException
    //   1800	1826	3747	javax/crypto/BadPaddingException
    //   1800	1826	3739	java/lang/InterruptedException
    //   1800	1826	3731	java/lang/Exception
    //   1800	1826	2710	java/io/FileNotFoundException
    //   1800	1826	3367	finally
    //   1870	1897	1240	java/io/IOException
    //   1870	1897	2661	java/security/InvalidKeyException
    //   1870	1897	3168	javax/crypto/NoSuchPaddingException
    //   1870	1897	3771	java/security/NoSuchAlgorithmException
    //   1870	1897	3763	java/security/InvalidAlgorithmParameterException
    //   1870	1897	3755	javax/crypto/IllegalBlockSizeException
    //   1870	1897	3747	javax/crypto/BadPaddingException
    //   1870	1897	3739	java/lang/InterruptedException
    //   1870	1897	3731	java/lang/Exception
    //   1870	1897	2710	java/io/FileNotFoundException
    //   1870	1897	3367	finally
    //   1948	1953	1240	java/io/IOException
    //   1948	1953	2661	java/security/InvalidKeyException
    //   1948	1953	3168	javax/crypto/NoSuchPaddingException
    //   1948	1953	3771	java/security/NoSuchAlgorithmException
    //   1948	1953	3763	java/security/InvalidAlgorithmParameterException
    //   1948	1953	3755	javax/crypto/IllegalBlockSizeException
    //   1948	1953	3747	javax/crypto/BadPaddingException
    //   1948	1953	3739	java/lang/InterruptedException
    //   1948	1953	3731	java/lang/Exception
    //   1948	1953	2710	java/io/FileNotFoundException
    //   1948	1953	3367	finally
    //   1997	2002	1240	java/io/IOException
    //   1997	2002	2661	java/security/InvalidKeyException
    //   1997	2002	3168	javax/crypto/NoSuchPaddingException
    //   1997	2002	3771	java/security/NoSuchAlgorithmException
    //   1997	2002	3763	java/security/InvalidAlgorithmParameterException
    //   1997	2002	3755	javax/crypto/IllegalBlockSizeException
    //   1997	2002	3747	javax/crypto/BadPaddingException
    //   1997	2002	3739	java/lang/InterruptedException
    //   1997	2002	3731	java/lang/Exception
    //   1997	2002	2710	java/io/FileNotFoundException
    //   1997	2002	3367	finally
    //   2050	2057	1240	java/io/IOException
    //   2050	2057	2661	java/security/InvalidKeyException
    //   2050	2057	3168	javax/crypto/NoSuchPaddingException
    //   2050	2057	3771	java/security/NoSuchAlgorithmException
    //   2050	2057	3763	java/security/InvalidAlgorithmParameterException
    //   2050	2057	3755	javax/crypto/IllegalBlockSizeException
    //   2050	2057	3747	javax/crypto/BadPaddingException
    //   2050	2057	3739	java/lang/InterruptedException
    //   2050	2057	3731	java/lang/Exception
    //   2050	2057	2710	java/io/FileNotFoundException
    //   2050	2057	3367	finally
    //   2101	2107	1240	java/io/IOException
    //   2101	2107	2661	java/security/InvalidKeyException
    //   2101	2107	3168	javax/crypto/NoSuchPaddingException
    //   2101	2107	3771	java/security/NoSuchAlgorithmException
    //   2101	2107	3763	java/security/InvalidAlgorithmParameterException
    //   2101	2107	3755	javax/crypto/IllegalBlockSizeException
    //   2101	2107	3747	javax/crypto/BadPaddingException
    //   2101	2107	3739	java/lang/InterruptedException
    //   2101	2107	3731	java/lang/Exception
    //   2101	2107	2710	java/io/FileNotFoundException
    //   2101	2107	3367	finally
    //   2151	2197	1240	java/io/IOException
    //   2151	2197	2661	java/security/InvalidKeyException
    //   2151	2197	3168	javax/crypto/NoSuchPaddingException
    //   2151	2197	3771	java/security/NoSuchAlgorithmException
    //   2151	2197	3763	java/security/InvalidAlgorithmParameterException
    //   2151	2197	3755	javax/crypto/IllegalBlockSizeException
    //   2151	2197	3747	javax/crypto/BadPaddingException
    //   2151	2197	3739	java/lang/InterruptedException
    //   2151	2197	3731	java/lang/Exception
    //   2151	2197	2710	java/io/FileNotFoundException
    //   2151	2197	3367	finally
    //   2241	2250	1240	java/io/IOException
    //   2241	2250	2661	java/security/InvalidKeyException
    //   2241	2250	3168	javax/crypto/NoSuchPaddingException
    //   2241	2250	3771	java/security/NoSuchAlgorithmException
    //   2241	2250	3763	java/security/InvalidAlgorithmParameterException
    //   2241	2250	3755	javax/crypto/IllegalBlockSizeException
    //   2241	2250	3747	javax/crypto/BadPaddingException
    //   2241	2250	3739	java/lang/InterruptedException
    //   2241	2250	3731	java/lang/Exception
    //   2241	2250	2710	java/io/FileNotFoundException
    //   2241	2250	3367	finally
    //   2294	2304	1240	java/io/IOException
    //   2294	2304	2661	java/security/InvalidKeyException
    //   2294	2304	3168	javax/crypto/NoSuchPaddingException
    //   2294	2304	3771	java/security/NoSuchAlgorithmException
    //   2294	2304	3763	java/security/InvalidAlgorithmParameterException
    //   2294	2304	3755	javax/crypto/IllegalBlockSizeException
    //   2294	2304	3747	javax/crypto/BadPaddingException
    //   2294	2304	3739	java/lang/InterruptedException
    //   2294	2304	3731	java/lang/Exception
    //   2294	2304	2710	java/io/FileNotFoundException
    //   2294	2304	3367	finally
    //   2348	2356	1240	java/io/IOException
    //   2348	2356	2661	java/security/InvalidKeyException
    //   2348	2356	3168	javax/crypto/NoSuchPaddingException
    //   2348	2356	3771	java/security/NoSuchAlgorithmException
    //   2348	2356	3763	java/security/InvalidAlgorithmParameterException
    //   2348	2356	3755	javax/crypto/IllegalBlockSizeException
    //   2348	2356	3747	javax/crypto/BadPaddingException
    //   2348	2356	3739	java/lang/InterruptedException
    //   2348	2356	3731	java/lang/Exception
    //   2348	2356	2710	java/io/FileNotFoundException
    //   2348	2356	3367	finally
    //   2400	2405	1240	java/io/IOException
    //   2400	2405	2661	java/security/InvalidKeyException
    //   2400	2405	3168	javax/crypto/NoSuchPaddingException
    //   2400	2405	3771	java/security/NoSuchAlgorithmException
    //   2400	2405	3763	java/security/InvalidAlgorithmParameterException
    //   2400	2405	3755	javax/crypto/IllegalBlockSizeException
    //   2400	2405	3747	javax/crypto/BadPaddingException
    //   2400	2405	3739	java/lang/InterruptedException
    //   2400	2405	3731	java/lang/Exception
    //   2400	2405	2710	java/io/FileNotFoundException
    //   2400	2405	3367	finally
    //   2449	2454	1240	java/io/IOException
    //   2449	2454	2661	java/security/InvalidKeyException
    //   2449	2454	3168	javax/crypto/NoSuchPaddingException
    //   2449	2454	3771	java/security/NoSuchAlgorithmException
    //   2449	2454	3763	java/security/InvalidAlgorithmParameterException
    //   2449	2454	3755	javax/crypto/IllegalBlockSizeException
    //   2449	2454	3747	javax/crypto/BadPaddingException
    //   2449	2454	3739	java/lang/InterruptedException
    //   2449	2454	3731	java/lang/Exception
    //   2449	2454	2710	java/io/FileNotFoundException
    //   2449	2454	3367	finally
    //   2498	2503	1240	java/io/IOException
    //   2498	2503	2661	java/security/InvalidKeyException
    //   2498	2503	3168	javax/crypto/NoSuchPaddingException
    //   2498	2503	3771	java/security/NoSuchAlgorithmException
    //   2498	2503	3763	java/security/InvalidAlgorithmParameterException
    //   2498	2503	3755	javax/crypto/IllegalBlockSizeException
    //   2498	2503	3747	javax/crypto/BadPaddingException
    //   2498	2503	3739	java/lang/InterruptedException
    //   2498	2503	3731	java/lang/Exception
    //   2498	2503	2710	java/io/FileNotFoundException
    //   2498	2503	3367	finally
    //   2551	2556	1240	java/io/IOException
    //   2551	2556	2661	java/security/InvalidKeyException
    //   2551	2556	3168	javax/crypto/NoSuchPaddingException
    //   2551	2556	3771	java/security/NoSuchAlgorithmException
    //   2551	2556	3763	java/security/InvalidAlgorithmParameterException
    //   2551	2556	3755	javax/crypto/IllegalBlockSizeException
    //   2551	2556	3747	javax/crypto/BadPaddingException
    //   2551	2556	3739	java/lang/InterruptedException
    //   2551	2556	3731	java/lang/Exception
    //   2551	2556	2710	java/io/FileNotFoundException
    //   2551	2556	3367	finally
    //   2600	2605	1240	java/io/IOException
    //   2600	2605	2661	java/security/InvalidKeyException
    //   2600	2605	3168	javax/crypto/NoSuchPaddingException
    //   2600	2605	3771	java/security/NoSuchAlgorithmException
    //   2600	2605	3763	java/security/InvalidAlgorithmParameterException
    //   2600	2605	3755	javax/crypto/IllegalBlockSizeException
    //   2600	2605	3747	javax/crypto/BadPaddingException
    //   2600	2605	3739	java/lang/InterruptedException
    //   2600	2605	3731	java/lang/Exception
    //   2600	2605	2710	java/io/FileNotFoundException
    //   2600	2605	3367	finally
    //   2649	2658	1240	java/io/IOException
    //   2649	2658	2661	java/security/InvalidKeyException
    //   2649	2658	3168	javax/crypto/NoSuchPaddingException
    //   2649	2658	3771	java/security/NoSuchAlgorithmException
    //   2649	2658	3763	java/security/InvalidAlgorithmParameterException
    //   2649	2658	3755	javax/crypto/IllegalBlockSizeException
    //   2649	2658	3747	javax/crypto/BadPaddingException
    //   2649	2658	3739	java/lang/InterruptedException
    //   2649	2658	3731	java/lang/Exception
    //   2649	2658	2710	java/io/FileNotFoundException
    //   2649	2658	3367	finally
    //   2678	2707	2710	java/io/FileNotFoundException
    //   2678	2707	3217	java/lang/Exception
    //   2678	2707	3367	finally
    //   2715	2744	3367	finally
    //   2749	2754	2755	java/io/IOException
    //   2830	2839	1240	java/io/IOException
    //   2830	2839	2661	java/security/InvalidKeyException
    //   2830	2839	3168	javax/crypto/NoSuchPaddingException
    //   2830	2839	3771	java/security/NoSuchAlgorithmException
    //   2830	2839	3763	java/security/InvalidAlgorithmParameterException
    //   2830	2839	3755	javax/crypto/IllegalBlockSizeException
    //   2830	2839	3747	javax/crypto/BadPaddingException
    //   2830	2839	3739	java/lang/InterruptedException
    //   2830	2839	3731	java/lang/Exception
    //   2830	2839	2710	java/io/FileNotFoundException
    //   2830	2839	3367	finally
    //   2883	2891	1240	java/io/IOException
    //   2883	2891	2661	java/security/InvalidKeyException
    //   2883	2891	3168	javax/crypto/NoSuchPaddingException
    //   2883	2891	3771	java/security/NoSuchAlgorithmException
    //   2883	2891	3763	java/security/InvalidAlgorithmParameterException
    //   2883	2891	3755	javax/crypto/IllegalBlockSizeException
    //   2883	2891	3747	javax/crypto/BadPaddingException
    //   2883	2891	3739	java/lang/InterruptedException
    //   2883	2891	3731	java/lang/Exception
    //   2883	2891	2710	java/io/FileNotFoundException
    //   2883	2891	3367	finally
    //   2935	2943	1240	java/io/IOException
    //   2935	2943	2661	java/security/InvalidKeyException
    //   2935	2943	3168	javax/crypto/NoSuchPaddingException
    //   2935	2943	3771	java/security/NoSuchAlgorithmException
    //   2935	2943	3763	java/security/InvalidAlgorithmParameterException
    //   2935	2943	3755	javax/crypto/IllegalBlockSizeException
    //   2935	2943	3747	javax/crypto/BadPaddingException
    //   2935	2943	3739	java/lang/InterruptedException
    //   2935	2943	3731	java/lang/Exception
    //   2935	2943	2710	java/io/FileNotFoundException
    //   2935	2943	3367	finally
    //   2987	2992	1240	java/io/IOException
    //   2987	2992	2661	java/security/InvalidKeyException
    //   2987	2992	3168	javax/crypto/NoSuchPaddingException
    //   2987	2992	3771	java/security/NoSuchAlgorithmException
    //   2987	2992	3763	java/security/InvalidAlgorithmParameterException
    //   2987	2992	3755	javax/crypto/IllegalBlockSizeException
    //   2987	2992	3747	javax/crypto/BadPaddingException
    //   2987	2992	3739	java/lang/InterruptedException
    //   2987	2992	3731	java/lang/Exception
    //   2987	2992	2710	java/io/FileNotFoundException
    //   2987	2992	3367	finally
    //   3036	3042	1240	java/io/IOException
    //   3036	3042	2661	java/security/InvalidKeyException
    //   3036	3042	3168	javax/crypto/NoSuchPaddingException
    //   3036	3042	3771	java/security/NoSuchAlgorithmException
    //   3036	3042	3763	java/security/InvalidAlgorithmParameterException
    //   3036	3042	3755	javax/crypto/IllegalBlockSizeException
    //   3036	3042	3747	javax/crypto/BadPaddingException
    //   3036	3042	3739	java/lang/InterruptedException
    //   3036	3042	3731	java/lang/Exception
    //   3036	3042	2710	java/io/FileNotFoundException
    //   3036	3042	3367	finally
    //   3086	3091	1240	java/io/IOException
    //   3086	3091	2661	java/security/InvalidKeyException
    //   3086	3091	3168	javax/crypto/NoSuchPaddingException
    //   3086	3091	3771	java/security/NoSuchAlgorithmException
    //   3086	3091	3763	java/security/InvalidAlgorithmParameterException
    //   3086	3091	3755	javax/crypto/IllegalBlockSizeException
    //   3086	3091	3747	javax/crypto/BadPaddingException
    //   3086	3091	3739	java/lang/InterruptedException
    //   3086	3091	3731	java/lang/Exception
    //   3086	3091	2710	java/io/FileNotFoundException
    //   3086	3091	3367	finally
    //   3135	3161	1240	java/io/IOException
    //   3135	3161	2661	java/security/InvalidKeyException
    //   3135	3161	3168	javax/crypto/NoSuchPaddingException
    //   3135	3161	3771	java/security/NoSuchAlgorithmException
    //   3135	3161	3763	java/security/InvalidAlgorithmParameterException
    //   3135	3161	3755	javax/crypto/IllegalBlockSizeException
    //   3135	3161	3747	javax/crypto/BadPaddingException
    //   3135	3161	3739	java/lang/InterruptedException
    //   3135	3161	3731	java/lang/Exception
    //   3135	3161	2710	java/io/FileNotFoundException
    //   3135	3161	3367	finally
    //   3185	3214	2710	java/io/FileNotFoundException
    //   3185	3214	3217	java/lang/Exception
    //   3185	3214	3367	finally
    //   3222	3232	3367	finally
    //   3237	3242	3243	java/io/IOException
    //   3274	3319	1346	java/io/IOException
    //   3274	3319	3783	java/security/InvalidKeyException
    //   3274	3319	3779	javax/crypto/NoSuchPaddingException
    //   3274	3319	3322	java/security/NoSuchAlgorithmException
    //   3274	3319	3380	java/security/InvalidAlgorithmParameterException
    //   3274	3319	3787	javax/crypto/IllegalBlockSizeException
    //   3274	3319	3791	javax/crypto/BadPaddingException
    //   3274	3319	3795	java/lang/InterruptedException
    //   3274	3319	3799	java/lang/Exception
    //   3274	3319	3723	java/io/FileNotFoundException
    //   3274	3319	3707	finally
    //   3335	3364	2710	java/io/FileNotFoundException
    //   3335	3364	3217	java/lang/Exception
    //   3335	3364	3367	finally
    //   3373	3378	3613	java/io/IOException
    //   3393	3422	2710	java/io/FileNotFoundException
    //   3393	3422	3217	java/lang/Exception
    //   3393	3422	3367	finally
    //   3437	3466	2710	java/io/FileNotFoundException
    //   3437	3466	3217	java/lang/Exception
    //   3437	3466	3367	finally
    //   3481	3510	2710	java/io/FileNotFoundException
    //   3481	3510	3217	java/lang/Exception
    //   3481	3510	3367	finally
    //   3525	3554	2710	java/io/FileNotFoundException
    //   3525	3554	3217	java/lang/Exception
    //   3525	3554	3367	finally
    //   3569	3579	2710	java/io/FileNotFoundException
    //   3569	3579	3217	java/lang/Exception
    //   3569	3579	3367	finally
  }
  
  private void j(ard paramard) {
    if (!ase.f(paramard.r()))
      paramard.b(ase.e("Chat indisponível, por favor, reconecte")); 
  }
  
  public arc a(ark paramark) {
    Log.d("[ChatServiceImpl]", "receiveManagerData ".concat("init"));
    if (paramark != null && ase.b(paramark.g()))
      paramark.a(new arh()); 
    Log.d("[ChatServiceImpl]", "receiveManagerData ".concat("end"));
    return null;
  }
  
  public ard a(ard paramard) {
    // Byte code:
    //   0: ldc '[ChatServiceImpl]'
    //   2: ldc_w 'checkChatPermission '
    //   5: ldc_w 'init'
    //   8: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   11: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   14: pop
    //   15: getstatic ary.f : Lapw;
    //   18: ifnull -> 37
    //   21: getstatic ary.f : Lapw;
    //   24: getstatic apw.Indisponivel : Lapw;
    //   27: if_acmpeq -> 37
    //   30: aload_1
    //   31: invokevirtual S : ()Z
    //   34: ifne -> 782
    //   37: ldc '[ChatServiceImpl]'
    //   39: ldc_w 'checkChatPermission from '
    //   42: ldc_w 'request'
    //   45: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   48: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   51: pop
    //   52: aload_1
    //   53: getstatic apw.Indisponivel : Lapw;
    //   56: invokevirtual a : (Lapw;)V
    //   59: aload_1
    //   60: invokevirtual D : ()Larb;
    //   63: ifnull -> 770
    //   66: aconst_null
    //   67: astore #6
    //   69: aconst_null
    //   70: astore #5
    //   72: aload #5
    //   74: astore #4
    //   76: aload #6
    //   78: astore_3
    //   79: ldc_w '/chat/reasons/{reason}/permissions?app={app}'
    //   82: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   85: aload_1
    //   86: invokestatic a : (Ljava/lang/String;Lard;)Ljava/lang/String;
    //   89: astore #7
    //   91: aload #5
    //   93: astore #4
    //   95: aload #6
    //   97: astore_3
    //   98: aload_1
    //   99: invokevirtual D : ()Larb;
    //   102: invokevirtual a : ()Ljava/lang/String;
    //   105: astore #8
    //   107: aload #5
    //   109: astore #4
    //   111: aload #6
    //   113: astore_3
    //   114: aload #8
    //   116: invokestatic b : (Ljava/lang/String;)Z
    //   119: ifeq -> 206
    //   122: aload #5
    //   124: astore #4
    //   126: aload #6
    //   128: astore_3
    //   129: new java/security/InvalidKeyException
    //   132: dup
    //   133: ldc_w 'External App getToken() implementation checkChatPermission return Null or Empty value'
    //   136: invokespecial <init> : (Ljava/lang/String;)V
    //   139: athrow
    //   140: astore #5
    //   142: aload #4
    //   144: astore_3
    //   145: ldc '[ChatServiceImpl]'
    //   147: ldc_w 'checkChatPermission error '
    //   150: aload #5
    //   152: invokevirtual getMessage : ()Ljava/lang/String;
    //   155: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   158: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   161: aload #5
    //   163: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   166: pop
    //   167: aload #4
    //   169: astore_3
    //   170: new aqd
    //   173: dup
    //   174: ldc_w '999'
    //   177: ldc_w 'checkChatPermission error'
    //   180: aload #5
    //   182: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   185: athrow
    //   186: astore #4
    //   188: aload_3
    //   189: ifnull -> 196
    //   192: aload_3
    //   193: invokevirtual disconnect : ()V
    //   196: aload_1
    //   197: invokevirtual D : ()Larb;
    //   200: invokevirtual b : ()V
    //   203: aload #4
    //   205: athrow
    //   206: aload #5
    //   208: astore #4
    //   210: aload #6
    //   212: astore_3
    //   213: ldc '[ChatServiceImpl]'
    //   215: new java/lang/StringBuilder
    //   218: dup
    //   219: invokespecial <init> : ()V
    //   222: ldc_w 'checkChatPermission getToken: '
    //   225: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: aload #8
    //   230: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: invokevirtual toString : ()Ljava/lang/String;
    //   236: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   239: pop
    //   240: aload #5
    //   242: astore #4
    //   244: aload #6
    //   246: astore_3
    //   247: aload #7
    //   249: getstatic apz.GET : Lapz;
    //   252: aload #8
    //   254: aload_0
    //   255: getfield g : I
    //   258: getstatic ary.b : Ljava/io/InputStream;
    //   261: invokestatic a : (Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;)Ljava/net/HttpURLConnection;
    //   264: astore #5
    //   266: aload #5
    //   268: astore #4
    //   270: aload #5
    //   272: astore_3
    //   273: aload #5
    //   275: ldc_w 'v'
    //   278: ldc_w '2.1.8'
    //   281: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   284: aload #5
    //   286: astore #4
    //   288: aload #5
    //   290: astore_3
    //   291: ldc '[ChatServiceImpl]'
    //   293: ldc_w 'CHAT VERSION: 2.1.8'
    //   296: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   299: pop
    //   300: aload #5
    //   302: ifnull -> 678
    //   305: aload #5
    //   307: astore #4
    //   309: aload #5
    //   311: astore_3
    //   312: aload #5
    //   314: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   317: istore_2
    //   318: aload #5
    //   320: astore #4
    //   322: aload #5
    //   324: astore_3
    //   325: aload_0
    //   326: aload #5
    //   328: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   331: astore #6
    //   333: aload #5
    //   335: astore #4
    //   337: aload #5
    //   339: astore_3
    //   340: aload_1
    //   341: iload_2
    //   342: invokevirtual a : (I)V
    //   345: aload #5
    //   347: astore #4
    //   349: aload #5
    //   351: astore_3
    //   352: ldc '[ChatServiceImpl]'
    //   354: ldc_w 'checkChatPermission '
    //   357: aload #6
    //   359: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   362: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   365: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   368: pop
    //   369: iload_2
    //   370: sipush #200
    //   373: if_icmpne -> 566
    //   376: aload #5
    //   378: astore #4
    //   380: aload #5
    //   382: astore_3
    //   383: ldc_w 'status'
    //   386: aload #6
    //   388: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   391: astore #7
    //   393: aload #5
    //   395: astore #4
    //   397: aload #5
    //   399: astore_3
    //   400: aload_1
    //   401: aload #7
    //   403: invokestatic fromString : (Ljava/lang/String;)Lapw;
    //   406: invokevirtual a : (Lapw;)V
    //   409: aload #5
    //   411: astore #4
    //   413: aload #5
    //   415: astore_3
    //   416: aload #7
    //   418: invokestatic fromString : (Ljava/lang/String;)Lapw;
    //   421: putstatic ary.f : Lapw;
    //   424: aload #5
    //   426: astore #4
    //   428: aload #5
    //   430: astore_3
    //   431: aload_1
    //   432: invokevirtual q : ()Lapw;
    //   435: getstatic apw.Disponivel : Lapw;
    //   438: if_acmpeq -> 458
    //   441: aload #5
    //   443: astore #4
    //   445: aload #5
    //   447: astore_3
    //   448: aload_1
    //   449: invokevirtual q : ()Lapw;
    //   452: getstatic apw.Indisponivel : Lapw;
    //   455: if_acmpne -> 503
    //   458: aload #5
    //   460: astore #4
    //   462: aload #5
    //   464: astore_3
    //   465: aload_1
    //   466: invokevirtual w : ()V
    //   469: aload #5
    //   471: ifnull -> 479
    //   474: aload #5
    //   476: invokevirtual disconnect : ()V
    //   479: aload_1
    //   480: invokevirtual D : ()Larb;
    //   483: invokevirtual b : ()V
    //   486: ldc '[ChatServiceImpl]'
    //   488: ldc_w 'checkChatPermission '
    //   491: ldc_w 'end'
    //   494: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   497: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   500: pop
    //   501: aload_1
    //   502: areturn
    //   503: aload #5
    //   505: astore #4
    //   507: aload #5
    //   509: astore_3
    //   510: ldc_w 'msg'
    //   513: aload #6
    //   515: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   518: astore #7
    //   520: aload #5
    //   522: astore #4
    //   524: aload #5
    //   526: astore_3
    //   527: ldc_w 'title'
    //   530: aload #6
    //   532: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   535: pop
    //   536: aload #5
    //   538: astore #4
    //   540: aload #5
    //   542: astore_3
    //   543: aload_1
    //   544: aload #7
    //   546: invokevirtual b : (Ljava/lang/String;)V
    //   549: aload #5
    //   551: astore #4
    //   553: aload #5
    //   555: astore_3
    //   556: aload_1
    //   557: sipush #999
    //   560: invokevirtual b : (I)V
    //   563: goto -> 469
    //   566: aload #5
    //   568: astore #4
    //   570: aload #5
    //   572: astore_3
    //   573: ldc '[ChatServiceImpl]'
    //   575: new java/lang/StringBuilder
    //   578: dup
    //   579: invokespecial <init> : ()V
    //   582: ldc_w 'checkChatPermission error server connection failed, status code: '
    //   585: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: iload_2
    //   589: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   592: invokevirtual toString : ()Ljava/lang/String;
    //   595: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   598: pop
    //   599: aload #5
    //   601: astore #4
    //   603: aload #5
    //   605: astore_3
    //   606: aload_1
    //   607: iload_2
    //   608: invokevirtual b : (I)V
    //   611: aload #5
    //   613: astore #4
    //   615: aload #5
    //   617: astore_3
    //   618: aload_1
    //   619: new java/lang/StringBuilder
    //   622: dup
    //   623: invokespecial <init> : ()V
    //   626: ldc_w 'Server connection failed, status code: '
    //   629: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   632: iload_2
    //   633: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   636: invokevirtual toString : ()Ljava/lang/String;
    //   639: invokevirtual b : (Ljava/lang/String;)V
    //   642: aload #5
    //   644: astore #4
    //   646: aload #5
    //   648: astore_3
    //   649: aload_1
    //   650: aload_0
    //   651: aload #5
    //   653: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   656: invokevirtual e : (Ljava/lang/String;)V
    //   659: aload #5
    //   661: astore #4
    //   663: aload #5
    //   665: astore_3
    //   666: new asc
    //   669: dup
    //   670: aload_0
    //   671: invokespecial <init> : (Lary;)V
    //   674: pop
    //   675: goto -> 469
    //   678: aload #5
    //   680: astore #4
    //   682: aload #5
    //   684: astore_3
    //   685: new java/lang/Exception
    //   688: dup
    //   689: ldc_w 'checkChatPermission error httpURLConnection is null'
    //   692: invokespecial <init> : (Ljava/lang/String;)V
    //   695: athrow
    //   696: astore_3
    //   697: ldc '[ChatServiceImpl]'
    //   699: ldc_w 'checkChatPermission httpURLConnection.disconnect();'
    //   702: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   705: pop
    //   706: goto -> 479
    //   709: astore_3
    //   710: ldc '[ChatServiceImpl]'
    //   712: ldc_w 'checkChatPermission error chatBase.getChatSessionToken().refreshTokenTransacao() '
    //   715: aload_3
    //   716: invokevirtual getMessage : ()Ljava/lang/String;
    //   719: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   722: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   725: aload_3
    //   726: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   729: pop
    //   730: goto -> 486
    //   733: astore_3
    //   734: ldc '[ChatServiceImpl]'
    //   736: ldc_w 'checkChatPermission httpURLConnection.disconnect();'
    //   739: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   742: pop
    //   743: goto -> 196
    //   746: astore_1
    //   747: ldc '[ChatServiceImpl]'
    //   749: ldc_w 'checkChatPermission error chatBase.getChatSessionToken().refreshTokenTransacao() '
    //   752: aload_1
    //   753: invokevirtual getMessage : ()Ljava/lang/String;
    //   756: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   759: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   762: aload_1
    //   763: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   766: pop
    //   767: goto -> 203
    //   770: ldc '[ChatServiceImpl]'
    //   772: ldc_w 'checkChatPermission chatBase.getChatSessionToken() == null '
    //   775: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   778: pop
    //   779: goto -> 486
    //   782: ldc '[ChatServiceImpl]'
    //   784: ldc_w 'checkChatPermission from '
    //   787: ldc_w 'cache'
    //   790: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   793: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   796: pop
    //   797: aload_1
    //   798: getstatic ary.f : Lapw;
    //   801: invokevirtual a : (Lapw;)V
    //   804: goto -> 486
    // Exception table:
    //   from	to	target	type
    //   79	91	140	java/lang/Exception
    //   79	91	186	finally
    //   98	107	140	java/lang/Exception
    //   98	107	186	finally
    //   114	122	140	java/lang/Exception
    //   114	122	186	finally
    //   129	140	140	java/lang/Exception
    //   129	140	186	finally
    //   145	167	186	finally
    //   170	186	186	finally
    //   192	196	733	java/lang/Exception
    //   196	203	746	java/lang/Exception
    //   213	240	140	java/lang/Exception
    //   213	240	186	finally
    //   247	266	140	java/lang/Exception
    //   247	266	186	finally
    //   273	284	140	java/lang/Exception
    //   273	284	186	finally
    //   291	300	140	java/lang/Exception
    //   291	300	186	finally
    //   312	318	140	java/lang/Exception
    //   312	318	186	finally
    //   325	333	140	java/lang/Exception
    //   325	333	186	finally
    //   340	345	140	java/lang/Exception
    //   340	345	186	finally
    //   352	369	140	java/lang/Exception
    //   352	369	186	finally
    //   383	393	140	java/lang/Exception
    //   383	393	186	finally
    //   400	409	140	java/lang/Exception
    //   400	409	186	finally
    //   416	424	140	java/lang/Exception
    //   416	424	186	finally
    //   431	441	140	java/lang/Exception
    //   431	441	186	finally
    //   448	458	140	java/lang/Exception
    //   448	458	186	finally
    //   465	469	140	java/lang/Exception
    //   465	469	186	finally
    //   474	479	696	java/lang/Exception
    //   479	486	709	java/lang/Exception
    //   510	520	140	java/lang/Exception
    //   510	520	186	finally
    //   527	536	140	java/lang/Exception
    //   527	536	186	finally
    //   543	549	140	java/lang/Exception
    //   543	549	186	finally
    //   556	563	140	java/lang/Exception
    //   556	563	186	finally
    //   573	599	140	java/lang/Exception
    //   573	599	186	finally
    //   606	611	140	java/lang/Exception
    //   606	611	186	finally
    //   618	642	140	java/lang/Exception
    //   618	642	186	finally
    //   649	659	140	java/lang/Exception
    //   649	659	186	finally
    //   666	675	140	java/lang/Exception
    //   666	675	186	finally
    //   685	696	140	java/lang/Exception
    //   685	696	186	finally
  }
  
  public ari a(arj paramarj) {
    // Byte code:
    //   0: ldc '[ChatServiceImpl]'
    //   2: ldc_w 'requestFileToken '
    //   5: ldc_w 'init'
    //   8: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   11: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   14: pop
    //   15: invokestatic a : ()Lard;
    //   18: invokevirtual f : ()Z
    //   21: ifeq -> 702
    //   24: aload_1
    //   25: ifnull -> 546
    //   28: aload_1
    //   29: invokevirtual c : ()Ljava/io/File;
    //   32: ifnull -> 546
    //   35: ldc_w '/chat/sessions/transcript'
    //   38: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   41: astore #5
    //   43: ldc_w '{"event" : "{event}", "fileName" : "{fileName}", "fileSize" : "{fileSize}" }'
    //   46: ldc_w '{event}'
    //   49: getstatic apy.FileTransferRequest : Lapy;
    //   52: invokevirtual getValue : ()Ljava/lang/String;
    //   55: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   58: ldc_w '{fileName}'
    //   61: invokestatic a : ()Lars;
    //   64: aload_1
    //   65: invokevirtual c : ()Ljava/io/File;
    //   68: invokevirtual getName : ()Ljava/lang/String;
    //   71: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   74: invokevirtual trim : ()Ljava/lang/String;
    //   77: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   80: ldc_w '{fileSize}'
    //   83: invokestatic a : ()Lars;
    //   86: aload_1
    //   87: invokevirtual t : ()Ljava/lang/String;
    //   90: invokevirtual trim : ()Ljava/lang/String;
    //   93: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   96: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   99: astore #6
    //   101: new java/lang/StringBuilder
    //   104: dup
    //   105: invokespecial <init> : ()V
    //   108: ldc_w '/chat/sessions/transcript'
    //   111: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokestatic a : ()Lard;
    //   117: invokevirtual j : ()Ljava/lang/String;
    //   120: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: aload #6
    //   125: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual toString : ()Ljava/lang/String;
    //   131: invokestatic a : ()Lard;
    //   134: invokevirtual E : ()Ljava/lang/String;
    //   137: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   140: astore_3
    //   141: aload #5
    //   143: getstatic apz.POST : Lapz;
    //   146: aconst_null
    //   147: aload_0
    //   148: getfield g : I
    //   151: getstatic ary.b : Ljava/io/InputStream;
    //   154: aconst_null
    //   155: aload_3
    //   156: iconst_1
    //   157: invokestatic a : ()Lard;
    //   160: invokevirtual j : ()Ljava/lang/String;
    //   163: iconst_0
    //   164: invokestatic a : (Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    //   167: astore #4
    //   169: aload #4
    //   171: ifnull -> 563
    //   174: aload #4
    //   176: astore_3
    //   177: aload #4
    //   179: invokestatic connect : (Ljava/net/HttpURLConnection;)V
    //   182: aload #4
    //   184: astore_3
    //   185: aload #6
    //   187: aload #4
    //   189: invokestatic a : (Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    //   192: aload #4
    //   194: astore_3
    //   195: aload #4
    //   197: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   200: istore_2
    //   201: aload #4
    //   203: astore_3
    //   204: aload_0
    //   205: aload #4
    //   207: new java/lang/StringBuilder
    //   210: dup
    //   211: invokespecial <init> : ()V
    //   214: ldc_w 'requestFileToken: '
    //   217: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: aload #5
    //   222: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: invokevirtual toString : ()Ljava/lang/String;
    //   228: invokespecial a : (Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    //   231: astore #6
    //   233: iload_2
    //   234: sipush #201
    //   237: if_icmpne -> 373
    //   240: aload #4
    //   242: astore_3
    //   243: ldc_w 'event'
    //   246: aload #6
    //   248: iconst_0
    //   249: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   252: invokestatic b : (Ljava/lang/Object;)Lapy;
    //   255: astore #5
    //   257: aload #4
    //   259: astore_3
    //   260: ldc_w 'fileToken'
    //   263: aload #6
    //   265: iconst_0
    //   266: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   269: invokestatic d : (Ljava/lang/Object;)Ljava/lang/String;
    //   272: astore #6
    //   274: aload #4
    //   276: astore_3
    //   277: aload_1
    //   278: aload #5
    //   280: invokevirtual a : (Lapy;)V
    //   283: aload #4
    //   285: astore_3
    //   286: aload_1
    //   287: new ari
    //   290: dup
    //   291: aload #6
    //   293: invokespecial <init> : (Ljava/lang/String;)V
    //   296: invokevirtual a : (Lari;)V
    //   299: aload #4
    //   301: astore_3
    //   302: aload #4
    //   304: ldc_w 'ResponseSignature'
    //   307: invokestatic a : (Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    //   310: pop
    //   311: aload #4
    //   313: astore_3
    //   314: ldc '[ChatServiceImpl]'
    //   316: new java/lang/StringBuilder
    //   319: dup
    //   320: invokespecial <init> : ()V
    //   323: ldc_w 'requestFileToken: '
    //   326: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: aload #6
    //   331: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: invokevirtual toString : ()Ljava/lang/String;
    //   337: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   340: pop
    //   341: aload #4
    //   343: astore_3
    //   344: aload_1
    //   345: invokevirtual p : ()Lari;
    //   348: astore_1
    //   349: aload #4
    //   351: ifnull -> 359
    //   354: aload #4
    //   356: invokevirtual disconnect : ()V
    //   359: aload_1
    //   360: areturn
    //   361: astore_3
    //   362: ldc '[ChatServiceImpl]'
    //   364: ldc_w 'startChatSession httpURLConnection.disconnect();'
    //   367: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   370: pop
    //   371: aload_1
    //   372: areturn
    //   373: aload #4
    //   375: astore_3
    //   376: invokestatic a : ()Lard;
    //   379: iload_2
    //   380: invokevirtual b : (I)V
    //   383: aload #4
    //   385: astore_3
    //   386: invokestatic a : ()Lard;
    //   389: new java/lang/StringBuilder
    //   392: dup
    //   393: invokespecial <init> : ()V
    //   396: ldc_w 'Server connection failed, status code: '
    //   399: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   402: iload_2
    //   403: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   406: invokevirtual toString : ()Ljava/lang/String;
    //   409: invokevirtual b : (Ljava/lang/String;)V
    //   412: aload #4
    //   414: astore_3
    //   415: invokestatic a : ()Lard;
    //   418: aload_0
    //   419: aload #4
    //   421: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   424: invokevirtual e : (Ljava/lang/String;)V
    //   427: aload #4
    //   429: astore_3
    //   430: ldc '[ChatServiceImpl]'
    //   432: new java/lang/StringBuilder
    //   435: dup
    //   436: invokespecial <init> : ()V
    //   439: ldc_w 'requestFileToken '
    //   442: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: invokestatic a : ()Lard;
    //   448: invokevirtual l : ()Ljava/lang/String;
    //   451: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: invokevirtual toString : ()Ljava/lang/String;
    //   457: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   460: pop
    //   461: aload #4
    //   463: astore_3
    //   464: new asc
    //   467: dup
    //   468: aload_0
    //   469: invokespecial <init> : (Lary;)V
    //   472: pop
    //   473: aload #4
    //   475: astore_3
    //   476: new arh
    //   479: dup
    //   480: invokespecial <init> : ()V
    //   483: astore #5
    //   485: aload #4
    //   487: astore_3
    //   488: aload #5
    //   490: sipush #999
    //   493: invokevirtual a : (I)V
    //   496: aload #4
    //   498: astore_3
    //   499: aload #5
    //   501: ldc_w 'Falha ao enviar arquivo'
    //   504: invokevirtual a : (Ljava/lang/String;)V
    //   507: aload #4
    //   509: astore_3
    //   510: aload_1
    //   511: aload #5
    //   513: invokevirtual a : (Larh;)V
    //   516: aload #4
    //   518: astore_3
    //   519: aload_1
    //   520: iconst_1
    //   521: invokevirtual i : (Z)V
    //   524: aload #4
    //   526: astore_3
    //   527: ldc '[ChatServiceImpl]'
    //   529: ldc_w 'Erro ao solicitar ticket '
    //   532: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   535: pop
    //   536: aload #4
    //   538: ifnull -> 546
    //   541: aload #4
    //   543: invokevirtual disconnect : ()V
    //   546: ldc '[ChatServiceImpl]'
    //   548: ldc_w 'requestFileToken '
    //   551: ldc_w 'end'
    //   554: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   557: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   560: pop
    //   561: aconst_null
    //   562: areturn
    //   563: aload #4
    //   565: astore_3
    //   566: new java/lang/Exception
    //   569: dup
    //   570: ldc_w 'requestFileToken error httpURLConnection is null'
    //   573: invokespecial <init> : (Ljava/lang/String;)V
    //   576: athrow
    //   577: astore_1
    //   578: aload #4
    //   580: astore_3
    //   581: aload_1
    //   582: invokevirtual getMessage : ()Ljava/lang/String;
    //   585: ifnull -> 663
    //   588: aload #4
    //   590: astore_3
    //   591: ldc '[ChatServiceImpl]'
    //   593: new java/lang/StringBuilder
    //   596: dup
    //   597: invokespecial <init> : ()V
    //   600: ldc_w 'requestFileToken error '
    //   603: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   606: aload_1
    //   607: invokevirtual getMessage : ()Ljava/lang/String;
    //   610: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   613: invokevirtual toString : ()Ljava/lang/String;
    //   616: aload_1
    //   617: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   620: pop
    //   621: aload #4
    //   623: astore_3
    //   624: new aqd
    //   627: dup
    //   628: ldc_w '999'
    //   631: ldc_w 'requestFileToken error'
    //   634: aload_1
    //   635: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   638: athrow
    //   639: astore_1
    //   640: aload_3
    //   641: ifnull -> 648
    //   644: aload_3
    //   645: invokevirtual disconnect : ()V
    //   648: aload_1
    //   649: athrow
    //   650: astore_1
    //   651: ldc '[ChatServiceImpl]'
    //   653: ldc_w 'startChatSession httpURLConnection.disconnect();'
    //   656: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   659: pop
    //   660: goto -> 546
    //   663: aload #4
    //   665: ifnull -> 546
    //   668: aload #4
    //   670: invokevirtual disconnect : ()V
    //   673: goto -> 546
    //   676: astore_1
    //   677: ldc '[ChatServiceImpl]'
    //   679: ldc_w 'startChatSession httpURLConnection.disconnect();'
    //   682: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   685: pop
    //   686: goto -> 546
    //   689: astore_3
    //   690: ldc '[ChatServiceImpl]'
    //   692: ldc_w 'startChatSession httpURLConnection.disconnect();'
    //   695: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   698: pop
    //   699: goto -> 648
    //   702: ldc '[ChatServiceImpl]'
    //   704: ldc_w 'requestFileToken invalidSession'
    //   707: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   710: pop
    //   711: goto -> 546
    //   714: astore_1
    //   715: aconst_null
    //   716: astore_3
    //   717: goto -> 640
    //   720: astore_1
    //   721: aconst_null
    //   722: astore #4
    //   724: goto -> 578
    // Exception table:
    //   from	to	target	type
    //   35	169	720	java/lang/Exception
    //   35	169	714	finally
    //   177	182	577	java/lang/Exception
    //   177	182	639	finally
    //   185	192	577	java/lang/Exception
    //   185	192	639	finally
    //   195	201	577	java/lang/Exception
    //   195	201	639	finally
    //   204	233	577	java/lang/Exception
    //   204	233	639	finally
    //   243	257	577	java/lang/Exception
    //   243	257	639	finally
    //   260	274	577	java/lang/Exception
    //   260	274	639	finally
    //   277	283	577	java/lang/Exception
    //   277	283	639	finally
    //   286	299	577	java/lang/Exception
    //   286	299	639	finally
    //   302	311	577	java/lang/Exception
    //   302	311	639	finally
    //   314	341	577	java/lang/Exception
    //   314	341	639	finally
    //   344	349	577	java/lang/Exception
    //   344	349	639	finally
    //   354	359	361	java/lang/Exception
    //   376	383	577	java/lang/Exception
    //   376	383	639	finally
    //   386	412	577	java/lang/Exception
    //   386	412	639	finally
    //   415	427	577	java/lang/Exception
    //   415	427	639	finally
    //   430	461	577	java/lang/Exception
    //   430	461	639	finally
    //   464	473	577	java/lang/Exception
    //   464	473	639	finally
    //   476	485	577	java/lang/Exception
    //   476	485	639	finally
    //   488	496	577	java/lang/Exception
    //   488	496	639	finally
    //   499	507	577	java/lang/Exception
    //   499	507	639	finally
    //   510	516	577	java/lang/Exception
    //   510	516	639	finally
    //   519	524	577	java/lang/Exception
    //   519	524	639	finally
    //   527	536	577	java/lang/Exception
    //   527	536	639	finally
    //   541	546	650	java/lang/Exception
    //   566	577	577	java/lang/Exception
    //   566	577	639	finally
    //   581	588	639	finally
    //   591	621	639	finally
    //   624	639	639	finally
    //   644	648	689	java/lang/Exception
    //   668	673	676	java/lang/Exception
  }
  
  public void a() {
    f = null;
  }
  
  public void a(arj paramarj, boolean paramBoolean) {
    Log.d("[ChatServiceImpl]", "Log 1 - downloadFile init");
    ari ari2 = null;
    paramarj.e(false);
    paramarj.b(false);
    paramarj.g(true);
    paramarj.h(true);
    paramarj.i(false);
    ari ari1 = ari2;
    try {
      Log.d("[ChatServiceImpl]", "Log 2 - inicio da solicitacao token de arquivo");
      ari1 = ari2;
      ari2 = a(paramarj);
      ari1 = ari2;
      if (ari2.c() != null) {
        ari1 = ari2;
        paramarj.a(ari2);
        ari1 = ari2;
      } else {
        ari1 = ari2;
        paramarj.i(true);
        return;
      } 
    } catch (Exception exception) {
      paramarj.i(true);
      Log.d("[ChatServiceImpl]", "Log 2 - Ocorreu um erro na requisicao do file token. " + exception.getMessage());
    } 
    if (ari1 != null) {
      String str2 = ard.a().j();
      Log.d("[ChatServiceImpl]", "Log 3 - downloadFile - chatSessionId : " + str2);
      String str1 = ars.a().c(paramarj.a());
      String str3 = ars.a().b(str1);
      Log.d("[ChatServiceImpl]", "Log 4 - downloadFile - fileIdReceived  : " + paramarj.a());
      Log.d("[ChatServiceImpl]", "Log 4 - downloadFile - fileIdDecrypted : " + str1);
      Log.d("[ChatServiceImpl]", "Log 4 - downloadFile - fileIdEncrypted : " + str3);
      if (!paramBoolean) {
        str1 = a("/chatfile/sessions/file/{fileToken}");
      } else {
        str1 = a("/chatfile/sessions/file/thumbnail/{fileToken}");
      } 
      String str4 = ase.a(str1, ard.a()).replace("{fileToken}", paramarj.p().c());
      Log.d("[ChatServiceImpl]", "Log 5 - downloadFile - url: " + str4);
      String str5 = ard.a().E();
      Log.d("[ChatServiceImpl]", "Log 6 - downloadFile - signatureKey: " + str5);
      Log.d("[ChatServiceImpl]", "Log 7 - downloadFile - signatureParam ");
      str5 = ase.b(str1 + str2, str5);
      try {
        Log.d("[ChatServiceImpl]", "Log 8 - downloadFile - conexao");
        HttpURLConnection httpURLConnection = ash.a(str4, b);
        httpURLConnection.setConnectTimeout(30000);
        if (this.g > 0) {
          httpURLConnection.setReadTimeout(this.g);
        } else {
          httpURLConnection.setReadTimeout(15000);
        } 
        Log.d("[ChatServiceImpl]", "Log 9 - downloadFile - set dos parametros da conexao");
        httpURLConnection.setRequestMethod(apz.GET.toString());
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        httpURLConnection.setRequestProperty("FileId", str3);
        httpURLConnection.setRequestProperty("ChatSessionId", str2);
        httpURLConnection.setRequestProperty("RequestSignature", str5);
        try {
          int i = CaMDOHTTPClient.getResponseCode(httpURLConnection);
          Log.d("[ChatServiceImpl]", "Log 10 - downloadFile - httpCode: " + i);
          Log.d("[ChatServiceImpl]", "Log 10 - download - httpMsg: " + httpURLConnection.getResponseMessage());
          if (i == 200) {
            Log.d("[ChatServiceImpl]", "Log 11 - 1");
            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream(), 8192);
            Log.d("[ChatServiceImpl]", "Log 11 - 2");
            str2 = paramarj.c().getPath();
            Log.d("[ChatServiceImpl]", "Log 11 - 3");
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] arrayOfByte = new byte[1024];
            paramarj.a(0);
            i = httpURLConnection.getContentLength();
            Log.d("[ChatServiceImpl]", "Log 11 - available to download: " + i);
            while (true) {
              int j = bufferedInputStream.read(arrayOfByte);
              if (-1 != j) {
                if (!paramarj.l()) {
                  byteArrayOutputStream.write(arrayOfByte, 0, j);
                  paramarj.a((byteArrayOutputStream.toByteArray()).length * 100 / i);
                  paramarj.h(true);
                  continue;
                } 
                Log.d("[ChatServiceImpl]", "Log 11 - progresso de download: CANCELADO");
                httpURLConnection.disconnect();
                return;
              } 
              byteArrayOutputStream.close();
              bufferedInputStream.close();
              Log.d("[ChatServiceImpl]", "Log 11 - 4");
              byte[] arrayOfByte2 = byteArrayOutputStream.toByteArray();
              fileOutputStream.write(arrayOfByte2);
              fileOutputStream.close();
              Log.d("[ChatServiceImpl]", "Log 11 - 5");
              byte[] arrayOfByte1 = (new arw()).a(ard.a().J(), arrayOfByte2);
              Log.d("[ChatServiceImpl]", "Log 11 - 6");
              File file = new File(str2);
              Log.d("[ChatServiceImpl]", "Log 11 - 7 " + str2);
              BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
              bufferedOutputStream.write(arrayOfByte1);
              bufferedOutputStream.flush();
              bufferedOutputStream.close();
              paramarj.a(100);
              paramarj.b(true);
              paramarj.h(true);
              paramarj.h(true);
            } 
          } else {
            paramarj.i(true);
            paramarj.b(false);
            paramarj.g(false);
            Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
            paramarj.h(true);
          } 
          paramarj.h(true);
          return;
        } catch (IOException iOException1) {
          paramarj.i(true);
          paramarj.b(false);
          paramarj.g(false);
          Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
          Log.d("[ChatServiceImpl]", "Log - downloadFile - IOException: " + iOException1.getMessage());
          httpURLConnection.disconnect();
          Log.d("[ChatServiceImpl]", "Log - downloadFile end");
          break;
        } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
          paramarj.i(true);
          paramarj.b(false);
          paramarj.g(false);
          Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
          Log.d("[ChatServiceImpl]", "Log - downloadFile - NoSuchAlgorithmException: " + noSuchAlgorithmException.getMessage());
          httpURLConnection.disconnect();
          Log.d("[ChatServiceImpl]", "Log - downloadFile end");
          break;
        } catch (InvalidKeyException invalidKeyException) {
          paramarj.i(true);
          paramarj.b(false);
          paramarj.g(false);
          Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
          Log.d("[ChatServiceImpl]", "Log - downloadFile - InvalidKeyException: " + invalidKeyException.getMessage());
          httpURLConnection.disconnect();
          Log.d("[ChatServiceImpl]", "Log - downloadFile end");
          break;
        } catch (InvalidAlgorithmParameterException invalidAlgorithmParameterException) {
          paramarj.i(true);
          paramarj.b(false);
          paramarj.g(false);
          Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
          Log.d("[ChatServiceImpl]", "Log - downloadFile - InvalidAlgorithmParameterException: " + invalidAlgorithmParameterException.getMessage());
          httpURLConnection.disconnect();
          Log.d("[ChatServiceImpl]", "Log - downloadFile end");
          break;
        } catch (NoSuchPaddingException noSuchPaddingException) {
          paramarj.i(true);
          paramarj.b(false);
          paramarj.g(false);
          Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
          Log.d("[ChatServiceImpl]", "Log - downloadFile - NoSuchPaddingException: " + noSuchPaddingException.getMessage());
          httpURLConnection.disconnect();
          Log.d("[ChatServiceImpl]", "Log - downloadFile end");
          break;
        } catch (BadPaddingException badPaddingException) {
          paramarj.i(true);
          paramarj.b(false);
          paramarj.g(false);
          Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
          Log.d("[ChatServiceImpl]", "Log - downloadFile - BadPaddingException: " + badPaddingException.getMessage());
          httpURLConnection.disconnect();
          Log.d("[ChatServiceImpl]", "Log - downloadFile end");
          break;
        } catch (IllegalBlockSizeException illegalBlockSizeException) {
          paramarj.i(true);
          paramarj.b(false);
          paramarj.g(false);
          Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
          Log.d("[ChatServiceImpl]", "Log - downloadFile - IllegalBlockSizeException: " + illegalBlockSizeException.getMessage());
          httpURLConnection.disconnect();
          Log.d("[ChatServiceImpl]", "Log - downloadFile end");
          break;
        } catch (Exception exception) {
          paramarj.i(true);
          paramarj.b(false);
          paramarj.g(false);
          Log.d("[ChatServiceImpl]", "Não foi possível efetuar o download do arquivo");
          Log.d("[ChatServiceImpl]", "Log - downloadFile - Exception: " + exception);
          httpURLConnection.disconnect();
          Log.d("[ChatServiceImpl]", "Log - downloadFile end");
          break;
        } finally {}
      } catch (ProtocolException null) {
        Log.d("[ChatServiceImpl]", "Log catch - ProtocolException");
        Log.d("[ChatServiceImpl]", "Log - downloadFile end");
        break;
      } catch (IOException iOException) {
        Log.d("[ChatServiceImpl]", "Log catch - IOException");
        Log.d("[ChatServiceImpl]", "Log - downloadFile end");
        break;
      } 
      iOException.disconnect();
      throw str2;
    } 
    paramarj.h(true);
  }
  
  public void a(ark paramark, boolean paramBoolean) {
    (new Thread(new asa(this, paramark.l(), paramBoolean))).start();
  }
  
  public void a(String paramString, InputStream paramInputStream) {
    if (i == null)
      b(); 
    if (!ase.b(paramString)) {
      String str = paramString.trim();
      paramString = str;
      if (str.endsWith("/"))
        paramString = str.substring(0, str.length() - 1); 
      a = paramString;
      b = paramInputStream;
      return;
    } 
    throw new ExceptionInInitializerError("Erro nao foi inicializado uma url de servico de chat valida.");
  }
  
  public boolean a(ard paramard, apu paramapu) {
    switch (asb.a[paramapu.ordinal()]) {
      default:
        return false;
      case 1:
        d(paramard);
        return true;
      case 2:
        e(paramard);
        return true;
      case 3:
        break;
    } 
    f(paramard);
    return true;
  }
  
  public ard b(ard paramard) {
    // Byte code:
    //   0: ldc '[ChatServiceImpl]'
    //   2: ldc_w 'startChatSession '
    //   5: ldc_w 'init'
    //   8: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   11: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   14: pop
    //   15: aload_0
    //   16: iconst_0
    //   17: putfield e : I
    //   20: aload_0
    //   21: iconst_0
    //   22: putfield h : I
    //   25: ldc_w '/chat/sessions'
    //   28: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   31: aload_1
    //   32: invokestatic a : (Ljava/lang/String;Lard;)Ljava/lang/String;
    //   35: astore_3
    //   36: aload_1
    //   37: invokevirtual D : ()Larb;
    //   40: invokevirtual a : ()Ljava/lang/String;
    //   43: astore #4
    //   45: aload #4
    //   47: invokestatic b : (Ljava/lang/String;)Z
    //   50: ifeq -> 168
    //   53: new java/security/InvalidKeyException
    //   56: dup
    //   57: ldc_w 'External App getToken() implementation startChatSession return Null or Empty value'
    //   60: invokespecial <init> : (Ljava/lang/String;)V
    //   63: athrow
    //   64: astore #5
    //   66: aconst_null
    //   67: astore #4
    //   69: aload #4
    //   71: astore_3
    //   72: aload #5
    //   74: invokevirtual getMessage : ()Ljava/lang/String;
    //   77: ifnull -> 1187
    //   80: aload #4
    //   82: astore_3
    //   83: ldc '[ChatServiceImpl]'
    //   85: new java/lang/StringBuilder
    //   88: dup
    //   89: invokespecial <init> : ()V
    //   92: ldc_w 'startChatSession error '
    //   95: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: aload #5
    //   100: invokevirtual getMessage : ()Ljava/lang/String;
    //   103: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: invokevirtual toString : ()Ljava/lang/String;
    //   109: aload #5
    //   111: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   114: pop
    //   115: aload #4
    //   117: astore_3
    //   118: new aqd
    //   121: dup
    //   122: ldc_w '999'
    //   125: ldc_w 'checkChatPermission error'
    //   128: aload #5
    //   130: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   133: athrow
    //   134: astore #5
    //   136: aload_3
    //   137: astore #4
    //   139: aload #5
    //   141: astore_3
    //   142: aload #4
    //   144: ifnull -> 152
    //   147: aload #4
    //   149: invokevirtual disconnect : ()V
    //   152: aload_1
    //   153: invokevirtual D : ()Larb;
    //   156: ifnull -> 166
    //   159: aload_1
    //   160: invokevirtual D : ()Larb;
    //   163: invokevirtual b : ()V
    //   166: aload_3
    //   167: athrow
    //   168: ldc '[ChatServiceImpl]'
    //   170: new java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial <init> : ()V
    //   177: ldc_w 'startChatSession getToken: '
    //   180: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload #4
    //   185: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual toString : ()Ljava/lang/String;
    //   191: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   194: pop
    //   195: aload_1
    //   196: aload #4
    //   198: invokevirtual a : (Ljava/lang/String;)V
    //   201: invokestatic a : ()Lars;
    //   204: invokevirtual b : ()Ljava/lang/String;
    //   207: astore #4
    //   209: ldc_w '{"app" : "{app}", "reason" : "{reason}", "eccClientKey" : "{eccClientKey}"}'
    //   212: ldc_w '{reason}'
    //   215: aload_1
    //   216: invokevirtual m : ()Ljava/lang/String;
    //   219: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   222: ldc_w '{app}'
    //   225: aload_1
    //   226: invokevirtual n : ()Ljava/lang/String;
    //   229: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   232: ldc_w '{eccClientKey}'
    //   235: aload #4
    //   237: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   240: astore #5
    //   242: new java/lang/StringBuilder
    //   245: dup
    //   246: invokespecial <init> : ()V
    //   249: ldc_w '/chat/sessions'
    //   252: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: aload #5
    //   257: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: invokevirtual toString : ()Ljava/lang/String;
    //   263: aload_1
    //   264: invokevirtual i : ()Ljava/lang/String;
    //   267: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   270: astore #4
    //   272: aload_3
    //   273: getstatic apz.POST : Lapz;
    //   276: aload_1
    //   277: invokevirtual i : ()Ljava/lang/String;
    //   280: aload_0
    //   281: getfield g : I
    //   284: getstatic ary.b : Ljava/io/InputStream;
    //   287: aconst_null
    //   288: aload #4
    //   290: iconst_1
    //   291: aconst_null
    //   292: iconst_0
    //   293: invokestatic a : (Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    //   296: astore #4
    //   298: aload #4
    //   300: astore_3
    //   301: aload #4
    //   303: ldc_w 'v'
    //   306: ldc_w '2.1.8'
    //   309: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   312: aload #4
    //   314: ifnull -> 1136
    //   317: aload #4
    //   319: astore_3
    //   320: aload #4
    //   322: invokestatic connect : (Ljava/net/HttpURLConnection;)V
    //   325: aload #4
    //   327: astore_3
    //   328: aload #5
    //   330: aload #4
    //   332: invokestatic a : (Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    //   335: aload #4
    //   337: astore_3
    //   338: aload #4
    //   340: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   343: istore_2
    //   344: aload #4
    //   346: astore_3
    //   347: aload_0
    //   348: aload #4
    //   350: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   353: astore #7
    //   355: aload #4
    //   357: astore_3
    //   358: aload_1
    //   359: iload_2
    //   360: invokevirtual a : (I)V
    //   363: aload #4
    //   365: astore_3
    //   366: ldc '[ChatServiceImpl]'
    //   368: ldc_w 'startChatSession '
    //   371: aload #7
    //   373: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   376: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   379: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   382: pop
    //   383: iload_2
    //   384: sipush #201
    //   387: if_icmpne -> 1038
    //   390: aload #4
    //   392: astore_3
    //   393: aload_1
    //   394: invokestatic a : ()Ljava/util/Calendar;
    //   397: invokevirtual getTime : ()Ljava/util/Date;
    //   400: invokevirtual a : (Ljava/util/Date;)V
    //   403: aload #4
    //   405: astore_3
    //   406: aload_1
    //   407: iconst_0
    //   408: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   411: invokevirtual a : (Ljava/lang/Integer;)V
    //   414: aload #4
    //   416: astore_3
    //   417: aload_1
    //   418: iconst_0
    //   419: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   422: invokevirtual b : (Ljava/lang/Integer;)V
    //   425: aload #4
    //   427: astore_3
    //   428: aload_1
    //   429: iconst_1
    //   430: invokevirtual b : (Z)V
    //   433: aload #4
    //   435: astore_3
    //   436: aload_1
    //   437: aconst_null
    //   438: invokevirtual a : (Ljava/util/List;)V
    //   441: aload #4
    //   443: astore_3
    //   444: aload_1
    //   445: iconst_0
    //   446: invokevirtual c : (Z)V
    //   449: aload #4
    //   451: astore_3
    //   452: aload_1
    //   453: ldc_w 'chatSessionId'
    //   456: aload #7
    //   458: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   461: ldc '[ChatServiceImpl]'
    //   463: invokevirtual a : (Ljava/lang/String;Ljava/lang/String;)V
    //   466: aload #4
    //   468: astore_3
    //   469: ldc '[ChatServiceImpl]'
    //   471: ldc_w 'chatSessionId: '
    //   474: aload_1
    //   475: invokevirtual j : ()Ljava/lang/String;
    //   478: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   481: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   484: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   487: pop
    //   488: aload #4
    //   490: astore_3
    //   491: aload_1
    //   492: ldc_w 'fileTransferEnabled'
    //   495: aload #7
    //   497: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   500: invokestatic g : (Ljava/lang/Object;)Z
    //   503: invokevirtual d : (Z)V
    //   506: aload #4
    //   508: astore_3
    //   509: aload_1
    //   510: ldc_w 'pollingInterval'
    //   513: aload #7
    //   515: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   518: invokestatic f : (Ljava/lang/Object;)I
    //   521: invokevirtual d : (I)V
    //   524: aload #4
    //   526: astore_3
    //   527: aload_1
    //   528: ldc_w 'pollingTimeout'
    //   531: aload #7
    //   533: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   536: invokestatic f : (Ljava/lang/Object;)I
    //   539: invokevirtual c : (I)V
    //   542: aload #4
    //   544: astore_3
    //   545: ldc_w 'urlFeedBackLoop'
    //   548: aload #7
    //   550: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   553: astore #5
    //   555: aload #4
    //   557: astore_3
    //   558: ldc_w 'signatureKey'
    //   561: aload #7
    //   563: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   566: astore #6
    //   568: aload #4
    //   570: astore_3
    //   571: aload_1
    //   572: invokevirtual G : ()Z
    //   575: ifeq -> 706
    //   578: aload #4
    //   580: astore_3
    //   581: ldc_w 'cryptoKey'
    //   584: aload #7
    //   586: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   589: astore #8
    //   591: aload #4
    //   593: astore_3
    //   594: ldc '[ChatServiceImpl]'
    //   596: new java/lang/StringBuilder
    //   599: dup
    //   600: invokespecial <init> : ()V
    //   603: ldc_w 'Log 1 - cryptoKey: '
    //   606: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   609: aload #8
    //   611: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   614: invokevirtual toString : ()Ljava/lang/String;
    //   617: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   620: pop
    //   621: aload #4
    //   623: astore_3
    //   624: aload #8
    //   626: invokestatic b : (Ljava/lang/String;)Z
    //   629: ifne -> 706
    //   632: aload #4
    //   634: astore_3
    //   635: ldc '[ChatServiceImpl]'
    //   637: new java/lang/StringBuilder
    //   640: dup
    //   641: invokespecial <init> : ()V
    //   644: ldc_w 'Log 2 - cryptoKey isNullorEmpty: '
    //   647: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   650: aload #8
    //   652: invokestatic b : (Ljava/lang/String;)Z
    //   655: invokevirtual append : (Z)Ljava/lang/StringBuilder;
    //   658: invokevirtual toString : ()Ljava/lang/String;
    //   661: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   664: pop
    //   665: aload #4
    //   667: astore_3
    //   668: aload_1
    //   669: aload #8
    //   671: invokevirtual g : (Ljava/lang/String;)V
    //   674: aload #4
    //   676: astore_3
    //   677: ldc '[ChatServiceImpl]'
    //   679: new java/lang/StringBuilder
    //   682: dup
    //   683: invokespecial <init> : ()V
    //   686: ldc_w 'Log 3 - cryptoKey getFileTransferCryptoKey: '
    //   689: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   692: aload_1
    //   693: invokevirtual J : ()Ljava/lang/String;
    //   696: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   699: invokevirtual toString : ()Ljava/lang/String;
    //   702: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   705: pop
    //   706: aload #4
    //   708: astore_3
    //   709: ldc_w 'eccServerKey'
    //   712: aload #7
    //   714: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   717: astore #7
    //   719: aload #4
    //   721: astore_3
    //   722: ldc '[ChatServiceImpl]'
    //   724: new java/lang/StringBuilder
    //   727: dup
    //   728: invokespecial <init> : ()V
    //   731: ldc_w 'Log 1 - keyPhase2: '
    //   734: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   737: aload #7
    //   739: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   742: invokevirtual toString : ()Ljava/lang/String;
    //   745: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   748: pop
    //   749: aload #4
    //   751: astore_3
    //   752: ldc '[ChatServiceImpl]'
    //   754: new java/lang/StringBuilder
    //   757: dup
    //   758: invokespecial <init> : ()V
    //   761: ldc_w 'eccServerKey'
    //   764: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   767: ldc_w 'keyPhase2 '
    //   770: aload #7
    //   772: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   775: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   778: invokevirtual toString : ()Ljava/lang/String;
    //   781: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   784: pop
    //   785: aload #4
    //   787: astore_3
    //   788: aload #7
    //   790: invokestatic b : (Ljava/lang/String;)Z
    //   793: ifne -> 945
    //   796: aload #4
    //   798: astore_3
    //   799: aload #7
    //   801: invokestatic a : (Ljava/lang/String;)V
    //   804: aload #4
    //   806: astore_3
    //   807: ldc '[ChatServiceImpl]'
    //   809: new java/lang/StringBuilder
    //   812: dup
    //   813: invokespecial <init> : ()V
    //   816: ldc_w 'Log 3 - keyPhase2: '
    //   819: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   822: aload #7
    //   824: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   827: invokevirtual toString : ()Ljava/lang/String;
    //   830: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   833: pop
    //   834: aload #4
    //   836: astore_3
    //   837: aload_1
    //   838: invokestatic a : ()Lars;
    //   841: aload_1
    //   842: invokevirtual J : ()Ljava/lang/String;
    //   845: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   848: invokevirtual g : (Ljava/lang/String;)V
    //   851: aload #4
    //   853: astore_3
    //   854: ldc '[ChatServiceImpl]'
    //   856: new java/lang/StringBuilder
    //   859: dup
    //   860: invokespecial <init> : ()V
    //   863: ldc_w 'Log 3.1 - getFileTransferCryptoKey decrypted: '
    //   866: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   869: aload_1
    //   870: invokevirtual J : ()Ljava/lang/String;
    //   873: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   876: invokevirtual toString : ()Ljava/lang/String;
    //   879: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   882: pop
    //   883: aload #4
    //   885: astore_3
    //   886: aload #5
    //   888: invokestatic b : (Ljava/lang/String;)Z
    //   891: ifne -> 945
    //   894: aload #4
    //   896: astore_3
    //   897: aload_1
    //   898: invokestatic a : ()Lars;
    //   901: aload #5
    //   903: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   906: invokevirtual i : (Ljava/lang/String;)V
    //   909: aload #4
    //   911: astore_3
    //   912: ldc '[ChatServiceImpl]'
    //   914: new java/lang/StringBuilder
    //   917: dup
    //   918: invokespecial <init> : ()V
    //   921: ldc_w 'FEEDBACK: '
    //   924: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   927: invokestatic a : ()Lars;
    //   930: aload #5
    //   932: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   935: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   938: invokevirtual toString : ()Ljava/lang/String;
    //   941: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   944: pop
    //   945: aload #4
    //   947: astore_3
    //   948: aload_0
    //   949: aload_1
    //   950: invokevirtual A : ()I
    //   953: putfield g : I
    //   956: aload #4
    //   958: astore_3
    //   959: aload_1
    //   960: aconst_null
    //   961: invokevirtual a : (Ljava/lang/String;)V
    //   964: aload #4
    //   966: astore_3
    //   967: aload #6
    //   969: invokestatic b : (Ljava/lang/String;)Z
    //   972: ifne -> 990
    //   975: aload #4
    //   977: astore_3
    //   978: aload_1
    //   979: invokestatic a : ()Lars;
    //   982: aload #6
    //   984: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   987: invokevirtual f : (Ljava/lang/String;)V
    //   990: aload #4
    //   992: astore_3
    //   993: aload_1
    //   994: invokevirtual w : ()V
    //   997: aload #4
    //   999: ifnull -> 1007
    //   1002: aload #4
    //   1004: invokevirtual disconnect : ()V
    //   1007: aload_1
    //   1008: invokevirtual D : ()Larb;
    //   1011: ifnull -> 1021
    //   1014: aload_1
    //   1015: invokevirtual D : ()Larb;
    //   1018: invokevirtual b : ()V
    //   1021: ldc '[ChatServiceImpl]'
    //   1023: ldc_w 'startChatSession '
    //   1026: ldc_w 'end'
    //   1029: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   1032: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1035: pop
    //   1036: aload_1
    //   1037: areturn
    //   1038: aload #4
    //   1040: astore_3
    //   1041: ldc '[ChatServiceImpl]'
    //   1043: new java/lang/StringBuilder
    //   1046: dup
    //   1047: invokespecial <init> : ()V
    //   1050: ldc_w 'startChatSession error server connection failed, status code: '
    //   1053: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1056: iload_2
    //   1057: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1060: invokevirtual toString : ()Ljava/lang/String;
    //   1063: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1066: pop
    //   1067: aload #4
    //   1069: astore_3
    //   1070: aload_1
    //   1071: iload_2
    //   1072: invokevirtual b : (I)V
    //   1075: aload #4
    //   1077: astore_3
    //   1078: aload_1
    //   1079: new java/lang/StringBuilder
    //   1082: dup
    //   1083: invokespecial <init> : ()V
    //   1086: ldc_w 'Server connection failed, status code: '
    //   1089: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1092: iload_2
    //   1093: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1096: invokevirtual toString : ()Ljava/lang/String;
    //   1099: invokevirtual b : (Ljava/lang/String;)V
    //   1102: aload #4
    //   1104: astore_3
    //   1105: aload_1
    //   1106: aload #7
    //   1108: invokevirtual e : (Ljava/lang/String;)V
    //   1111: aload #4
    //   1113: astore_3
    //   1114: invokestatic a : ()Lard;
    //   1117: iconst_1
    //   1118: invokevirtual f : (Z)V
    //   1121: aload #4
    //   1123: astore_3
    //   1124: new asc
    //   1127: dup
    //   1128: aload_0
    //   1129: invokespecial <init> : (Lary;)V
    //   1132: pop
    //   1133: goto -> 997
    //   1136: aload #4
    //   1138: astore_3
    //   1139: new java/lang/Exception
    //   1142: dup
    //   1143: ldc_w 'startChatSession error httpURLConnection is null'
    //   1146: invokespecial <init> : (Ljava/lang/String;)V
    //   1149: athrow
    //   1150: astore_3
    //   1151: ldc '[ChatServiceImpl]'
    //   1153: ldc_w 'startChatSession httpURLConnection.disconnect();'
    //   1156: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1159: pop
    //   1160: goto -> 1007
    //   1163: astore_3
    //   1164: ldc '[ChatServiceImpl]'
    //   1166: ldc_w 'startChatSession error chatBase.getChatSessionToken().refreshTokenTransacao() '
    //   1169: aload_3
    //   1170: invokevirtual getMessage : ()Ljava/lang/String;
    //   1173: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   1176: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   1179: aload_3
    //   1180: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1183: pop
    //   1184: goto -> 1021
    //   1187: aload #4
    //   1189: ifnull -> 1197
    //   1192: aload #4
    //   1194: invokevirtual disconnect : ()V
    //   1197: aload_1
    //   1198: invokevirtual D : ()Larb;
    //   1201: ifnull -> 1021
    //   1204: aload_1
    //   1205: invokevirtual D : ()Larb;
    //   1208: invokevirtual b : ()V
    //   1211: goto -> 1021
    //   1214: astore_3
    //   1215: ldc '[ChatServiceImpl]'
    //   1217: ldc_w 'startChatSession error chatBase.getChatSessionToken().refreshTokenTransacao() '
    //   1220: aload_3
    //   1221: invokevirtual getMessage : ()Ljava/lang/String;
    //   1224: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   1227: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   1230: aload_3
    //   1231: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1234: pop
    //   1235: goto -> 1021
    //   1238: astore_3
    //   1239: ldc '[ChatServiceImpl]'
    //   1241: ldc_w 'startChatSession httpURLConnection.disconnect();'
    //   1244: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1247: pop
    //   1248: goto -> 1197
    //   1251: astore #4
    //   1253: ldc '[ChatServiceImpl]'
    //   1255: ldc_w 'startChatSession httpURLConnection.disconnect();'
    //   1258: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1261: pop
    //   1262: goto -> 152
    //   1265: astore_1
    //   1266: ldc '[ChatServiceImpl]'
    //   1268: ldc_w 'startChatSession error chatBase.getChatSessionToken().refreshTokenTransacao() '
    //   1271: aload_1
    //   1272: invokevirtual getMessage : ()Ljava/lang/String;
    //   1275: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   1278: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   1281: aload_1
    //   1282: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1285: pop
    //   1286: goto -> 166
    //   1289: astore_3
    //   1290: aconst_null
    //   1291: astore #4
    //   1293: goto -> 142
    //   1296: astore #5
    //   1298: goto -> 69
    // Exception table:
    //   from	to	target	type
    //   25	64	64	java/lang/Exception
    //   25	64	1289	finally
    //   72	80	134	finally
    //   83	115	134	finally
    //   118	134	134	finally
    //   147	152	1251	java/lang/Exception
    //   152	166	1265	java/lang/Exception
    //   168	298	64	java/lang/Exception
    //   168	298	1289	finally
    //   301	312	1296	java/lang/Exception
    //   301	312	134	finally
    //   320	325	1296	java/lang/Exception
    //   320	325	134	finally
    //   328	335	1296	java/lang/Exception
    //   328	335	134	finally
    //   338	344	1296	java/lang/Exception
    //   338	344	134	finally
    //   347	355	1296	java/lang/Exception
    //   347	355	134	finally
    //   358	363	1296	java/lang/Exception
    //   358	363	134	finally
    //   366	383	1296	java/lang/Exception
    //   366	383	134	finally
    //   393	403	1296	java/lang/Exception
    //   393	403	134	finally
    //   406	414	1296	java/lang/Exception
    //   406	414	134	finally
    //   417	425	1296	java/lang/Exception
    //   417	425	134	finally
    //   428	433	1296	java/lang/Exception
    //   428	433	134	finally
    //   436	441	1296	java/lang/Exception
    //   436	441	134	finally
    //   444	449	1296	java/lang/Exception
    //   444	449	134	finally
    //   452	466	1296	java/lang/Exception
    //   452	466	134	finally
    //   469	488	1296	java/lang/Exception
    //   469	488	134	finally
    //   491	506	1296	java/lang/Exception
    //   491	506	134	finally
    //   509	524	1296	java/lang/Exception
    //   509	524	134	finally
    //   527	542	1296	java/lang/Exception
    //   527	542	134	finally
    //   545	555	1296	java/lang/Exception
    //   545	555	134	finally
    //   558	568	1296	java/lang/Exception
    //   558	568	134	finally
    //   571	578	1296	java/lang/Exception
    //   571	578	134	finally
    //   581	591	1296	java/lang/Exception
    //   581	591	134	finally
    //   594	621	1296	java/lang/Exception
    //   594	621	134	finally
    //   624	632	1296	java/lang/Exception
    //   624	632	134	finally
    //   635	665	1296	java/lang/Exception
    //   635	665	134	finally
    //   668	674	1296	java/lang/Exception
    //   668	674	134	finally
    //   677	706	1296	java/lang/Exception
    //   677	706	134	finally
    //   709	719	1296	java/lang/Exception
    //   709	719	134	finally
    //   722	749	1296	java/lang/Exception
    //   722	749	134	finally
    //   752	785	1296	java/lang/Exception
    //   752	785	134	finally
    //   788	796	1296	java/lang/Exception
    //   788	796	134	finally
    //   799	804	1296	java/lang/Exception
    //   799	804	134	finally
    //   807	834	1296	java/lang/Exception
    //   807	834	134	finally
    //   837	851	1296	java/lang/Exception
    //   837	851	134	finally
    //   854	883	1296	java/lang/Exception
    //   854	883	134	finally
    //   886	894	1296	java/lang/Exception
    //   886	894	134	finally
    //   897	909	1296	java/lang/Exception
    //   897	909	134	finally
    //   912	945	1296	java/lang/Exception
    //   912	945	134	finally
    //   948	956	1296	java/lang/Exception
    //   948	956	134	finally
    //   959	964	1296	java/lang/Exception
    //   959	964	134	finally
    //   967	975	1296	java/lang/Exception
    //   967	975	134	finally
    //   978	990	1296	java/lang/Exception
    //   978	990	134	finally
    //   993	997	1296	java/lang/Exception
    //   993	997	134	finally
    //   1002	1007	1150	java/lang/Exception
    //   1007	1021	1163	java/lang/Exception
    //   1041	1067	1296	java/lang/Exception
    //   1041	1067	134	finally
    //   1070	1075	1296	java/lang/Exception
    //   1070	1075	134	finally
    //   1078	1102	1296	java/lang/Exception
    //   1078	1102	134	finally
    //   1105	1111	1296	java/lang/Exception
    //   1105	1111	134	finally
    //   1114	1121	1296	java/lang/Exception
    //   1114	1121	134	finally
    //   1124	1133	1296	java/lang/Exception
    //   1124	1133	134	finally
    //   1139	1150	1296	java/lang/Exception
    //   1139	1150	134	finally
    //   1192	1197	1238	java/lang/Exception
    //   1197	1211	1214	java/lang/Exception
  }
  
  public void b(arj paramarj) {
    // Byte code:
    //   0: ldc '[ChatServiceImpl]'
    //   2: ldc_w 'Log 1 - downloadThumbnail init'
    //   5: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   8: pop
    //   9: ldc '[ChatServiceImpl]'
    //   11: ldc_w 'Log 2 - inicio da solicitacao token de arquivo'
    //   14: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   17: pop
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual a : (Larj;)Lari;
    //   23: astore #4
    //   25: aload #4
    //   27: invokevirtual c : ()Ljava/lang/String;
    //   30: ifnull -> 697
    //   33: aload_1
    //   34: aload #4
    //   36: invokevirtual a : (Lari;)V
    //   39: invokestatic a : ()Lard;
    //   42: invokevirtual j : ()Ljava/lang/String;
    //   45: astore #5
    //   47: ldc '[ChatServiceImpl]'
    //   49: new java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial <init> : ()V
    //   56: ldc_w 'Log 3 - downloadThumbnail - chatSessionId : '
    //   59: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: aload #5
    //   64: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: invokevirtual toString : ()Ljava/lang/String;
    //   70: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   73: pop
    //   74: invokestatic a : ()Lars;
    //   77: aload_1
    //   78: invokevirtual a : ()Ljava/lang/String;
    //   81: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   84: astore #4
    //   86: invokestatic a : ()Lars;
    //   89: aload #4
    //   91: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   94: astore #6
    //   96: ldc '[ChatServiceImpl]'
    //   98: new java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial <init> : ()V
    //   105: ldc_w 'Log 4 - downloadThumbnail - fileIdReceived  : '
    //   108: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: aload_1
    //   112: invokevirtual a : ()Ljava/lang/String;
    //   115: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: invokevirtual toString : ()Ljava/lang/String;
    //   121: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   124: pop
    //   125: ldc '[ChatServiceImpl]'
    //   127: new java/lang/StringBuilder
    //   130: dup
    //   131: invokespecial <init> : ()V
    //   134: ldc_w 'Log 4 - downloadThumbnail - fileIdDecrypted : '
    //   137: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload #4
    //   142: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual toString : ()Ljava/lang/String;
    //   148: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   151: pop
    //   152: ldc '[ChatServiceImpl]'
    //   154: new java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial <init> : ()V
    //   161: ldc_w 'Log 4 - downloadThumbnail - fileIdEncrypted : '
    //   164: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload #6
    //   169: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: invokevirtual toString : ()Ljava/lang/String;
    //   175: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   178: pop
    //   179: ldc_w '/chatfile/sessions/file/thumbnail/{fileToken}'
    //   182: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   185: astore #7
    //   187: aload #7
    //   189: invokestatic a : ()Lard;
    //   192: invokestatic a : (Ljava/lang/String;Lard;)Ljava/lang/String;
    //   195: ldc '{fileToken}'
    //   197: aload_1
    //   198: invokevirtual p : ()Lari;
    //   201: invokevirtual c : ()Ljava/lang/String;
    //   204: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   207: astore #4
    //   209: ldc '[ChatServiceImpl]'
    //   211: new java/lang/StringBuilder
    //   214: dup
    //   215: invokespecial <init> : ()V
    //   218: ldc_w 'Log 5 - downloadThumbnail - url: '
    //   221: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: aload #4
    //   226: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual toString : ()Ljava/lang/String;
    //   232: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   235: pop
    //   236: invokestatic a : ()Lard;
    //   239: invokevirtual E : ()Ljava/lang/String;
    //   242: astore #8
    //   244: ldc '[ChatServiceImpl]'
    //   246: new java/lang/StringBuilder
    //   249: dup
    //   250: invokespecial <init> : ()V
    //   253: ldc_w 'Log 6 - downloadThumbnail - signatureKey: '
    //   256: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: aload #8
    //   261: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual toString : ()Ljava/lang/String;
    //   267: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   270: pop
    //   271: ldc '[ChatServiceImpl]'
    //   273: ldc_w 'Log 7 - downloadThumbnail - signatureParam '
    //   276: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   279: pop
    //   280: new java/lang/StringBuilder
    //   283: dup
    //   284: invokespecial <init> : ()V
    //   287: aload #7
    //   289: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: aload #5
    //   294: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual toString : ()Ljava/lang/String;
    //   300: aload #8
    //   302: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   305: astore #7
    //   307: ldc '[ChatServiceImpl]'
    //   309: ldc_w 'Log 8 - downloadThumbnail - conexao'
    //   312: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   315: pop
    //   316: aload #4
    //   318: getstatic ary.b : Ljava/io/InputStream;
    //   321: invokestatic a : (Ljava/lang/String;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;
    //   324: astore #4
    //   326: aload #4
    //   328: sipush #30000
    //   331: invokevirtual setConnectTimeout : (I)V
    //   334: aload_0
    //   335: getfield g : I
    //   338: ifle -> 740
    //   341: aload #4
    //   343: aload_0
    //   344: getfield g : I
    //   347: invokevirtual setReadTimeout : (I)V
    //   350: ldc '[ChatServiceImpl]'
    //   352: ldc_w 'Log 9 - downloadThumbnail - set dos parametros da conexao'
    //   355: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   358: pop
    //   359: aload #4
    //   361: getstatic apz.GET : Lapz;
    //   364: invokevirtual toString : ()Ljava/lang/String;
    //   367: invokevirtual setRequestMethod : (Ljava/lang/String;)V
    //   370: aload #4
    //   372: ldc_w 'Connection'
    //   375: ldc_w 'Keep-Alive'
    //   378: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   381: aload #4
    //   383: ldc_w 'Accept'
    //   386: ldc_w 'application/json'
    //   389: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   392: aload #4
    //   394: ldc_w 'FileId'
    //   397: aload #6
    //   399: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   402: aload #4
    //   404: ldc_w 'ChatSessionId'
    //   407: aload #5
    //   409: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   412: aload #4
    //   414: ldc_w 'RequestSignature'
    //   417: aload #7
    //   419: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   422: aload #4
    //   424: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   427: istore_2
    //   428: ldc '[ChatServiceImpl]'
    //   430: new java/lang/StringBuilder
    //   433: dup
    //   434: invokespecial <init> : ()V
    //   437: ldc_w 'Log 10 - downloadThumbnail - httpCode: '
    //   440: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: iload_2
    //   444: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   447: invokevirtual toString : ()Ljava/lang/String;
    //   450: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   453: pop
    //   454: ldc '[ChatServiceImpl]'
    //   456: new java/lang/StringBuilder
    //   459: dup
    //   460: invokespecial <init> : ()V
    //   463: ldc_w 'Log 10 - downloadThumbnail - httpMsg: '
    //   466: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: aload #4
    //   471: invokevirtual getResponseMessage : ()Ljava/lang/String;
    //   474: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   477: invokevirtual toString : ()Ljava/lang/String;
    //   480: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   483: pop
    //   484: iload_2
    //   485: sipush #200
    //   488: if_icmpne -> 946
    //   491: ldc '[ChatServiceImpl]'
    //   493: ldc_w 'Log 11 downloadThumbnail - 1'
    //   496: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   499: pop
    //   500: new java/io/BufferedInputStream
    //   503: dup
    //   504: aload #4
    //   506: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   509: sipush #8192
    //   512: invokespecial <init> : (Ljava/io/InputStream;I)V
    //   515: astore #7
    //   517: ldc '[ChatServiceImpl]'
    //   519: ldc_w 'Log 11 downloadThumbnail - 2'
    //   522: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   525: pop
    //   526: aload_1
    //   527: invokevirtual z : ()Ljava/io/File;
    //   530: invokevirtual getPath : ()Ljava/lang/String;
    //   533: astore #5
    //   535: ldc '[ChatServiceImpl]'
    //   537: ldc_w 'Log 11 downloadThumbnail - 3'
    //   540: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   543: pop
    //   544: new java/io/FileOutputStream
    //   547: dup
    //   548: aload #5
    //   550: invokespecial <init> : (Ljava/lang/String;)V
    //   553: astore #6
    //   555: new java/io/ByteArrayOutputStream
    //   558: dup
    //   559: invokespecial <init> : ()V
    //   562: astore #8
    //   564: sipush #1024
    //   567: newarray byte
    //   569: astore #9
    //   571: aload #4
    //   573: invokevirtual getContentLength : ()I
    //   576: istore_2
    //   577: ldc '[ChatServiceImpl]'
    //   579: new java/lang/StringBuilder
    //   582: dup
    //   583: invokespecial <init> : ()V
    //   586: ldc_w 'Log 11 downloadThumbnail - available to download: '
    //   589: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   592: iload_2
    //   593: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   596: invokevirtual toString : ()Ljava/lang/String;
    //   599: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   602: pop
    //   603: aload #7
    //   605: aload #9
    //   607: invokevirtual read : ([B)I
    //   610: istore_3
    //   611: iconst_m1
    //   612: iload_3
    //   613: if_icmpeq -> 765
    //   616: aload #8
    //   618: aload #9
    //   620: iconst_0
    //   621: iload_3
    //   622: invokevirtual write : ([BII)V
    //   625: aload #8
    //   627: invokevirtual toByteArray : ()[B
    //   630: arraylength
    //   631: bipush #100
    //   633: imul
    //   634: iload_2
    //   635: idiv
    //   636: istore_3
    //   637: aload_1
    //   638: iconst_1
    //   639: invokevirtual h : (Z)V
    //   642: goto -> 603
    //   645: astore #5
    //   647: ldc '[ChatServiceImpl]'
    //   649: new java/lang/StringBuilder
    //   652: dup
    //   653: invokespecial <init> : ()V
    //   656: ldc_w 'Log - downloadThumbnail - IOException: '
    //   659: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   662: aload #5
    //   664: invokevirtual getMessage : ()Ljava/lang/String;
    //   667: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   670: invokevirtual toString : ()Ljava/lang/String;
    //   673: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   676: pop
    //   677: aload #4
    //   679: invokevirtual disconnect : ()V
    //   682: ldc '[ChatServiceImpl]'
    //   684: ldc_w 'Log - downloadThumbnail end'
    //   687: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   690: pop
    //   691: aload_1
    //   692: iconst_1
    //   693: invokevirtual h : (Z)V
    //   696: return
    //   697: aload_1
    //   698: iconst_1
    //   699: invokevirtual i : (Z)V
    //   702: goto -> 39
    //   705: astore #4
    //   707: ldc '[ChatServiceImpl]'
    //   709: new java/lang/StringBuilder
    //   712: dup
    //   713: invokespecial <init> : ()V
    //   716: ldc_w 'Log 2 - Ocorreu um erro na requisicao do file token. '
    //   719: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   722: aload #4
    //   724: invokevirtual getMessage : ()Ljava/lang/String;
    //   727: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   730: invokevirtual toString : ()Ljava/lang/String;
    //   733: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   736: pop
    //   737: goto -> 39
    //   740: aload #4
    //   742: sipush #15000
    //   745: invokevirtual setReadTimeout : (I)V
    //   748: goto -> 350
    //   751: astore #4
    //   753: ldc '[ChatServiceImpl]'
    //   755: ldc_w 'Log downloadThumbnail catch - ProtocolException'
    //   758: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   761: pop
    //   762: goto -> 682
    //   765: aload #8
    //   767: invokevirtual close : ()V
    //   770: aload #7
    //   772: invokevirtual close : ()V
    //   775: ldc '[ChatServiceImpl]'
    //   777: ldc_w 'Log 11 downloadThumbnail - 4'
    //   780: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   783: pop
    //   784: aload #8
    //   786: invokevirtual toByteArray : ()[B
    //   789: astore #7
    //   791: aload #6
    //   793: aload #7
    //   795: invokevirtual write : ([B)V
    //   798: aload #6
    //   800: invokevirtual close : ()V
    //   803: ldc '[ChatServiceImpl]'
    //   805: ldc_w 'Log 11 downloadThumbnail - 5'
    //   808: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   811: pop
    //   812: new arw
    //   815: dup
    //   816: invokespecial <init> : ()V
    //   819: invokestatic a : ()Lard;
    //   822: invokevirtual J : ()Ljava/lang/String;
    //   825: aload #7
    //   827: invokevirtual a : (Ljava/lang/String;[B)[B
    //   830: astore #6
    //   832: ldc '[ChatServiceImpl]'
    //   834: ldc_w 'Log 11 downloadThumbnail - 6'
    //   837: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   840: pop
    //   841: new java/io/File
    //   844: dup
    //   845: aload #5
    //   847: invokespecial <init> : (Ljava/lang/String;)V
    //   850: astore #7
    //   852: ldc '[ChatServiceImpl]'
    //   854: new java/lang/StringBuilder
    //   857: dup
    //   858: invokespecial <init> : ()V
    //   861: ldc_w 'Log 11 downloadThumbnail - 7 '
    //   864: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   867: aload #5
    //   869: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   872: invokevirtual toString : ()Ljava/lang/String;
    //   875: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   878: pop
    //   879: new java/io/BufferedOutputStream
    //   882: dup
    //   883: new java/io/FileOutputStream
    //   886: dup
    //   887: aload #7
    //   889: invokespecial <init> : (Ljava/io/File;)V
    //   892: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   895: astore #5
    //   897: aload #5
    //   899: aload #6
    //   901: invokevirtual write : ([B)V
    //   904: aload #5
    //   906: invokevirtual flush : ()V
    //   909: aload #5
    //   911: invokevirtual close : ()V
    //   914: aload_1
    //   915: iconst_1
    //   916: invokevirtual k : (Z)V
    //   919: aload_1
    //   920: iconst_1
    //   921: invokevirtual h : (Z)V
    //   924: aload #4
    //   926: invokevirtual disconnect : ()V
    //   929: goto -> 682
    //   932: astore #4
    //   934: ldc '[ChatServiceImpl]'
    //   936: ldc_w 'Log downloadThumbnail catch - IOException'
    //   939: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   942: pop
    //   943: goto -> 682
    //   946: aload_1
    //   947: iconst_1
    //   948: invokevirtual j : (Z)V
    //   951: aload_1
    //   952: iconst_0
    //   953: invokevirtual k : (Z)V
    //   956: ldc '[ChatServiceImpl]'
    //   958: ldc_w 'Não foi possível efetuar o download do thumbnail'
    //   961: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   964: pop
    //   965: goto -> 924
    //   968: astore #5
    //   970: ldc '[ChatServiceImpl]'
    //   972: new java/lang/StringBuilder
    //   975: dup
    //   976: invokespecial <init> : ()V
    //   979: ldc_w 'Log - downloadThumbnail - NoSuchAlgorithmException: '
    //   982: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   985: aload #5
    //   987: invokevirtual getMessage : ()Ljava/lang/String;
    //   990: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   993: invokevirtual toString : ()Ljava/lang/String;
    //   996: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   999: pop
    //   1000: aload #4
    //   1002: invokevirtual disconnect : ()V
    //   1005: goto -> 682
    //   1008: astore #4
    //   1010: ldc '[ChatServiceImpl]'
    //   1012: ldc_w 'Log downloadThumbnail catch '
    //   1015: aload #4
    //   1017: invokestatic d : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1020: pop
    //   1021: goto -> 682
    //   1024: astore #5
    //   1026: ldc '[ChatServiceImpl]'
    //   1028: new java/lang/StringBuilder
    //   1031: dup
    //   1032: invokespecial <init> : ()V
    //   1035: ldc_w 'Log - downloadThumbnail - InvalidKeyException: '
    //   1038: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1041: aload #5
    //   1043: invokevirtual getMessage : ()Ljava/lang/String;
    //   1046: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1049: invokevirtual toString : ()Ljava/lang/String;
    //   1052: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1055: pop
    //   1056: aload #4
    //   1058: invokevirtual disconnect : ()V
    //   1061: goto -> 682
    //   1064: astore #5
    //   1066: ldc '[ChatServiceImpl]'
    //   1068: new java/lang/StringBuilder
    //   1071: dup
    //   1072: invokespecial <init> : ()V
    //   1075: ldc_w 'Log - downloadThumbnail - InvalidAlgorithmParameterException: '
    //   1078: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1081: aload #5
    //   1083: invokevirtual getMessage : ()Ljava/lang/String;
    //   1086: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1089: invokevirtual toString : ()Ljava/lang/String;
    //   1092: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1095: pop
    //   1096: aload #4
    //   1098: invokevirtual disconnect : ()V
    //   1101: goto -> 682
    //   1104: astore #5
    //   1106: ldc '[ChatServiceImpl]'
    //   1108: new java/lang/StringBuilder
    //   1111: dup
    //   1112: invokespecial <init> : ()V
    //   1115: ldc_w 'Log - downloadThumbnail - NoSuchPaddingException: '
    //   1118: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1121: aload #5
    //   1123: invokevirtual getMessage : ()Ljava/lang/String;
    //   1126: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1129: invokevirtual toString : ()Ljava/lang/String;
    //   1132: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1135: pop
    //   1136: aload #4
    //   1138: invokevirtual disconnect : ()V
    //   1141: goto -> 682
    //   1144: astore #5
    //   1146: ldc '[ChatServiceImpl]'
    //   1148: new java/lang/StringBuilder
    //   1151: dup
    //   1152: invokespecial <init> : ()V
    //   1155: ldc_w 'Log - downloadThumbnail - BadPaddingException: '
    //   1158: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1161: aload #5
    //   1163: invokevirtual getMessage : ()Ljava/lang/String;
    //   1166: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1169: invokevirtual toString : ()Ljava/lang/String;
    //   1172: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1175: pop
    //   1176: aload #4
    //   1178: invokevirtual disconnect : ()V
    //   1181: goto -> 682
    //   1184: astore #5
    //   1186: ldc '[ChatServiceImpl]'
    //   1188: new java/lang/StringBuilder
    //   1191: dup
    //   1192: invokespecial <init> : ()V
    //   1195: ldc_w 'Log - downloadThumbnail - IllegalBlockSizeException: '
    //   1198: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1201: aload #5
    //   1203: invokevirtual getMessage : ()Ljava/lang/String;
    //   1206: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1209: invokevirtual toString : ()Ljava/lang/String;
    //   1212: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1215: pop
    //   1216: aload #4
    //   1218: invokevirtual disconnect : ()V
    //   1221: goto -> 682
    //   1224: astore #5
    //   1226: ldc '[ChatServiceImpl]'
    //   1228: ldc_w 'Log - downloadThumbnail '
    //   1231: aload #5
    //   1233: invokestatic d : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1236: pop
    //   1237: aload #4
    //   1239: invokevirtual disconnect : ()V
    //   1242: goto -> 682
    //   1245: astore #5
    //   1247: aload #4
    //   1249: invokevirtual disconnect : ()V
    //   1252: aload #5
    //   1254: athrow
    // Exception table:
    //   from	to	target	type
    //   9	39	705	java/lang/Exception
    //   307	350	751	java/net/ProtocolException
    //   307	350	932	java/io/IOException
    //   307	350	1008	java/lang/Exception
    //   350	422	751	java/net/ProtocolException
    //   350	422	932	java/io/IOException
    //   350	422	1008	java/lang/Exception
    //   422	484	645	java/io/IOException
    //   422	484	968	java/security/NoSuchAlgorithmException
    //   422	484	1024	java/security/InvalidKeyException
    //   422	484	1064	java/security/InvalidAlgorithmParameterException
    //   422	484	1104	javax/crypto/NoSuchPaddingException
    //   422	484	1144	javax/crypto/BadPaddingException
    //   422	484	1184	javax/crypto/IllegalBlockSizeException
    //   422	484	1224	java/lang/Exception
    //   422	484	1245	finally
    //   491	603	645	java/io/IOException
    //   491	603	968	java/security/NoSuchAlgorithmException
    //   491	603	1024	java/security/InvalidKeyException
    //   491	603	1064	java/security/InvalidAlgorithmParameterException
    //   491	603	1104	javax/crypto/NoSuchPaddingException
    //   491	603	1144	javax/crypto/BadPaddingException
    //   491	603	1184	javax/crypto/IllegalBlockSizeException
    //   491	603	1224	java/lang/Exception
    //   491	603	1245	finally
    //   603	611	645	java/io/IOException
    //   603	611	968	java/security/NoSuchAlgorithmException
    //   603	611	1024	java/security/InvalidKeyException
    //   603	611	1064	java/security/InvalidAlgorithmParameterException
    //   603	611	1104	javax/crypto/NoSuchPaddingException
    //   603	611	1144	javax/crypto/BadPaddingException
    //   603	611	1184	javax/crypto/IllegalBlockSizeException
    //   603	611	1224	java/lang/Exception
    //   603	611	1245	finally
    //   616	642	645	java/io/IOException
    //   616	642	968	java/security/NoSuchAlgorithmException
    //   616	642	1024	java/security/InvalidKeyException
    //   616	642	1064	java/security/InvalidAlgorithmParameterException
    //   616	642	1104	javax/crypto/NoSuchPaddingException
    //   616	642	1144	javax/crypto/BadPaddingException
    //   616	642	1184	javax/crypto/IllegalBlockSizeException
    //   616	642	1224	java/lang/Exception
    //   616	642	1245	finally
    //   647	677	1245	finally
    //   677	682	751	java/net/ProtocolException
    //   677	682	932	java/io/IOException
    //   677	682	1008	java/lang/Exception
    //   697	702	705	java/lang/Exception
    //   740	748	751	java/net/ProtocolException
    //   740	748	932	java/io/IOException
    //   740	748	1008	java/lang/Exception
    //   765	924	645	java/io/IOException
    //   765	924	968	java/security/NoSuchAlgorithmException
    //   765	924	1024	java/security/InvalidKeyException
    //   765	924	1064	java/security/InvalidAlgorithmParameterException
    //   765	924	1104	javax/crypto/NoSuchPaddingException
    //   765	924	1144	javax/crypto/BadPaddingException
    //   765	924	1184	javax/crypto/IllegalBlockSizeException
    //   765	924	1224	java/lang/Exception
    //   765	924	1245	finally
    //   924	929	751	java/net/ProtocolException
    //   924	929	932	java/io/IOException
    //   924	929	1008	java/lang/Exception
    //   946	965	645	java/io/IOException
    //   946	965	968	java/security/NoSuchAlgorithmException
    //   946	965	1024	java/security/InvalidKeyException
    //   946	965	1064	java/security/InvalidAlgorithmParameterException
    //   946	965	1104	javax/crypto/NoSuchPaddingException
    //   946	965	1144	javax/crypto/BadPaddingException
    //   946	965	1184	javax/crypto/IllegalBlockSizeException
    //   946	965	1224	java/lang/Exception
    //   946	965	1245	finally
    //   970	1000	1245	finally
    //   1000	1005	751	java/net/ProtocolException
    //   1000	1005	932	java/io/IOException
    //   1000	1005	1008	java/lang/Exception
    //   1026	1056	1245	finally
    //   1056	1061	751	java/net/ProtocolException
    //   1056	1061	932	java/io/IOException
    //   1056	1061	1008	java/lang/Exception
    //   1066	1096	1245	finally
    //   1096	1101	751	java/net/ProtocolException
    //   1096	1101	932	java/io/IOException
    //   1096	1101	1008	java/lang/Exception
    //   1106	1136	1245	finally
    //   1136	1141	751	java/net/ProtocolException
    //   1136	1141	932	java/io/IOException
    //   1136	1141	1008	java/lang/Exception
    //   1146	1176	1245	finally
    //   1176	1181	751	java/net/ProtocolException
    //   1176	1181	932	java/io/IOException
    //   1176	1181	1008	java/lang/Exception
    //   1186	1216	1245	finally
    //   1216	1221	751	java/net/ProtocolException
    //   1216	1221	932	java/io/IOException
    //   1216	1221	1008	java/lang/Exception
    //   1226	1237	1245	finally
    //   1237	1242	751	java/net/ProtocolException
    //   1237	1242	932	java/io/IOException
    //   1237	1242	1008	java/lang/Exception
    //   1247	1255	751	java/net/ProtocolException
    //   1247	1255	932	java/io/IOException
    //   1247	1255	1008	java/lang/Exception
  }
  
  public ard c(ard paramard) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: aconst_null
    //   4: astore #5
    //   6: ldc '[ChatServiceImpl]'
    //   8: ldc_w 'endChatSession '
    //   11: ldc_w 'init'
    //   14: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   17: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   20: pop
    //   21: aload_1
    //   22: invokevirtual j : ()Ljava/lang/String;
    //   25: astore #6
    //   27: aload_1
    //   28: invokevirtual E : ()Ljava/lang/String;
    //   31: astore #10
    //   33: aload_1
    //   34: invokevirtual m : ()Ljava/lang/String;
    //   37: astore #7
    //   39: aload_1
    //   40: invokevirtual n : ()Ljava/lang/String;
    //   43: astore #8
    //   45: aload_1
    //   46: invokevirtual p : ()Ljava/lang/Integer;
    //   49: invokestatic a : (Ljava/lang/Integer;)Ljava/lang/String;
    //   52: astore #9
    //   54: aload_1
    //   55: aconst_null
    //   56: ldc '[ChatServiceImpl]'
    //   58: invokevirtual a : (Ljava/lang/String;Ljava/lang/String;)V
    //   61: ldc '[ChatServiceImpl]'
    //   63: ldc_w 'endChatSession '
    //   66: ldc_w '1'
    //   69: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   72: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   75: pop
    //   76: aload #6
    //   78: invokestatic b : (Ljava/lang/String;)Z
    //   81: ifne -> 572
    //   84: aload #4
    //   86: astore_3
    //   87: new java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial <init> : ()V
    //   94: ldc_w '/chat/sessions'
    //   97: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: aload #6
    //   102: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual toString : ()Ljava/lang/String;
    //   108: aload #10
    //   110: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   113: astore #10
    //   115: aload #4
    //   117: astore_3
    //   118: ldc_w '/chat/sessions'
    //   121: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   124: aload #7
    //   126: aload #8
    //   128: aload #9
    //   130: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   133: astore #7
    //   135: aload #4
    //   137: astore_3
    //   138: ldc '[ChatServiceImpl]'
    //   140: ldc_w 'endChatSession '
    //   143: ldc_w '2'
    //   146: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   149: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   152: pop
    //   153: aload #4
    //   155: astore_3
    //   156: aload #7
    //   158: getstatic apz.DELETE : Lapz;
    //   161: aconst_null
    //   162: aload_0
    //   163: getfield g : I
    //   166: getstatic ary.b : Ljava/io/InputStream;
    //   169: aconst_null
    //   170: aload #10
    //   172: iconst_0
    //   173: aload #6
    //   175: iconst_1
    //   176: invokestatic a : (Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    //   179: astore #4
    //   181: aload #4
    //   183: astore_3
    //   184: aload_3
    //   185: ifnull -> 467
    //   188: aload_3
    //   189: astore #4
    //   191: ldc '[ChatServiceImpl]'
    //   193: ldc_w 'endChatSession '
    //   196: ldc_w '3'
    //   199: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   202: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   205: pop
    //   206: aload_3
    //   207: astore #4
    //   209: aload_3
    //   210: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   213: istore_2
    //   214: aload_3
    //   215: astore #4
    //   217: aload_0
    //   218: aload_3
    //   219: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   222: astore #5
    //   224: aload_3
    //   225: astore #4
    //   227: ldc '[ChatServiceImpl]'
    //   229: ldc_w 'httpCode '
    //   232: iload_2
    //   233: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   236: invokestatic a : (Ljava/lang/Integer;)Ljava/lang/String;
    //   239: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   242: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   245: pop
    //   246: aload_3
    //   247: astore #4
    //   249: ldc '[ChatServiceImpl]'
    //   251: ldc_w 'endChatSession '
    //   254: aload #5
    //   256: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   259: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   262: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   265: pop
    //   266: iload_2
    //   267: sipush #204
    //   270: if_icmpne -> 335
    //   273: aload_3
    //   274: astore #4
    //   276: ldc '[ChatServiceImpl]'
    //   278: ldc_w 'endChatSession '
    //   281: ldc_w '4'
    //   284: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   287: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   290: pop
    //   291: aload_3
    //   292: astore #4
    //   294: aload_1
    //   295: invokevirtual w : ()V
    //   298: aload_3
    //   299: astore #4
    //   301: ldc '[ChatServiceImpl]'
    //   303: ldc_w 'endChatSession sucess, response code: 204'
    //   306: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   309: pop
    //   310: aload_3
    //   311: ifnull -> 318
    //   314: aload_3
    //   315: invokevirtual disconnect : ()V
    //   318: ldc '[ChatServiceImpl]'
    //   320: ldc_w 'endChatSession '
    //   323: ldc_w 'end'
    //   326: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   329: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   332: pop
    //   333: aload_1
    //   334: areturn
    //   335: aload_3
    //   336: astore #4
    //   338: ldc '[ChatServiceImpl]'
    //   340: ldc_w 'endChatSession '
    //   343: ldc_w '4e'
    //   346: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   349: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   352: pop
    //   353: aload_3
    //   354: astore #4
    //   356: ldc '[ChatServiceImpl]'
    //   358: new java/lang/StringBuilder
    //   361: dup
    //   362: invokespecial <init> : ()V
    //   365: ldc_w 'endChatSession error server connection failed, status code: '
    //   368: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: iload_2
    //   372: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   375: invokevirtual toString : ()Ljava/lang/String;
    //   378: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   381: pop
    //   382: aload_3
    //   383: astore #4
    //   385: aload_1
    //   386: iload_2
    //   387: invokevirtual b : (I)V
    //   390: aload_3
    //   391: astore #4
    //   393: aload_1
    //   394: new java/lang/StringBuilder
    //   397: dup
    //   398: invokespecial <init> : ()V
    //   401: ldc_w 'Server connection failed, status code: '
    //   404: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: iload_2
    //   408: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   411: invokevirtual toString : ()Ljava/lang/String;
    //   414: invokevirtual b : (Ljava/lang/String;)V
    //   417: aload_3
    //   418: astore #4
    //   420: aload_1
    //   421: aload #5
    //   423: invokevirtual e : (Ljava/lang/String;)V
    //   426: goto -> 310
    //   429: astore #4
    //   431: aload_3
    //   432: astore #4
    //   434: ldc '[ChatServiceImpl]'
    //   436: ldc_w 'infra socket ste'
    //   439: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   442: pop
    //   443: aload_3
    //   444: ifnull -> 318
    //   447: aload_3
    //   448: invokevirtual disconnect : ()V
    //   451: goto -> 318
    //   454: astore_3
    //   455: ldc '[ChatServiceImpl]'
    //   457: ldc_w 'endChatSession httpURLConnection.disconnect();'
    //   460: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   463: pop
    //   464: goto -> 318
    //   467: aload_3
    //   468: astore #4
    //   470: new aqd
    //   473: dup
    //   474: ldc_w 'endChatSession error httpURLConnection is null'
    //   477: invokespecial <init> : (Ljava/lang/String;)V
    //   480: athrow
    //   481: astore #4
    //   483: aload_3
    //   484: astore_1
    //   485: aload_1
    //   486: astore_3
    //   487: ldc '[ChatServiceImpl]'
    //   489: new java/lang/StringBuilder
    //   492: dup
    //   493: invokespecial <init> : ()V
    //   496: ldc_w 'endChatSession error '
    //   499: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   502: aload #4
    //   504: invokevirtual getMessage : ()Ljava/lang/String;
    //   507: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   510: invokevirtual toString : ()Ljava/lang/String;
    //   513: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   516: pop
    //   517: aload_1
    //   518: astore_3
    //   519: new aqd
    //   522: dup
    //   523: ldc_w '999'
    //   526: ldc_w 'endChatSession error'
    //   529: aload #4
    //   531: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   534: athrow
    //   535: astore_1
    //   536: aload_3
    //   537: ifnull -> 544
    //   540: aload_3
    //   541: invokevirtual disconnect : ()V
    //   544: aload_1
    //   545: athrow
    //   546: astore_3
    //   547: ldc '[ChatServiceImpl]'
    //   549: ldc_w 'endChatSession httpURLConnection.disconnect();'
    //   552: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   555: pop
    //   556: goto -> 318
    //   559: astore_3
    //   560: ldc '[ChatServiceImpl]'
    //   562: ldc_w 'endChatSession httpURLConnection.disconnect();'
    //   565: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   568: pop
    //   569: goto -> 544
    //   572: ldc '[ChatServiceImpl]'
    //   574: ldc_w 'endChatSession getSessionChatId is null'
    //   577: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   580: pop
    //   581: goto -> 318
    //   584: astore_1
    //   585: aload #4
    //   587: astore_3
    //   588: goto -> 536
    //   591: astore #4
    //   593: aload #5
    //   595: astore_1
    //   596: goto -> 485
    //   599: astore_3
    //   600: aconst_null
    //   601: astore_3
    //   602: goto -> 431
    // Exception table:
    //   from	to	target	type
    //   87	115	599	java/net/SocketTimeoutException
    //   87	115	591	java/lang/Exception
    //   87	115	535	finally
    //   118	135	599	java/net/SocketTimeoutException
    //   118	135	591	java/lang/Exception
    //   118	135	535	finally
    //   138	153	599	java/net/SocketTimeoutException
    //   138	153	591	java/lang/Exception
    //   138	153	535	finally
    //   156	181	599	java/net/SocketTimeoutException
    //   156	181	591	java/lang/Exception
    //   156	181	535	finally
    //   191	206	429	java/net/SocketTimeoutException
    //   191	206	481	java/lang/Exception
    //   191	206	584	finally
    //   209	214	429	java/net/SocketTimeoutException
    //   209	214	481	java/lang/Exception
    //   209	214	584	finally
    //   217	224	429	java/net/SocketTimeoutException
    //   217	224	481	java/lang/Exception
    //   217	224	584	finally
    //   227	246	429	java/net/SocketTimeoutException
    //   227	246	481	java/lang/Exception
    //   227	246	584	finally
    //   249	266	429	java/net/SocketTimeoutException
    //   249	266	481	java/lang/Exception
    //   249	266	584	finally
    //   276	291	429	java/net/SocketTimeoutException
    //   276	291	481	java/lang/Exception
    //   276	291	584	finally
    //   294	298	429	java/net/SocketTimeoutException
    //   294	298	481	java/lang/Exception
    //   294	298	584	finally
    //   301	310	429	java/net/SocketTimeoutException
    //   301	310	481	java/lang/Exception
    //   301	310	584	finally
    //   314	318	546	java/lang/Exception
    //   338	353	429	java/net/SocketTimeoutException
    //   338	353	481	java/lang/Exception
    //   338	353	584	finally
    //   356	382	429	java/net/SocketTimeoutException
    //   356	382	481	java/lang/Exception
    //   356	382	584	finally
    //   385	390	429	java/net/SocketTimeoutException
    //   385	390	481	java/lang/Exception
    //   385	390	584	finally
    //   393	417	429	java/net/SocketTimeoutException
    //   393	417	481	java/lang/Exception
    //   393	417	584	finally
    //   420	426	429	java/net/SocketTimeoutException
    //   420	426	481	java/lang/Exception
    //   420	426	584	finally
    //   434	443	584	finally
    //   447	451	454	java/lang/Exception
    //   470	481	429	java/net/SocketTimeoutException
    //   470	481	481	java/lang/Exception
    //   470	481	584	finally
    //   487	517	535	finally
    //   519	535	535	finally
    //   540	544	559	java/lang/Exception
  }
  
  public boolean d(ard paramard) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #5
    //   3: aconst_null
    //   4: astore #4
    //   6: ldc '[ChatServiceImpl]'
    //   8: ldc_w 'startChatTranscript '
    //   11: ldc_w 'init'
    //   14: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   17: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   20: pop
    //   21: aload_0
    //   22: getfield h : I
    //   25: iconst_5
    //   26: if_icmple -> 46
    //   29: ldc '[ChatServiceImpl]'
    //   31: ldc_w 'startChatTranscript '
    //   34: ldc_w 'EXIT MAX ERROR_LIMIT_TRYING_SEND_TRANSCRIPT'
    //   37: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   40: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   43: pop
    //   44: iconst_0
    //   45: ireturn
    //   46: aload_1
    //   47: invokevirtual j : ()Ljava/lang/String;
    //   50: invokestatic b : (Ljava/lang/String;)Z
    //   53: ifne -> 564
    //   56: aload #5
    //   58: astore_3
    //   59: aload_1
    //   60: invokevirtual j : ()Ljava/lang/String;
    //   63: invokestatic b : (Ljava/lang/String;)Z
    //   66: ifne -> 389
    //   69: aload #5
    //   71: astore_3
    //   72: ldc_w '{"event" : "{event}" }'
    //   75: ldc_w '{event}'
    //   78: getstatic apu.TypingStarted : Lapu;
    //   81: invokevirtual name : ()Ljava/lang/String;
    //   84: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   87: astore #6
    //   89: aload #5
    //   91: astore_3
    //   92: new java/lang/StringBuilder
    //   95: dup
    //   96: invokespecial <init> : ()V
    //   99: ldc_w '/chat/sessions/transcript'
    //   102: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: aload_1
    //   106: invokevirtual j : ()Ljava/lang/String;
    //   109: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: aload #6
    //   114: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual toString : ()Ljava/lang/String;
    //   120: aload_1
    //   121: invokevirtual E : ()Ljava/lang/String;
    //   124: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   127: astore #7
    //   129: aload #5
    //   131: astore_3
    //   132: ldc_w '/chat/sessions/transcript'
    //   135: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   138: aload_1
    //   139: invokestatic a : (Ljava/lang/String;Lard;)Ljava/lang/String;
    //   142: getstatic apz.POST : Lapz;
    //   145: aconst_null
    //   146: aload_0
    //   147: getfield g : I
    //   150: getstatic ary.b : Ljava/io/InputStream;
    //   153: aconst_null
    //   154: aload #7
    //   156: iconst_1
    //   157: aload_1
    //   158: invokevirtual j : ()Ljava/lang/String;
    //   161: iconst_0
    //   162: invokestatic a : (Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    //   165: astore #5
    //   167: aload #5
    //   169: astore_3
    //   170: aload_3
    //   171: astore #4
    //   173: aload_3
    //   174: invokestatic connect : (Ljava/net/HttpURLConnection;)V
    //   177: aload_3
    //   178: astore #4
    //   180: aload #6
    //   182: aload_3
    //   183: invokestatic a : (Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    //   186: aload_3
    //   187: astore #4
    //   189: aload_3
    //   190: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   193: istore_2
    //   194: aload_3
    //   195: astore #4
    //   197: aload_0
    //   198: aload_3
    //   199: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   202: astore #5
    //   204: aload_3
    //   205: astore #4
    //   207: aload_1
    //   208: iload_2
    //   209: invokevirtual a : (I)V
    //   212: aload_3
    //   213: astore #4
    //   215: ldc '[ChatServiceImpl]'
    //   217: ldc_w 'startChatTranscript '
    //   220: aload #5
    //   222: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   225: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   228: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   231: pop
    //   232: aload_3
    //   233: astore #4
    //   235: aload_3
    //   236: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   239: sipush #201
    //   242: if_icmpne -> 286
    //   245: aload_3
    //   246: astore #4
    //   248: ldc '[ChatServiceImpl]'
    //   250: ldc_w 'startChatTranscript '
    //   253: ldc_w 'end'
    //   256: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   259: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   262: pop
    //   263: aload_3
    //   264: ifnull -> 271
    //   267: aload_3
    //   268: invokevirtual disconnect : ()V
    //   271: iconst_1
    //   272: ireturn
    //   273: astore_1
    //   274: ldc '[ChatServiceImpl]'
    //   276: ldc_w 'startChatTranscript httpURLConnection.disconnect();'
    //   279: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   282: pop
    //   283: goto -> 271
    //   286: aload_3
    //   287: astore #4
    //   289: ldc '[ChatServiceImpl]'
    //   291: new java/lang/StringBuilder
    //   294: dup
    //   295: invokespecial <init> : ()V
    //   298: ldc_w 'startChatTranscript error server connection failed, status code: '
    //   301: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: iload_2
    //   305: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   308: invokevirtual toString : ()Ljava/lang/String;
    //   311: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   314: pop
    //   315: aload_3
    //   316: astore #4
    //   318: aload_1
    //   319: ldc_w '999'
    //   322: invokestatic parseInt : (Ljava/lang/String;)I
    //   325: invokevirtual b : (I)V
    //   328: aload_3
    //   329: astore #4
    //   331: aload_1
    //   332: new java/lang/StringBuilder
    //   335: dup
    //   336: invokespecial <init> : ()V
    //   339: ldc_w 'Server connection failed, status code: '
    //   342: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: iload_2
    //   346: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   349: invokevirtual toString : ()Ljava/lang/String;
    //   352: invokevirtual b : (Ljava/lang/String;)V
    //   355: aload_3
    //   356: astore #4
    //   358: aload_1
    //   359: aload #5
    //   361: invokevirtual e : (Ljava/lang/String;)V
    //   364: aload_3
    //   365: ifnull -> 372
    //   368: aload_3
    //   369: invokevirtual disconnect : ()V
    //   372: ldc '[ChatServiceImpl]'
    //   374: ldc_w 'startChatTranscript '
    //   377: ldc_w 'end'
    //   380: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   383: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   386: pop
    //   387: iconst_0
    //   388: ireturn
    //   389: aload #5
    //   391: astore_3
    //   392: ldc '[ChatServiceImpl]'
    //   394: ldc_w 'startChatTranscript error chatSessionId cannot be null'
    //   397: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   400: pop
    //   401: aload #5
    //   403: astore_3
    //   404: aload_1
    //   405: ldc_w '999'
    //   408: invokestatic parseInt : (Ljava/lang/String;)I
    //   411: invokevirtual b : (I)V
    //   414: aload #5
    //   416: astore_3
    //   417: aload_1
    //   418: ldc_w 'startChatTranscript error chatSessionId cannot be null'
    //   421: invokevirtual b : (Ljava/lang/String;)V
    //   424: aconst_null
    //   425: astore_3
    //   426: goto -> 364
    //   429: astore_1
    //   430: ldc '[ChatServiceImpl]'
    //   432: ldc_w 'startChatTranscript httpURLConnection.disconnect();'
    //   435: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   438: pop
    //   439: goto -> 372
    //   442: astore_1
    //   443: aconst_null
    //   444: astore_3
    //   445: aload_3
    //   446: astore #4
    //   448: ldc '[ChatServiceImpl]'
    //   450: ldc_w 'infra socket ste'
    //   453: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   456: pop
    //   457: aload_3
    //   458: ifnull -> 372
    //   461: aload_3
    //   462: invokevirtual disconnect : ()V
    //   465: goto -> 372
    //   468: astore_1
    //   469: ldc '[ChatServiceImpl]'
    //   471: ldc_w 'startChatTranscript httpURLConnection.disconnect();'
    //   474: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   477: pop
    //   478: goto -> 372
    //   481: astore_3
    //   482: aload #4
    //   484: astore_1
    //   485: aload_3
    //   486: astore #4
    //   488: aload_1
    //   489: astore_3
    //   490: ldc '[ChatServiceImpl]'
    //   492: new java/lang/StringBuilder
    //   495: dup
    //   496: invokespecial <init> : ()V
    //   499: ldc_w 'startChatTranscript error '
    //   502: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   505: aload #4
    //   507: invokevirtual getMessage : ()Ljava/lang/String;
    //   510: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   513: invokevirtual toString : ()Ljava/lang/String;
    //   516: aload #4
    //   518: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   521: pop
    //   522: aload_1
    //   523: astore_3
    //   524: new aqd
    //   527: dup
    //   528: ldc_w '999'
    //   531: ldc_w 'endChatSession error'
    //   534: aload #4
    //   536: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   539: athrow
    //   540: astore_1
    //   541: aload_3
    //   542: ifnull -> 549
    //   545: aload_3
    //   546: invokevirtual disconnect : ()V
    //   549: aload_1
    //   550: athrow
    //   551: astore_3
    //   552: ldc '[ChatServiceImpl]'
    //   554: ldc_w 'startChatTranscript httpURLConnection.disconnect();'
    //   557: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   560: pop
    //   561: goto -> 549
    //   564: ldc '[ChatServiceImpl]'
    //   566: ldc_w 'startChatTranscript getSessionChatId is null'
    //   569: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   572: pop
    //   573: goto -> 372
    //   576: astore_1
    //   577: aload #4
    //   579: astore_3
    //   580: goto -> 541
    //   583: astore #4
    //   585: aload_3
    //   586: astore_1
    //   587: goto -> 488
    //   590: astore_1
    //   591: goto -> 445
    // Exception table:
    //   from	to	target	type
    //   59	69	442	java/net/SocketTimeoutException
    //   59	69	481	java/lang/Exception
    //   59	69	540	finally
    //   72	89	442	java/net/SocketTimeoutException
    //   72	89	481	java/lang/Exception
    //   72	89	540	finally
    //   92	129	442	java/net/SocketTimeoutException
    //   92	129	481	java/lang/Exception
    //   92	129	540	finally
    //   132	167	442	java/net/SocketTimeoutException
    //   132	167	481	java/lang/Exception
    //   132	167	540	finally
    //   173	177	590	java/net/SocketTimeoutException
    //   173	177	583	java/lang/Exception
    //   173	177	576	finally
    //   180	186	590	java/net/SocketTimeoutException
    //   180	186	583	java/lang/Exception
    //   180	186	576	finally
    //   189	194	590	java/net/SocketTimeoutException
    //   189	194	583	java/lang/Exception
    //   189	194	576	finally
    //   197	204	590	java/net/SocketTimeoutException
    //   197	204	583	java/lang/Exception
    //   197	204	576	finally
    //   207	212	590	java/net/SocketTimeoutException
    //   207	212	583	java/lang/Exception
    //   207	212	576	finally
    //   215	232	590	java/net/SocketTimeoutException
    //   215	232	583	java/lang/Exception
    //   215	232	576	finally
    //   235	245	590	java/net/SocketTimeoutException
    //   235	245	583	java/lang/Exception
    //   235	245	576	finally
    //   248	263	590	java/net/SocketTimeoutException
    //   248	263	583	java/lang/Exception
    //   248	263	576	finally
    //   267	271	273	java/lang/Exception
    //   289	315	590	java/net/SocketTimeoutException
    //   289	315	583	java/lang/Exception
    //   289	315	576	finally
    //   318	328	590	java/net/SocketTimeoutException
    //   318	328	583	java/lang/Exception
    //   318	328	576	finally
    //   331	355	590	java/net/SocketTimeoutException
    //   331	355	583	java/lang/Exception
    //   331	355	576	finally
    //   358	364	590	java/net/SocketTimeoutException
    //   358	364	583	java/lang/Exception
    //   358	364	576	finally
    //   368	372	429	java/lang/Exception
    //   392	401	442	java/net/SocketTimeoutException
    //   392	401	481	java/lang/Exception
    //   392	401	540	finally
    //   404	414	442	java/net/SocketTimeoutException
    //   404	414	481	java/lang/Exception
    //   404	414	540	finally
    //   417	424	442	java/net/SocketTimeoutException
    //   417	424	481	java/lang/Exception
    //   417	424	540	finally
    //   448	457	576	finally
    //   461	465	468	java/lang/Exception
    //   490	522	540	finally
    //   524	540	540	finally
    //   545	549	551	java/lang/Exception
  }
  
  public boolean e(ard paramard) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #5
    //   3: aconst_null
    //   4: astore #4
    //   6: ldc '[ChatServiceImpl]'
    //   8: ldc_w 'endChatTranscript '
    //   11: ldc_w 'init'
    //   14: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   17: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   20: pop
    //   21: aload_0
    //   22: getfield h : I
    //   25: iconst_5
    //   26: if_icmple -> 46
    //   29: ldc '[ChatServiceImpl]'
    //   31: ldc_w 'endChatTranscript '
    //   34: ldc_w 'EXIT MAX ERROR_LIMIT_TRYING_SEND_TRANSCRIPT'
    //   37: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   40: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   43: pop
    //   44: iconst_0
    //   45: ireturn
    //   46: aload_1
    //   47: invokevirtual j : ()Ljava/lang/String;
    //   50: invokestatic b : (Ljava/lang/String;)Z
    //   53: ifne -> 500
    //   56: aload #5
    //   58: astore_3
    //   59: ldc_w '{"event" : "{event}" }'
    //   62: ldc_w '{event}'
    //   65: getstatic apu.TypingStopped : Lapu;
    //   68: invokevirtual name : ()Ljava/lang/String;
    //   71: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   74: astore #6
    //   76: aload #5
    //   78: astore_3
    //   79: new java/lang/StringBuilder
    //   82: dup
    //   83: invokespecial <init> : ()V
    //   86: ldc_w '/chat/sessions/transcript'
    //   89: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_1
    //   93: invokevirtual j : ()Ljava/lang/String;
    //   96: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: aload #6
    //   101: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual toString : ()Ljava/lang/String;
    //   107: aload_1
    //   108: invokevirtual E : ()Ljava/lang/String;
    //   111: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   114: astore #7
    //   116: aload #5
    //   118: astore_3
    //   119: ldc_w '/chat/sessions/transcript'
    //   122: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   125: aload_1
    //   126: invokestatic a : (Ljava/lang/String;Lard;)Ljava/lang/String;
    //   129: getstatic apz.POST : Lapz;
    //   132: aconst_null
    //   133: aload_0
    //   134: getfield g : I
    //   137: getstatic ary.b : Ljava/io/InputStream;
    //   140: aconst_null
    //   141: aload #7
    //   143: iconst_1
    //   144: aload_1
    //   145: invokevirtual j : ()Ljava/lang/String;
    //   148: iconst_0
    //   149: invokestatic a : (Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    //   152: astore #5
    //   154: aload #5
    //   156: astore_3
    //   157: aload_3
    //   158: astore #4
    //   160: aload_3
    //   161: invokestatic connect : (Ljava/net/HttpURLConnection;)V
    //   164: aload_3
    //   165: astore #4
    //   167: aload #6
    //   169: aload_3
    //   170: invokestatic a : (Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    //   173: aload_3
    //   174: astore #4
    //   176: aload_3
    //   177: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   180: istore_2
    //   181: aload_3
    //   182: astore #4
    //   184: aload_0
    //   185: aload_3
    //   186: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   189: astore #5
    //   191: aload_3
    //   192: astore #4
    //   194: aload_1
    //   195: iload_2
    //   196: invokevirtual a : (I)V
    //   199: aload_3
    //   200: astore #4
    //   202: ldc '[ChatServiceImpl]'
    //   204: ldc_w 'endChatTranscript '
    //   207: aload #5
    //   209: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   212: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   215: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   218: pop
    //   219: iload_2
    //   220: sipush #201
    //   223: if_icmpne -> 267
    //   226: aload_3
    //   227: astore #4
    //   229: ldc '[ChatServiceImpl]'
    //   231: ldc_w 'endChatTranscript '
    //   234: ldc_w 'end'
    //   237: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   240: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   243: pop
    //   244: aload_3
    //   245: ifnull -> 252
    //   248: aload_3
    //   249: invokevirtual disconnect : ()V
    //   252: iconst_1
    //   253: ireturn
    //   254: astore_1
    //   255: ldc '[ChatServiceImpl]'
    //   257: ldc_w 'endChatTranscript httpURLConnection.disconnect();'
    //   260: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   263: pop
    //   264: goto -> 252
    //   267: aload_3
    //   268: astore #4
    //   270: ldc '[ChatServiceImpl]'
    //   272: new java/lang/StringBuilder
    //   275: dup
    //   276: invokespecial <init> : ()V
    //   279: ldc_w 'endChatTranscript error server connection failed, status code: '
    //   282: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: iload_2
    //   286: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   289: invokevirtual toString : ()Ljava/lang/String;
    //   292: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   295: pop
    //   296: aload_3
    //   297: astore #4
    //   299: aload_1
    //   300: iload_2
    //   301: invokevirtual b : (I)V
    //   304: aload_3
    //   305: astore #4
    //   307: aload_1
    //   308: new java/lang/StringBuilder
    //   311: dup
    //   312: invokespecial <init> : ()V
    //   315: ldc_w 'Server connection failed, status code: '
    //   318: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: iload_2
    //   322: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   325: invokevirtual toString : ()Ljava/lang/String;
    //   328: invokevirtual b : (Ljava/lang/String;)V
    //   331: aload_3
    //   332: astore #4
    //   334: aload_1
    //   335: aload #5
    //   337: invokevirtual e : (Ljava/lang/String;)V
    //   340: aload_3
    //   341: ifnull -> 348
    //   344: aload_3
    //   345: invokevirtual disconnect : ()V
    //   348: ldc '[ChatServiceImpl]'
    //   350: ldc_w 'endChatTranscript '
    //   353: ldc_w 'end'
    //   356: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   359: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   362: pop
    //   363: iconst_0
    //   364: ireturn
    //   365: astore_1
    //   366: ldc '[ChatServiceImpl]'
    //   368: ldc_w 'endChatTranscript httpURLConnection.disconnect();'
    //   371: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   374: pop
    //   375: goto -> 348
    //   378: astore_1
    //   379: aconst_null
    //   380: astore_3
    //   381: aload_3
    //   382: astore #4
    //   384: ldc '[ChatServiceImpl]'
    //   386: ldc_w 'infra socket ste'
    //   389: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   392: pop
    //   393: aload_3
    //   394: ifnull -> 348
    //   397: aload_3
    //   398: invokevirtual disconnect : ()V
    //   401: goto -> 348
    //   404: astore_1
    //   405: ldc '[ChatServiceImpl]'
    //   407: ldc_w 'endChatTranscript httpURLConnection.disconnect();'
    //   410: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   413: pop
    //   414: goto -> 348
    //   417: astore_3
    //   418: aload #4
    //   420: astore_1
    //   421: aload_3
    //   422: astore #4
    //   424: aload_1
    //   425: astore_3
    //   426: ldc '[ChatServiceImpl]'
    //   428: new java/lang/StringBuilder
    //   431: dup
    //   432: invokespecial <init> : ()V
    //   435: ldc_w 'endChatTranscript error '
    //   438: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: aload #4
    //   443: invokevirtual getMessage : ()Ljava/lang/String;
    //   446: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: invokevirtual toString : ()Ljava/lang/String;
    //   452: aload #4
    //   454: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   457: pop
    //   458: aload_1
    //   459: astore_3
    //   460: new aqd
    //   463: dup
    //   464: ldc_w '999'
    //   467: ldc_w 'endChatTranscript error'
    //   470: aload #4
    //   472: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   475: athrow
    //   476: astore_1
    //   477: aload_3
    //   478: ifnull -> 485
    //   481: aload_3
    //   482: invokevirtual disconnect : ()V
    //   485: aload_1
    //   486: athrow
    //   487: astore_3
    //   488: ldc '[ChatServiceImpl]'
    //   490: ldc_w 'endChatTranscript httpURLConnection.disconnect();'
    //   493: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   496: pop
    //   497: goto -> 485
    //   500: ldc '[ChatServiceImpl]'
    //   502: ldc_w 'endChatTranscript getSessionChatId is null'
    //   505: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   508: pop
    //   509: goto -> 348
    //   512: astore_1
    //   513: aload #4
    //   515: astore_3
    //   516: goto -> 477
    //   519: astore #4
    //   521: aload_3
    //   522: astore_1
    //   523: goto -> 424
    //   526: astore_1
    //   527: goto -> 381
    // Exception table:
    //   from	to	target	type
    //   59	76	378	java/net/SocketTimeoutException
    //   59	76	417	java/lang/Exception
    //   59	76	476	finally
    //   79	116	378	java/net/SocketTimeoutException
    //   79	116	417	java/lang/Exception
    //   79	116	476	finally
    //   119	154	378	java/net/SocketTimeoutException
    //   119	154	417	java/lang/Exception
    //   119	154	476	finally
    //   160	164	526	java/net/SocketTimeoutException
    //   160	164	519	java/lang/Exception
    //   160	164	512	finally
    //   167	173	526	java/net/SocketTimeoutException
    //   167	173	519	java/lang/Exception
    //   167	173	512	finally
    //   176	181	526	java/net/SocketTimeoutException
    //   176	181	519	java/lang/Exception
    //   176	181	512	finally
    //   184	191	526	java/net/SocketTimeoutException
    //   184	191	519	java/lang/Exception
    //   184	191	512	finally
    //   194	199	526	java/net/SocketTimeoutException
    //   194	199	519	java/lang/Exception
    //   194	199	512	finally
    //   202	219	526	java/net/SocketTimeoutException
    //   202	219	519	java/lang/Exception
    //   202	219	512	finally
    //   229	244	526	java/net/SocketTimeoutException
    //   229	244	519	java/lang/Exception
    //   229	244	512	finally
    //   248	252	254	java/lang/Exception
    //   270	296	526	java/net/SocketTimeoutException
    //   270	296	519	java/lang/Exception
    //   270	296	512	finally
    //   299	304	526	java/net/SocketTimeoutException
    //   299	304	519	java/lang/Exception
    //   299	304	512	finally
    //   307	331	526	java/net/SocketTimeoutException
    //   307	331	519	java/lang/Exception
    //   307	331	512	finally
    //   334	340	526	java/net/SocketTimeoutException
    //   334	340	519	java/lang/Exception
    //   334	340	512	finally
    //   344	348	365	java/lang/Exception
    //   384	393	512	finally
    //   397	401	404	java/lang/Exception
    //   426	458	476	finally
    //   460	476	476	finally
    //   481	485	487	java/lang/Exception
  }
  
  public void f(ard paramard) {
    // Byte code:
    //   0: ldc '[ChatServiceImpl]'
    //   2: ldc_w 'sendChatTranscript '
    //   5: ldc_w 'init'
    //   8: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   11: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   14: pop
    //   15: aload_1
    //   16: invokevirtual j : ()Ljava/lang/String;
    //   19: invokestatic b : (Ljava/lang/String;)Z
    //   22: ifne -> 1023
    //   25: aload_1
    //   26: invokevirtual r : ()Ljava/util/List;
    //   29: invokestatic m : (Ljava/util/List;)Ljava/util/List;
    //   32: invokeinterface iterator : ()Ljava/util/Iterator;
    //   37: astore #5
    //   39: aload #5
    //   41: invokeinterface hasNext : ()Z
    //   46: ifeq -> 1032
    //   49: aload #5
    //   51: invokeinterface next : ()Ljava/lang/Object;
    //   56: checkcast ark
    //   59: astore #6
    //   61: aload #6
    //   63: ifnull -> 72
    //   66: aload #6
    //   68: iconst_1
    //   69: invokevirtual g : (Z)V
    //   72: aload_0
    //   73: getfield h : I
    //   76: iconst_5
    //   77: if_icmple -> 96
    //   80: ldc '[ChatServiceImpl]'
    //   82: ldc_w 'sendChatTranscript '
    //   85: ldc_w 'EXIT MAX ERROR_LIMIT_TRYING_SEND_TRANSCRIPT'
    //   88: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   91: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   94: pop
    //   95: return
    //   96: aload #6
    //   98: iconst_1
    //   99: invokevirtual f : (Z)V
    //   102: aload #6
    //   104: invokevirtual l : ()Larj;
    //   107: ifnull -> 224
    //   110: aload #6
    //   112: invokevirtual l : ()Larj;
    //   115: aload #6
    //   117: invokevirtual l : ()Larj;
    //   120: invokevirtual c : ()Ljava/io/File;
    //   123: invokevirtual length : ()J
    //   126: invokestatic valueOf : (J)Ljava/lang/String;
    //   129: invokevirtual c : (Ljava/lang/String;)V
    //   132: aload #6
    //   134: invokevirtual l : ()Larj;
    //   137: iconst_1
    //   138: invokevirtual h : (Z)V
    //   141: ldc '[ChatServiceImpl]'
    //   143: new java/lang/StringBuilder
    //   146: dup
    //   147: invokespecial <init> : ()V
    //   150: ldc_w 'sendChatTranscript - getFileTransferCryptoKey : '
    //   153: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: aload_1
    //   157: invokevirtual J : ()Ljava/lang/String;
    //   160: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual toString : ()Ljava/lang/String;
    //   166: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   169: pop
    //   170: aload #6
    //   172: invokevirtual l : ()Larj;
    //   175: aload_1
    //   176: invokevirtual J : ()Ljava/lang/String;
    //   179: invokevirtual b : (Ljava/lang/String;)V
    //   182: ldc '[ChatServiceImpl]'
    //   184: new java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial <init> : ()V
    //   191: ldc_w 'sendChatTranscript - getCryptoKey : '
    //   194: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: aload #6
    //   199: invokevirtual l : ()Larj;
    //   202: invokevirtual r : ()Ljava/lang/String;
    //   205: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual toString : ()Ljava/lang/String;
    //   211: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   214: pop
    //   215: aload_0
    //   216: aload #6
    //   218: invokespecial b : (Lark;)V
    //   221: goto -> 39
    //   224: aload #6
    //   226: invokevirtual d : ()Ljava/lang/String;
    //   229: astore_3
    //   230: ldc_w '{"event" : "{event}", "msg" : "{msg}" }'
    //   233: ldc_w '{event}'
    //   236: getstatic apu.TextMessageSent : Lapu;
    //   239: invokevirtual name : ()Ljava/lang/String;
    //   242: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   245: ldc_w '{msg}'
    //   248: invokestatic a : ()Lars;
    //   251: aload_3
    //   252: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   255: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   258: invokevirtual trim : ()Ljava/lang/String;
    //   261: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   264: astore #7
    //   266: new java/lang/StringBuilder
    //   269: dup
    //   270: invokespecial <init> : ()V
    //   273: ldc_w '/chat/sessions/transcript'
    //   276: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: aload_1
    //   280: invokevirtual j : ()Ljava/lang/String;
    //   283: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: aload #7
    //   288: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual toString : ()Ljava/lang/String;
    //   294: aload_1
    //   295: invokevirtual E : ()Ljava/lang/String;
    //   298: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   301: astore_3
    //   302: ldc_w '/chat/sessions/transcript'
    //   305: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   308: aload_1
    //   309: invokestatic a : (Ljava/lang/String;Lard;)Ljava/lang/String;
    //   312: getstatic apz.POST : Lapz;
    //   315: aconst_null
    //   316: aload_0
    //   317: getfield g : I
    //   320: getstatic ary.b : Ljava/io/InputStream;
    //   323: aconst_null
    //   324: aload_3
    //   325: iconst_1
    //   326: aload_1
    //   327: invokevirtual j : ()Ljava/lang/String;
    //   330: iconst_0
    //   331: invokestatic a : (Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    //   334: astore_3
    //   335: aload_3
    //   336: astore #4
    //   338: aload_3
    //   339: invokestatic connect : (Ljava/net/HttpURLConnection;)V
    //   342: aload_3
    //   343: astore #4
    //   345: aload #7
    //   347: aload_3
    //   348: invokestatic a : (Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    //   351: aload_3
    //   352: astore #4
    //   354: aload_3
    //   355: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   358: istore_2
    //   359: aload_3
    //   360: astore #4
    //   362: aload_1
    //   363: iload_2
    //   364: invokevirtual a : (I)V
    //   367: aload_3
    //   368: astore #4
    //   370: aload_0
    //   371: aload_3
    //   372: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   375: astore #7
    //   377: aload_3
    //   378: astore #4
    //   380: ldc '[ChatServiceImpl]'
    //   382: new java/lang/StringBuilder
    //   385: dup
    //   386: invokespecial <init> : ()V
    //   389: ldc_w 'sendChatTranscript - httpData: '
    //   392: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: iload_2
    //   396: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   399: invokevirtual toString : ()Ljava/lang/String;
    //   402: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   405: pop
    //   406: iload_2
    //   407: sipush #201
    //   410: if_icmpne -> 724
    //   413: aload_3
    //   414: astore #4
    //   416: ldc '[ChatServiceImpl]'
    //   418: new java/lang/StringBuilder
    //   421: dup
    //   422: invokespecial <init> : ()V
    //   425: ldc_w 'sendChatTranscript - httpCode: '
    //   428: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: iload_2
    //   432: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   435: invokevirtual toString : ()Ljava/lang/String;
    //   438: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   441: pop
    //   442: aload_3
    //   443: astore #4
    //   445: aload_0
    //   446: iconst_0
    //   447: putfield h : I
    //   450: aload_3
    //   451: astore #4
    //   453: aload #7
    //   455: invokestatic c : (Ljava/lang/String;)Ljava/util/List;
    //   458: astore #8
    //   460: aload_3
    //   461: astore #4
    //   463: ldc '[ChatServiceImpl]'
    //   465: ldc_w 'Transcript enviado: '
    //   468: aload #7
    //   470: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   473: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   476: pop
    //   477: aload #8
    //   479: ifnull -> 673
    //   482: aload_3
    //   483: astore #4
    //   485: aload #8
    //   487: invokeinterface size : ()I
    //   492: ifle -> 673
    //   495: aload_3
    //   496: astore #4
    //   498: aload #8
    //   500: invokeinterface iterator : ()Ljava/util/Iterator;
    //   505: astore #7
    //   507: aload_3
    //   508: astore #4
    //   510: aload #7
    //   512: invokeinterface hasNext : ()Z
    //   517: ifeq -> 673
    //   520: aload_3
    //   521: astore #4
    //   523: aload #7
    //   525: invokeinterface next : ()Ljava/lang/Object;
    //   530: checkcast ark
    //   533: astore #8
    //   535: aload #8
    //   537: ifnull -> 507
    //   540: aload_3
    //   541: astore #4
    //   543: aload #8
    //   545: invokevirtual d : ()Ljava/lang/String;
    //   548: invokestatic b : (Ljava/lang/String;)Z
    //   551: ifne -> 573
    //   554: aload_3
    //   555: astore #4
    //   557: aload #8
    //   559: invokestatic a : ()Lars;
    //   562: aload #8
    //   564: invokevirtual d : ()Ljava/lang/String;
    //   567: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   570: invokevirtual a : (Ljava/lang/String;)V
    //   573: aload_3
    //   574: astore #4
    //   576: aload #6
    //   578: aload #8
    //   580: invokevirtual a : ()J
    //   583: invokevirtual a : (J)V
    //   586: aload_3
    //   587: astore #4
    //   589: aload #6
    //   591: aload #8
    //   593: invokevirtual g : ()Ljava/lang/String;
    //   596: invokevirtual c : (Ljava/lang/String;)V
    //   599: aload_3
    //   600: astore #4
    //   602: aload #6
    //   604: iconst_0
    //   605: invokevirtual c : (Z)V
    //   608: aload_3
    //   609: astore #4
    //   611: aload #6
    //   613: iconst_0
    //   614: invokevirtual f : (Z)V
    //   617: aload_3
    //   618: astore #4
    //   620: aload #6
    //   622: iconst_1
    //   623: invokevirtual d : (Z)V
    //   626: aload_3
    //   627: astore #4
    //   629: aload #6
    //   631: iconst_1
    //   632: invokevirtual g : (Z)V
    //   635: goto -> 507
    //   638: astore #4
    //   640: ldc '[ChatServiceImpl]'
    //   642: ldc_w 'infra socket ste'
    //   645: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   648: pop
    //   649: aload_3
    //   650: ifnull -> 39
    //   653: aload_3
    //   654: invokevirtual disconnect : ()V
    //   657: goto -> 39
    //   660: astore_3
    //   661: ldc '[ChatServiceImpl]'
    //   663: ldc_w 'sendChatTranscript httpURLConnection.disconnect();'
    //   666: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   669: pop
    //   670: goto -> 39
    //   673: aload_3
    //   674: astore #4
    //   676: aload #6
    //   678: iconst_1
    //   679: invokevirtual g : (Z)V
    //   682: aload_3
    //   683: astore #4
    //   685: ldc '[ChatServiceImpl]'
    //   687: ldc_w 'sendChatTranscript '
    //   690: ldc_w 'end'
    //   693: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   696: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   699: pop
    //   700: aload_3
    //   701: ifnull -> 39
    //   704: aload_3
    //   705: invokevirtual disconnect : ()V
    //   708: goto -> 39
    //   711: astore_3
    //   712: ldc '[ChatServiceImpl]'
    //   714: ldc_w 'sendChatTranscript httpURLConnection.disconnect();'
    //   717: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   720: pop
    //   721: goto -> 39
    //   724: aload_3
    //   725: astore #4
    //   727: ldc '[ChatServiceImpl]'
    //   729: new java/lang/StringBuilder
    //   732: dup
    //   733: invokespecial <init> : ()V
    //   736: ldc_w 'sendChatTranscript error server connection failed, status code: '
    //   739: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   742: iload_2
    //   743: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   746: invokestatic a : (Ljava/lang/Integer;)Ljava/lang/String;
    //   749: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   752: invokevirtual toString : ()Ljava/lang/String;
    //   755: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   758: pop
    //   759: aload_3
    //   760: astore #4
    //   762: aload_1
    //   763: iload_2
    //   764: invokevirtual b : (I)V
    //   767: aload_3
    //   768: astore #4
    //   770: aload_1
    //   771: new java/lang/StringBuilder
    //   774: dup
    //   775: invokespecial <init> : ()V
    //   778: ldc_w 'Server connection failed, status code: '
    //   781: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   784: iload_2
    //   785: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   788: invokevirtual toString : ()Ljava/lang/String;
    //   791: invokevirtual b : (Ljava/lang/String;)V
    //   794: aload_3
    //   795: astore #4
    //   797: aload_1
    //   798: aload #7
    //   800: invokevirtual e : (Ljava/lang/String;)V
    //   803: aload_3
    //   804: astore #4
    //   806: aload #6
    //   808: iconst_1
    //   809: invokevirtual h : (Z)V
    //   812: aload_3
    //   813: astore #4
    //   815: aload #6
    //   817: new arh
    //   820: dup
    //   821: invokespecial <init> : ()V
    //   824: invokevirtual a : (Larh;)V
    //   827: aload_3
    //   828: astore #4
    //   830: aload #6
    //   832: invokevirtual k : ()Larh;
    //   835: sipush #999
    //   838: invokevirtual a : (I)V
    //   841: aload_3
    //   842: astore #4
    //   844: aload #6
    //   846: invokevirtual k : ()Larh;
    //   849: aload #7
    //   851: invokevirtual b : (Ljava/lang/String;)V
    //   854: aload_3
    //   855: astore #4
    //   857: aload #6
    //   859: invokevirtual k : ()Larh;
    //   862: ldc_w 'Nao foi possivel enviar a mensagem'
    //   865: invokevirtual a : (Ljava/lang/String;)V
    //   868: aload_3
    //   869: astore #4
    //   871: aload_0
    //   872: aload_0
    //   873: getfield h : I
    //   876: iconst_1
    //   877: iadd
    //   878: putfield h : I
    //   881: aload_3
    //   882: astore #4
    //   884: aload_0
    //   885: getfield h : I
    //   888: iconst_5
    //   889: if_icmple -> 700
    //   892: aload_3
    //   893: astore #4
    //   895: aload_0
    //   896: aload_1
    //   897: invokespecial j : (Lard;)V
    //   900: aload_3
    //   901: astore #4
    //   903: aload_0
    //   904: aload_1
    //   905: invokevirtual c : (Lard;)Lard;
    //   908: pop
    //   909: goto -> 700
    //   912: astore_1
    //   913: aload_3
    //   914: astore #4
    //   916: ldc '[ChatServiceImpl]'
    //   918: ldc_w 'sendChatTranscript error '
    //   921: aload_1
    //   922: invokevirtual getMessage : ()Ljava/lang/String;
    //   925: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   928: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   931: aload_1
    //   932: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   935: pop
    //   936: aload_3
    //   937: astore #4
    //   939: aload #6
    //   941: new arh
    //   944: dup
    //   945: invokespecial <init> : ()V
    //   948: invokevirtual a : (Larh;)V
    //   951: aload_3
    //   952: astore #4
    //   954: aload #6
    //   956: invokevirtual k : ()Larh;
    //   959: sipush #999
    //   962: invokevirtual a : (I)V
    //   965: aload_3
    //   966: astore #4
    //   968: aload #6
    //   970: invokevirtual k : ()Larh;
    //   973: ldc_w 'Nao foi possivel enviar a mensagem'
    //   976: invokevirtual a : (Ljava/lang/String;)V
    //   979: aload_3
    //   980: astore #4
    //   982: new aqd
    //   985: dup
    //   986: ldc_w '999'
    //   989: ldc_w 'sendChatTranscript error'
    //   992: aload_1
    //   993: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   996: athrow
    //   997: astore_1
    //   998: aload #4
    //   1000: ifnull -> 1008
    //   1003: aload #4
    //   1005: invokevirtual disconnect : ()V
    //   1008: aload_1
    //   1009: athrow
    //   1010: astore_3
    //   1011: ldc '[ChatServiceImpl]'
    //   1013: ldc_w 'sendChatTranscript httpURLConnection.disconnect();'
    //   1016: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1019: pop
    //   1020: goto -> 1008
    //   1023: ldc '[ChatServiceImpl]'
    //   1025: ldc_w 'sendChatTranscript getSessionChatId is null'
    //   1028: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1031: pop
    //   1032: ldc '[ChatServiceImpl]'
    //   1034: ldc_w 'sendChatTranscript '
    //   1037: ldc_w 'end'
    //   1040: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   1043: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1046: pop
    //   1047: return
    //   1048: astore_1
    //   1049: aconst_null
    //   1050: astore #4
    //   1052: goto -> 998
    //   1055: astore_1
    //   1056: aload_3
    //   1057: astore #4
    //   1059: goto -> 998
    //   1062: astore_1
    //   1063: aconst_null
    //   1064: astore_3
    //   1065: goto -> 913
    //   1068: astore_3
    //   1069: aconst_null
    //   1070: astore_3
    //   1071: goto -> 640
    // Exception table:
    //   from	to	target	type
    //   224	335	1068	java/net/SocketTimeoutException
    //   224	335	1062	java/lang/Exception
    //   224	335	1048	finally
    //   338	342	638	java/net/SocketTimeoutException
    //   338	342	912	java/lang/Exception
    //   338	342	997	finally
    //   345	351	638	java/net/SocketTimeoutException
    //   345	351	912	java/lang/Exception
    //   345	351	997	finally
    //   354	359	638	java/net/SocketTimeoutException
    //   354	359	912	java/lang/Exception
    //   354	359	997	finally
    //   362	367	638	java/net/SocketTimeoutException
    //   362	367	912	java/lang/Exception
    //   362	367	997	finally
    //   370	377	638	java/net/SocketTimeoutException
    //   370	377	912	java/lang/Exception
    //   370	377	997	finally
    //   380	406	638	java/net/SocketTimeoutException
    //   380	406	912	java/lang/Exception
    //   380	406	997	finally
    //   416	442	638	java/net/SocketTimeoutException
    //   416	442	912	java/lang/Exception
    //   416	442	997	finally
    //   445	450	638	java/net/SocketTimeoutException
    //   445	450	912	java/lang/Exception
    //   445	450	997	finally
    //   453	460	638	java/net/SocketTimeoutException
    //   453	460	912	java/lang/Exception
    //   453	460	997	finally
    //   463	477	638	java/net/SocketTimeoutException
    //   463	477	912	java/lang/Exception
    //   463	477	997	finally
    //   485	495	638	java/net/SocketTimeoutException
    //   485	495	912	java/lang/Exception
    //   485	495	997	finally
    //   498	507	638	java/net/SocketTimeoutException
    //   498	507	912	java/lang/Exception
    //   498	507	997	finally
    //   510	520	638	java/net/SocketTimeoutException
    //   510	520	912	java/lang/Exception
    //   510	520	997	finally
    //   523	535	638	java/net/SocketTimeoutException
    //   523	535	912	java/lang/Exception
    //   523	535	997	finally
    //   543	554	638	java/net/SocketTimeoutException
    //   543	554	912	java/lang/Exception
    //   543	554	997	finally
    //   557	573	638	java/net/SocketTimeoutException
    //   557	573	912	java/lang/Exception
    //   557	573	997	finally
    //   576	586	638	java/net/SocketTimeoutException
    //   576	586	912	java/lang/Exception
    //   576	586	997	finally
    //   589	599	638	java/net/SocketTimeoutException
    //   589	599	912	java/lang/Exception
    //   589	599	997	finally
    //   602	608	638	java/net/SocketTimeoutException
    //   602	608	912	java/lang/Exception
    //   602	608	997	finally
    //   611	617	638	java/net/SocketTimeoutException
    //   611	617	912	java/lang/Exception
    //   611	617	997	finally
    //   620	626	638	java/net/SocketTimeoutException
    //   620	626	912	java/lang/Exception
    //   620	626	997	finally
    //   629	635	638	java/net/SocketTimeoutException
    //   629	635	912	java/lang/Exception
    //   629	635	997	finally
    //   640	649	1055	finally
    //   653	657	660	java/lang/Exception
    //   676	682	638	java/net/SocketTimeoutException
    //   676	682	912	java/lang/Exception
    //   676	682	997	finally
    //   685	700	638	java/net/SocketTimeoutException
    //   685	700	912	java/lang/Exception
    //   685	700	997	finally
    //   704	708	711	java/lang/Exception
    //   727	759	638	java/net/SocketTimeoutException
    //   727	759	912	java/lang/Exception
    //   727	759	997	finally
    //   762	767	638	java/net/SocketTimeoutException
    //   762	767	912	java/lang/Exception
    //   762	767	997	finally
    //   770	794	638	java/net/SocketTimeoutException
    //   770	794	912	java/lang/Exception
    //   770	794	997	finally
    //   797	803	638	java/net/SocketTimeoutException
    //   797	803	912	java/lang/Exception
    //   797	803	997	finally
    //   806	812	638	java/net/SocketTimeoutException
    //   806	812	912	java/lang/Exception
    //   806	812	997	finally
    //   815	827	638	java/net/SocketTimeoutException
    //   815	827	912	java/lang/Exception
    //   815	827	997	finally
    //   830	841	638	java/net/SocketTimeoutException
    //   830	841	912	java/lang/Exception
    //   830	841	997	finally
    //   844	854	638	java/net/SocketTimeoutException
    //   844	854	912	java/lang/Exception
    //   844	854	997	finally
    //   857	868	638	java/net/SocketTimeoutException
    //   857	868	912	java/lang/Exception
    //   857	868	997	finally
    //   871	881	638	java/net/SocketTimeoutException
    //   871	881	912	java/lang/Exception
    //   871	881	997	finally
    //   884	892	638	java/net/SocketTimeoutException
    //   884	892	912	java/lang/Exception
    //   884	892	997	finally
    //   895	900	638	java/net/SocketTimeoutException
    //   895	900	912	java/lang/Exception
    //   895	900	997	finally
    //   903	909	638	java/net/SocketTimeoutException
    //   903	909	912	java/lang/Exception
    //   903	909	997	finally
    //   916	936	997	finally
    //   939	951	997	finally
    //   954	965	997	finally
    //   968	979	997	finally
    //   982	997	997	finally
    //   1003	1008	1010	java/lang/Exception
  }
  
  public ard g(ard paramard) {
    // Byte code:
    //   0: ldc '[ChatServiceImpl]'
    //   2: ldc_w 'receiveChatTranscript '
    //   5: ldc_w 'init'
    //   8: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   11: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   14: pop
    //   15: aload_1
    //   16: invokevirtual j : ()Ljava/lang/String;
    //   19: invokestatic b : (Ljava/lang/String;)Z
    //   22: ifne -> 599
    //   25: aload_1
    //   26: invokevirtual p : ()Ljava/lang/Integer;
    //   29: ifnull -> 616
    //   32: aload_1
    //   33: invokevirtual p : ()Ljava/lang/Integer;
    //   36: invokevirtual intValue : ()I
    //   39: iflt -> 616
    //   42: ldc_w '/chat/sessions/transcript?gt={position}'
    //   45: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   48: astore #5
    //   50: new java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial <init> : ()V
    //   57: ldc_w '/chat/sessions/transcript?gt={position}'
    //   60: ldc_w '{position}'
    //   63: aload_1
    //   64: invokevirtual p : ()Ljava/lang/Integer;
    //   67: invokestatic a : (Ljava/lang/Integer;)Ljava/lang/String;
    //   70: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   73: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: aload_1
    //   77: invokevirtual j : ()Ljava/lang/String;
    //   80: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: invokevirtual toString : ()Ljava/lang/String;
    //   86: aload_1
    //   87: invokevirtual E : ()Ljava/lang/String;
    //   90: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   93: astore #6
    //   95: aload #5
    //   97: aload_1
    //   98: invokestatic a : (Ljava/lang/String;Lard;)Ljava/lang/String;
    //   101: astore #7
    //   103: aload #7
    //   105: getstatic apz.GET : Lapz;
    //   108: aconst_null
    //   109: aload_1
    //   110: invokevirtual A : ()I
    //   113: getstatic ary.b : Ljava/io/InputStream;
    //   116: aconst_null
    //   117: aload #6
    //   119: iconst_1
    //   120: aload_1
    //   121: invokevirtual j : ()Ljava/lang/String;
    //   124: iconst_0
    //   125: invokestatic a : (Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    //   128: astore #6
    //   130: aload #6
    //   132: astore #5
    //   134: aload #6
    //   136: invokestatic connect : (Ljava/net/HttpURLConnection;)V
    //   139: aload #6
    //   141: astore #5
    //   143: aload #6
    //   145: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   148: istore_2
    //   149: aload #6
    //   151: astore #5
    //   153: aload_1
    //   154: iload_2
    //   155: invokevirtual a : (I)V
    //   158: aload #6
    //   160: astore #5
    //   162: aload_0
    //   163: aload #6
    //   165: new java/lang/StringBuilder
    //   168: dup
    //   169: invokespecial <init> : ()V
    //   172: ldc_w 'receiveChatTranscript: '
    //   175: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: aload #7
    //   180: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual toString : ()Ljava/lang/String;
    //   186: invokespecial a : (Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    //   189: astore #7
    //   191: iload_2
    //   192: sipush #200
    //   195: if_icmpne -> 1535
    //   198: aload #6
    //   200: astore #5
    //   202: aload #7
    //   204: invokestatic d : (Ljava/lang/String;)Ljava/util/List;
    //   207: astore #7
    //   209: aload #7
    //   211: ifnull -> 1406
    //   214: aload #6
    //   216: astore #5
    //   218: aload #7
    //   220: invokeinterface size : ()I
    //   225: ifle -> 1406
    //   228: aload #6
    //   230: astore #5
    //   232: aload #7
    //   234: invokeinterface iterator : ()Ljava/util/Iterator;
    //   239: astore #8
    //   241: aload #6
    //   243: astore #5
    //   245: aload #8
    //   247: invokeinterface hasNext : ()Z
    //   252: ifeq -> 1406
    //   255: aload #6
    //   257: astore #5
    //   259: aload #8
    //   261: invokeinterface next : ()Ljava/lang/Object;
    //   266: checkcast ark
    //   269: astore #9
    //   271: aload #9
    //   273: ifnull -> 241
    //   276: aload #6
    //   278: astore #5
    //   280: aload_1
    //   281: invokevirtual r : ()Ljava/util/List;
    //   284: aload #9
    //   286: invokeinterface contains : (Ljava/lang/Object;)Z
    //   291: ifne -> 241
    //   294: aload #6
    //   296: astore #5
    //   298: ldc '[ChatServiceImpl]'
    //   300: new java/lang/StringBuilder
    //   303: dup
    //   304: invokespecial <init> : ()V
    //   307: ldc_w 'receiveChatTranscript: '
    //   310: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: aload #9
    //   315: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   318: invokevirtual toString : ()Ljava/lang/String;
    //   321: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   324: pop
    //   325: aload #6
    //   327: astore #5
    //   329: aload #9
    //   331: invokevirtual c : ()Lapu;
    //   334: getstatic apu.FileTransfer : Lapu;
    //   337: if_acmpeq -> 627
    //   340: aload #6
    //   342: astore #5
    //   344: aload #9
    //   346: invokestatic a : ()Lars;
    //   349: aload #9
    //   351: invokevirtual d : ()Ljava/lang/String;
    //   354: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   357: invokevirtual a : (Ljava/lang/String;)V
    //   360: aload #6
    //   362: astore #5
    //   364: aload_1
    //   365: aload #9
    //   367: invokevirtual b : (Lark;)V
    //   370: aload #6
    //   372: astore #5
    //   374: aload_1
    //   375: aload #9
    //   377: invokevirtual a : (Lark;)V
    //   380: aload #6
    //   382: astore #5
    //   384: aload #9
    //   386: invokevirtual b : ()Laqb;
    //   389: getstatic aqb.Agent : Laqb;
    //   392: if_acmpne -> 241
    //   395: aload #6
    //   397: astore #5
    //   399: aload #9
    //   401: invokevirtual c : ()Lapu;
    //   404: getstatic apu.TextMessageSent : Lapu;
    //   407: if_acmpeq -> 425
    //   410: aload #6
    //   412: astore #5
    //   414: aload #9
    //   416: invokevirtual c : ()Lapu;
    //   419: getstatic apu.AgentLeft : Lapu;
    //   422: if_acmpne -> 241
    //   425: aload #6
    //   427: astore #5
    //   429: ldc_w 'typing stopped manual'
    //   432: aconst_null
    //   433: invokestatic a : (Ljava/lang/String;Larj;)Lark;
    //   436: astore #10
    //   438: aload #6
    //   440: astore #5
    //   442: aload #10
    //   444: getstatic aqb.Agent : Laqb;
    //   447: invokevirtual a : (Laqb;)V
    //   450: aload #6
    //   452: astore #5
    //   454: aload #10
    //   456: getstatic apu.TypingStopped : Lapu;
    //   459: invokevirtual a : (Lapu;)V
    //   462: aload #6
    //   464: astore #5
    //   466: aload #10
    //   468: aload #9
    //   470: invokevirtual e : ()Ljava/lang/String;
    //   473: invokevirtual b : (Ljava/lang/String;)V
    //   476: aload #6
    //   478: astore #5
    //   480: aload #10
    //   482: aload #9
    //   484: invokevirtual g : ()Ljava/lang/String;
    //   487: invokevirtual c : (Ljava/lang/String;)V
    //   490: aload #6
    //   492: astore #5
    //   494: aload #10
    //   496: iconst_1
    //   497: invokevirtual g : (Z)V
    //   500: aload #6
    //   502: astore #5
    //   504: aload_1
    //   505: aload #10
    //   507: invokevirtual a : (Lark;)V
    //   510: goto -> 241
    //   513: astore #7
    //   515: aload #6
    //   517: astore #5
    //   519: aload_1
    //   520: aload #6
    //   522: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   525: invokevirtual b : (I)V
    //   528: aload #6
    //   530: astore #5
    //   532: aload_1
    //   533: new java/lang/StringBuilder
    //   536: dup
    //   537: invokespecial <init> : ()V
    //   540: ldc_w 'Server connection failed, status code: '
    //   543: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   546: aload #6
    //   548: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   551: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   554: invokevirtual toString : ()Ljava/lang/String;
    //   557: invokevirtual b : (Ljava/lang/String;)V
    //   560: aload #6
    //   562: astore #5
    //   564: aload_1
    //   565: aload_0
    //   566: aload #6
    //   568: invokespecial a : (Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   571: invokevirtual e : (Ljava/lang/String;)V
    //   574: aload #6
    //   576: astore #5
    //   578: ldc '[ChatServiceImpl]'
    //   580: ldc_w 'getResponseCode IOException (check timeout) '
    //   583: aload #7
    //   585: invokestatic d : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   588: pop
    //   589: aload #6
    //   591: ifnull -> 599
    //   594: aload #6
    //   596: invokevirtual disconnect : ()V
    //   599: ldc '[ChatServiceImpl]'
    //   601: ldc_w 'receiveChatTranscript '
    //   604: ldc_w 'end'
    //   607: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   610: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   613: pop
    //   614: aload_1
    //   615: areturn
    //   616: ldc_w '/chat/sessions/transcript?gt={position}'
    //   619: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   622: astore #5
    //   624: goto -> 50
    //   627: aload #6
    //   629: astore #5
    //   631: aload #9
    //   633: invokevirtual t : ()Ljava/lang/String;
    //   636: astore #16
    //   638: aload #6
    //   640: astore #5
    //   642: ldc_w 'event'
    //   645: aload #16
    //   647: iconst_0
    //   648: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   651: invokestatic b : (Ljava/lang/Object;)Lapy;
    //   654: astore #9
    //   656: aload #6
    //   658: astore #5
    //   660: aload #9
    //   662: getstatic apy.FileTransferRequest : Lapy;
    //   665: invokevirtual equals : (Ljava/lang/Object;)Z
    //   668: ifeq -> 241
    //   671: aload #6
    //   673: astore #5
    //   675: ldc_w 'id'
    //   678: aload #16
    //   680: iconst_1
    //   681: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   684: invokestatic e : (Ljava/lang/Object;)J
    //   687: lstore_3
    //   688: aload #6
    //   690: astore #5
    //   692: ldc_w 'fileName'
    //   695: aload #16
    //   697: iconst_0
    //   698: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   701: invokestatic d : (Ljava/lang/Object;)Ljava/lang/String;
    //   704: astore #10
    //   706: aload #6
    //   708: astore #5
    //   710: ldc_w 'peerId'
    //   713: aload #16
    //   715: iconst_0
    //   716: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   719: invokestatic d : (Ljava/lang/Object;)Ljava/lang/String;
    //   722: astore #11
    //   724: aload #6
    //   726: astore #5
    //   728: ldc_w 'nickname'
    //   731: aload #16
    //   733: iconst_0
    //   734: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   737: invokestatic d : (Ljava/lang/Object;)Ljava/lang/String;
    //   740: astore #12
    //   742: aload #6
    //   744: astore #5
    //   746: ldc_w 'fileSize'
    //   749: aload #16
    //   751: iconst_0
    //   752: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   755: invokestatic d : (Ljava/lang/Object;)Ljava/lang/String;
    //   758: astore #13
    //   760: aload #6
    //   762: astore #5
    //   764: ldc_w 'fileId'
    //   767: aload #16
    //   769: iconst_0
    //   770: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   773: invokestatic d : (Ljava/lang/Object;)Ljava/lang/String;
    //   776: astore #14
    //   778: aload #6
    //   780: astore #5
    //   782: ldc_w 'source'
    //   785: aload #16
    //   787: iconst_0
    //   788: invokestatic a : (Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    //   791: invokestatic c : (Ljava/lang/Object;)Laqb;
    //   794: astore #15
    //   796: aload #6
    //   798: astore #5
    //   800: ldc '[ChatServiceImpl]'
    //   802: new java/lang/StringBuilder
    //   805: dup
    //   806: invokespecial <init> : ()V
    //   809: ldc_w 'Teste - EVENT: '
    //   812: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   815: aload #9
    //   817: invokevirtual getValue : ()Ljava/lang/String;
    //   820: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   823: invokevirtual toString : ()Ljava/lang/String;
    //   826: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   829: pop
    //   830: aload #6
    //   832: astore #5
    //   834: ldc '[ChatServiceImpl]'
    //   836: new java/lang/StringBuilder
    //   839: dup
    //   840: invokespecial <init> : ()V
    //   843: ldc_w 'Teste - JSON Transcript: '
    //   846: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   849: aload #16
    //   851: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   854: invokevirtual toString : ()Ljava/lang/String;
    //   857: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   860: pop
    //   861: aload #6
    //   863: astore #5
    //   865: new arj
    //   868: dup
    //   869: invokespecial <init> : ()V
    //   872: astore #16
    //   874: aload #6
    //   876: astore #5
    //   878: ldc ''
    //   880: aconst_null
    //   881: invokestatic a : (Ljava/lang/String;Larj;)Lark;
    //   884: astore #17
    //   886: aload #6
    //   888: astore #5
    //   890: aload #17
    //   892: lload_3
    //   893: invokestatic valueOf : (J)Ljava/lang/Long;
    //   896: invokevirtual longValue : ()J
    //   899: invokevirtual a : (J)V
    //   902: aload #6
    //   904: astore #5
    //   906: aload #17
    //   908: aload #16
    //   910: invokevirtual a : (Larj;)V
    //   913: aload #6
    //   915: astore #5
    //   917: aload #17
    //   919: invokevirtual l : ()Larj;
    //   922: invokestatic a : ()Lars;
    //   925: aload #10
    //   927: invokevirtual c : (Ljava/lang/String;)Ljava/lang/String;
    //   930: invokevirtual d : (Ljava/lang/String;)V
    //   933: aload #6
    //   935: astore #5
    //   937: aload #17
    //   939: aload #15
    //   941: invokevirtual a : (Laqb;)V
    //   944: aload #6
    //   946: astore #5
    //   948: aload #17
    //   950: aload #11
    //   952: invokevirtual c : (Ljava/lang/String;)V
    //   955: aload #6
    //   957: astore #5
    //   959: aload #17
    //   961: getstatic apu.FileTransfer : Lapu;
    //   964: invokevirtual a : (Lapu;)V
    //   967: aload #6
    //   969: astore #5
    //   971: aload #17
    //   973: invokevirtual l : ()Larj;
    //   976: aload #9
    //   978: invokevirtual a : (Lapy;)V
    //   981: aload #6
    //   983: astore #5
    //   985: aload #17
    //   987: aload #12
    //   989: invokevirtual b : (Ljava/lang/String;)V
    //   992: aload #6
    //   994: astore #5
    //   996: aload #17
    //   998: invokevirtual l : ()Larj;
    //   1001: aload #13
    //   1003: invokevirtual c : (Ljava/lang/String;)V
    //   1006: aload #6
    //   1008: astore #5
    //   1010: aload #17
    //   1012: invokevirtual l : ()Larj;
    //   1015: aload #14
    //   1017: invokevirtual a : (Ljava/lang/String;)V
    //   1020: aload #6
    //   1022: astore #5
    //   1024: aload #17
    //   1026: invokevirtual l : ()Larj;
    //   1029: new java/io/File
    //   1032: dup
    //   1033: new java/lang/StringBuilder
    //   1036: dup
    //   1037: invokespecial <init> : ()V
    //   1040: getstatic android/os/Environment.DIRECTORY_DOWNLOADS : Ljava/lang/String;
    //   1043: invokestatic getExternalStoragePublicDirectory : (Ljava/lang/String;)Ljava/io/File;
    //   1046: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1049: ldc_w '/'
    //   1052: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1055: aload #17
    //   1057: invokevirtual l : ()Larj;
    //   1060: invokevirtual u : ()Ljava/lang/String;
    //   1063: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1066: invokevirtual toString : ()Ljava/lang/String;
    //   1069: invokespecial <init> : (Ljava/lang/String;)V
    //   1072: invokevirtual a : (Ljava/io/File;)V
    //   1075: aload #6
    //   1077: astore #5
    //   1079: aload #17
    //   1081: invokevirtual l : ()Larj;
    //   1084: invokevirtual c : ()Ljava/io/File;
    //   1087: invokestatic a : (Ljava/io/File;)Z
    //   1090: ifeq -> 1363
    //   1093: aload #6
    //   1095: astore #5
    //   1097: aload #17
    //   1099: invokevirtual l : ()Larj;
    //   1102: new java/io/File
    //   1105: dup
    //   1106: new java/lang/StringBuilder
    //   1109: dup
    //   1110: invokespecial <init> : ()V
    //   1113: invokestatic a : ()Lard;
    //   1116: invokevirtual x : ()Landroid/content/Context;
    //   1119: invokevirtual getCacheDir : ()Ljava/io/File;
    //   1122: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   1125: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1128: ldc_w '/'
    //   1131: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1134: aload #17
    //   1136: invokevirtual l : ()Larj;
    //   1139: invokevirtual u : ()Ljava/lang/String;
    //   1142: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1145: invokevirtual toString : ()Ljava/lang/String;
    //   1148: invokespecial <init> : (Ljava/lang/String;)V
    //   1151: invokevirtual b : (Ljava/io/File;)V
    //   1154: aload #6
    //   1156: astore #5
    //   1158: aload_0
    //   1159: aload #17
    //   1161: invokevirtual l : ()Larj;
    //   1164: invokevirtual b : (Larj;)V
    //   1167: aload #6
    //   1169: astore #5
    //   1171: aload #17
    //   1173: iconst_1
    //   1174: invokevirtual g : (Z)V
    //   1177: aload #6
    //   1179: astore #5
    //   1181: aload #7
    //   1183: aload #17
    //   1185: invokeinterface add : (Ljava/lang/Object;)Z
    //   1190: pop
    //   1191: aload #6
    //   1193: astore #5
    //   1195: aload_1
    //   1196: invokevirtual r : ()Ljava/util/List;
    //   1199: aload #17
    //   1201: invokeinterface add : (Ljava/lang/Object;)Z
    //   1206: pop
    //   1207: aload #6
    //   1209: astore #5
    //   1211: ldc '[ChatServiceImpl]'
    //   1213: new java/lang/StringBuilder
    //   1216: dup
    //   1217: invokespecial <init> : ()V
    //   1220: ldc_w 'Teste - Transcript'
    //   1223: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1226: aload #17
    //   1228: invokevirtual toString : ()Ljava/lang/String;
    //   1231: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1234: invokevirtual toString : ()Ljava/lang/String;
    //   1237: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1240: pop
    //   1241: aload #6
    //   1243: astore #5
    //   1245: ldc '[ChatServiceImpl]'
    //   1247: ldc_w 'receiveChatTranscript - File Not Permitted'
    //   1250: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1253: pop
    //   1254: goto -> 241
    //   1257: astore #7
    //   1259: aload #6
    //   1261: astore #5
    //   1263: ldc '[ChatServiceImpl]'
    //   1265: ldc_w 'getResponseCode Exception '
    //   1268: aload #7
    //   1270: invokestatic d : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1273: pop
    //   1274: goto -> 589
    //   1277: astore #7
    //   1279: aload #6
    //   1281: astore #5
    //   1283: aload #7
    //   1285: invokevirtual getMessage : ()Ljava/lang/String;
    //   1288: ifnull -> 2094
    //   1291: aload #6
    //   1293: astore #5
    //   1295: ldc '[ChatServiceImpl]'
    //   1297: new java/lang/StringBuilder
    //   1300: dup
    //   1301: invokespecial <init> : ()V
    //   1304: ldc_w 'receiveChatTranscript error '
    //   1307: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1310: aload #7
    //   1312: invokevirtual getMessage : ()Ljava/lang/String;
    //   1315: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   1318: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1321: invokevirtual toString : ()Ljava/lang/String;
    //   1324: aload #7
    //   1326: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1329: pop
    //   1330: aload #6
    //   1332: astore #5
    //   1334: new aqd
    //   1337: dup
    //   1338: ldc_w '999'
    //   1341: ldc_w 'endChatSession error'
    //   1344: aload #7
    //   1346: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1349: athrow
    //   1350: astore_1
    //   1351: aload #5
    //   1353: ifnull -> 1361
    //   1356: aload #5
    //   1358: invokevirtual disconnect : ()V
    //   1361: aload_1
    //   1362: athrow
    //   1363: aload #6
    //   1365: astore #5
    //   1367: aload #17
    //   1369: iconst_1
    //   1370: invokevirtual g : (Z)V
    //   1373: aload #6
    //   1375: astore #5
    //   1377: aload #7
    //   1379: aload #17
    //   1381: invokeinterface add : (Ljava/lang/Object;)Z
    //   1386: pop
    //   1387: aload #6
    //   1389: astore #5
    //   1391: aload_1
    //   1392: invokevirtual r : ()Ljava/util/List;
    //   1395: aload #17
    //   1397: invokeinterface add : (Ljava/lang/Object;)Z
    //   1402: pop
    //   1403: goto -> 1207
    //   1406: aload #6
    //   1408: astore #5
    //   1410: aload_1
    //   1411: invokevirtual r : ()Ljava/util/List;
    //   1414: invokeinterface size : ()I
    //   1419: ifle -> 1509
    //   1422: aload #6
    //   1424: astore #5
    //   1426: aload_1
    //   1427: aload_1
    //   1428: invokevirtual r : ()Ljava/util/List;
    //   1431: invokestatic o : (Ljava/util/List;)J
    //   1434: l2i
    //   1435: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   1438: invokevirtual a : (Ljava/lang/Integer;)V
    //   1441: aload #6
    //   1443: astore #5
    //   1445: aload_1
    //   1446: invokevirtual o : ()Ljava/lang/Integer;
    //   1449: ifnull -> 1520
    //   1452: aload #6
    //   1454: astore #5
    //   1456: aload_1
    //   1457: invokevirtual o : ()Ljava/lang/Integer;
    //   1460: invokevirtual intValue : ()I
    //   1463: iflt -> 1520
    //   1466: aload #6
    //   1468: astore #5
    //   1470: aload_1
    //   1471: invokevirtual o : ()Ljava/lang/Integer;
    //   1474: invokevirtual intValue : ()I
    //   1477: aload_1
    //   1478: invokevirtual p : ()Ljava/lang/Integer;
    //   1481: invokevirtual intValue : ()I
    //   1484: iconst_1
    //   1485: isub
    //   1486: if_icmplt -> 1509
    //   1489: aload #6
    //   1491: astore #5
    //   1493: aload_1
    //   1494: aload_1
    //   1495: invokevirtual o : ()Ljava/lang/Integer;
    //   1498: invokevirtual intValue : ()I
    //   1501: iconst_1
    //   1502: iadd
    //   1503: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   1506: invokevirtual b : (Ljava/lang/Integer;)V
    //   1509: aload #6
    //   1511: astore #5
    //   1513: aload_1
    //   1514: invokevirtual w : ()V
    //   1517: goto -> 589
    //   1520: aload #6
    //   1522: astore #5
    //   1524: aload_1
    //   1525: iconst_0
    //   1526: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   1529: invokevirtual b : (Ljava/lang/Integer;)V
    //   1532: goto -> 1509
    //   1535: aload #6
    //   1537: astore #5
    //   1539: aload_0
    //   1540: getfield e : I
    //   1543: sipush #150
    //   1546: if_icmpgt -> 1772
    //   1549: iload_2
    //   1550: sipush #404
    //   1553: if_icmpne -> 1689
    //   1556: aload #6
    //   1558: astore #5
    //   1560: ldc '[ChatServiceImpl]'
    //   1562: new java/lang/StringBuilder
    //   1565: dup
    //   1566: invokespecial <init> : ()V
    //   1569: ldc_w 'receiveChatTranscript error server connection failed, status code: '
    //   1572: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1575: iload_2
    //   1576: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1579: invokevirtual toString : ()Ljava/lang/String;
    //   1582: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1585: pop
    //   1586: aload #6
    //   1588: astore #5
    //   1590: aload_1
    //   1591: iload_2
    //   1592: invokevirtual b : (I)V
    //   1595: aload #6
    //   1597: astore #5
    //   1599: aload_1
    //   1600: new java/lang/StringBuilder
    //   1603: dup
    //   1604: invokespecial <init> : ()V
    //   1607: ldc_w 'Server connection failed, status code: '
    //   1610: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1613: iload_2
    //   1614: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1617: invokevirtual toString : ()Ljava/lang/String;
    //   1620: invokevirtual b : (Ljava/lang/String;)V
    //   1623: aload #6
    //   1625: astore #5
    //   1627: ldc '[ChatServiceImpl]'
    //   1629: new java/lang/StringBuilder
    //   1632: dup
    //   1633: invokespecial <init> : ()V
    //   1636: ldc_w 'receiveChatTranscript error server: '
    //   1639: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1642: aload #7
    //   1644: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1647: invokevirtual toString : ()Ljava/lang/String;
    //   1650: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1653: pop
    //   1654: aload #6
    //   1656: astore #5
    //   1658: aload_1
    //   1659: aload #7
    //   1661: invokevirtual e : (Ljava/lang/String;)V
    //   1664: aload #6
    //   1666: astore #5
    //   1668: ldc '[ChatServiceImpl]'
    //   1670: ldc_w 'Disconnect manual from client'
    //   1673: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1676: pop
    //   1677: aload #6
    //   1679: astore #5
    //   1681: aload_0
    //   1682: aload_1
    //   1683: invokespecial j : (Lard;)V
    //   1686: goto -> 589
    //   1689: aload #6
    //   1691: astore #5
    //   1693: aload_0
    //   1694: aload_0
    //   1695: getfield e : I
    //   1698: iconst_1
    //   1699: iadd
    //   1700: putfield e : I
    //   1703: aload #6
    //   1705: astore #5
    //   1707: ldc '[ChatServiceImpl]'
    //   1709: new java/lang/StringBuilder
    //   1712: dup
    //   1713: invokespecial <init> : ()V
    //   1716: ldc_w 'Monitor error count: '
    //   1719: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1722: aload_0
    //   1723: getfield e : I
    //   1726: invokestatic valueOf : (I)Ljava/lang/String;
    //   1729: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1732: invokevirtual toString : ()Ljava/lang/String;
    //   1735: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1738: pop
    //   1739: aload #6
    //   1741: astore #5
    //   1743: ldc '[ChatServiceImpl]'
    //   1745: new java/lang/StringBuilder
    //   1748: dup
    //   1749: invokespecial <init> : ()V
    //   1752: ldc_w 'receiveChatTranscript error server connection failed, status code: '
    //   1755: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1758: iload_2
    //   1759: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1762: invokevirtual toString : ()Ljava/lang/String;
    //   1765: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1768: pop
    //   1769: goto -> 589
    //   1772: iload_2
    //   1773: sipush #401
    //   1776: if_icmpne -> 1934
    //   1779: aload #6
    //   1781: astore #5
    //   1783: ldc '[ChatServiceImpl]'
    //   1785: ldc_w 'Disconnect manual from client'
    //   1788: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1791: pop
    //   1792: aload #6
    //   1794: astore #5
    //   1796: aload_0
    //   1797: aload_1
    //   1798: invokespecial j : (Lard;)V
    //   1801: aload #6
    //   1803: astore #5
    //   1805: ldc '[ChatServiceImpl]'
    //   1807: ldc_w 'Atingiu o limite maximo de erro no receiveChatTranscript >= 150'
    //   1810: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1813: pop
    //   1814: aload #6
    //   1816: astore #5
    //   1818: ldc '[ChatServiceImpl]'
    //   1820: new java/lang/StringBuilder
    //   1823: dup
    //   1824: invokespecial <init> : ()V
    //   1827: ldc_w 'receiveChatTranscript error server connection failed, status code: '
    //   1830: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1833: iload_2
    //   1834: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1837: invokevirtual toString : ()Ljava/lang/String;
    //   1840: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1843: pop
    //   1844: aload #6
    //   1846: astore #5
    //   1848: aload_1
    //   1849: iload_2
    //   1850: invokevirtual b : (I)V
    //   1853: aload #6
    //   1855: astore #5
    //   1857: aload_1
    //   1858: new java/lang/StringBuilder
    //   1861: dup
    //   1862: invokespecial <init> : ()V
    //   1865: ldc_w 'Server connection failed, status code: '
    //   1868: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1871: iload_2
    //   1872: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1875: invokevirtual toString : ()Ljava/lang/String;
    //   1878: invokevirtual b : (Ljava/lang/String;)V
    //   1881: aload #6
    //   1883: astore #5
    //   1885: ldc '[ChatServiceImpl]'
    //   1887: new java/lang/StringBuilder
    //   1890: dup
    //   1891: invokespecial <init> : ()V
    //   1894: ldc_w 'receiveChatTranscript error server: '
    //   1897: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1900: aload #7
    //   1902: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1905: invokevirtual toString : ()Ljava/lang/String;
    //   1908: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1911: pop
    //   1912: aload #6
    //   1914: astore #5
    //   1916: aload_1
    //   1917: aload #7
    //   1919: invokevirtual e : (Ljava/lang/String;)V
    //   1922: aload #6
    //   1924: astore #5
    //   1926: aload_0
    //   1927: aload_1
    //   1928: invokespecial j : (Lard;)V
    //   1931: goto -> 589
    //   1934: aload #6
    //   1936: astore #5
    //   1938: ldc '[ChatServiceImpl]'
    //   1940: ldc_w 'Atingiu o limite maximo de erro no receiveChatTranscript >= 150'
    //   1943: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   1946: pop
    //   1947: aload #6
    //   1949: astore #5
    //   1951: ldc '[ChatServiceImpl]'
    //   1953: new java/lang/StringBuilder
    //   1956: dup
    //   1957: invokespecial <init> : ()V
    //   1960: ldc_w 'receiveChatTranscript error server connection failed, status code: '
    //   1963: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1966: iload_2
    //   1967: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1970: invokevirtual toString : ()Ljava/lang/String;
    //   1973: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1976: pop
    //   1977: aload #6
    //   1979: astore #5
    //   1981: aload_1
    //   1982: iload_2
    //   1983: invokevirtual b : (I)V
    //   1986: aload #6
    //   1988: astore #5
    //   1990: aload_1
    //   1991: new java/lang/StringBuilder
    //   1994: dup
    //   1995: invokespecial <init> : ()V
    //   1998: ldc_w 'Server connection failed, status code: '
    //   2001: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2004: iload_2
    //   2005: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   2008: invokevirtual toString : ()Ljava/lang/String;
    //   2011: invokevirtual b : (Ljava/lang/String;)V
    //   2014: aload #6
    //   2016: astore #5
    //   2018: ldc '[ChatServiceImpl]'
    //   2020: new java/lang/StringBuilder
    //   2023: dup
    //   2024: invokespecial <init> : ()V
    //   2027: ldc_w 'receiveChatTranscript error server: '
    //   2030: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2033: aload #7
    //   2035: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2038: invokevirtual toString : ()Ljava/lang/String;
    //   2041: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   2044: pop
    //   2045: aload #6
    //   2047: astore #5
    //   2049: aload_1
    //   2050: aload #7
    //   2052: invokevirtual e : (Ljava/lang/String;)V
    //   2055: aload #6
    //   2057: astore #5
    //   2059: ldc '[ChatServiceImpl]'
    //   2061: ldc_w 'Disconnect manual from client'
    //   2064: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   2067: pop
    //   2068: aload #6
    //   2070: astore #5
    //   2072: aload_0
    //   2073: aload_1
    //   2074: invokespecial j : (Lard;)V
    //   2077: goto -> 1922
    //   2080: astore #5
    //   2082: ldc '[ChatServiceImpl]'
    //   2084: ldc_w 'receiveChatTranscript httpURLConnection.disconnect();'
    //   2087: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   2090: pop
    //   2091: goto -> 599
    //   2094: aload #6
    //   2096: ifnull -> 599
    //   2099: aload #6
    //   2101: invokevirtual disconnect : ()V
    //   2104: goto -> 599
    //   2107: astore #5
    //   2109: ldc '[ChatServiceImpl]'
    //   2111: ldc_w 'receiveChatTranscript httpURLConnection.disconnect();'
    //   2114: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   2117: pop
    //   2118: goto -> 599
    //   2121: astore #5
    //   2123: ldc '[ChatServiceImpl]'
    //   2125: ldc_w 'receiveChatTranscript httpURLConnection.disconnect();'
    //   2128: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   2131: pop
    //   2132: goto -> 1361
    //   2135: astore_1
    //   2136: aconst_null
    //   2137: astore #5
    //   2139: goto -> 1351
    //   2142: astore #7
    //   2144: aconst_null
    //   2145: astore #6
    //   2147: goto -> 1279
    // Exception table:
    //   from	to	target	type
    //   25	50	2142	java/lang/Exception
    //   25	50	2135	finally
    //   50	130	2142	java/lang/Exception
    //   50	130	2135	finally
    //   134	139	1277	java/lang/Exception
    //   134	139	1350	finally
    //   143	149	513	java/io/IOException
    //   143	149	1257	java/lang/Exception
    //   143	149	1350	finally
    //   153	158	513	java/io/IOException
    //   153	158	1257	java/lang/Exception
    //   153	158	1350	finally
    //   162	191	513	java/io/IOException
    //   162	191	1257	java/lang/Exception
    //   162	191	1350	finally
    //   202	209	513	java/io/IOException
    //   202	209	1257	java/lang/Exception
    //   202	209	1350	finally
    //   218	228	513	java/io/IOException
    //   218	228	1257	java/lang/Exception
    //   218	228	1350	finally
    //   232	241	513	java/io/IOException
    //   232	241	1257	java/lang/Exception
    //   232	241	1350	finally
    //   245	255	513	java/io/IOException
    //   245	255	1257	java/lang/Exception
    //   245	255	1350	finally
    //   259	271	513	java/io/IOException
    //   259	271	1257	java/lang/Exception
    //   259	271	1350	finally
    //   280	294	513	java/io/IOException
    //   280	294	1257	java/lang/Exception
    //   280	294	1350	finally
    //   298	325	513	java/io/IOException
    //   298	325	1257	java/lang/Exception
    //   298	325	1350	finally
    //   329	340	513	java/io/IOException
    //   329	340	1257	java/lang/Exception
    //   329	340	1350	finally
    //   344	360	513	java/io/IOException
    //   344	360	1257	java/lang/Exception
    //   344	360	1350	finally
    //   364	370	513	java/io/IOException
    //   364	370	1257	java/lang/Exception
    //   364	370	1350	finally
    //   374	380	513	java/io/IOException
    //   374	380	1257	java/lang/Exception
    //   374	380	1350	finally
    //   384	395	513	java/io/IOException
    //   384	395	1257	java/lang/Exception
    //   384	395	1350	finally
    //   399	410	513	java/io/IOException
    //   399	410	1257	java/lang/Exception
    //   399	410	1350	finally
    //   414	425	513	java/io/IOException
    //   414	425	1257	java/lang/Exception
    //   414	425	1350	finally
    //   429	438	513	java/io/IOException
    //   429	438	1257	java/lang/Exception
    //   429	438	1350	finally
    //   442	450	513	java/io/IOException
    //   442	450	1257	java/lang/Exception
    //   442	450	1350	finally
    //   454	462	513	java/io/IOException
    //   454	462	1257	java/lang/Exception
    //   454	462	1350	finally
    //   466	476	513	java/io/IOException
    //   466	476	1257	java/lang/Exception
    //   466	476	1350	finally
    //   480	490	513	java/io/IOException
    //   480	490	1257	java/lang/Exception
    //   480	490	1350	finally
    //   494	500	513	java/io/IOException
    //   494	500	1257	java/lang/Exception
    //   494	500	1350	finally
    //   504	510	513	java/io/IOException
    //   504	510	1257	java/lang/Exception
    //   504	510	1350	finally
    //   519	528	1277	java/lang/Exception
    //   519	528	1350	finally
    //   532	560	1277	java/lang/Exception
    //   532	560	1350	finally
    //   564	574	1277	java/lang/Exception
    //   564	574	1350	finally
    //   578	589	1277	java/lang/Exception
    //   578	589	1350	finally
    //   594	599	2080	java/lang/Exception
    //   616	624	2142	java/lang/Exception
    //   616	624	2135	finally
    //   631	638	513	java/io/IOException
    //   631	638	1257	java/lang/Exception
    //   631	638	1350	finally
    //   642	656	513	java/io/IOException
    //   642	656	1257	java/lang/Exception
    //   642	656	1350	finally
    //   660	671	513	java/io/IOException
    //   660	671	1257	java/lang/Exception
    //   660	671	1350	finally
    //   675	688	513	java/io/IOException
    //   675	688	1257	java/lang/Exception
    //   675	688	1350	finally
    //   692	706	513	java/io/IOException
    //   692	706	1257	java/lang/Exception
    //   692	706	1350	finally
    //   710	724	513	java/io/IOException
    //   710	724	1257	java/lang/Exception
    //   710	724	1350	finally
    //   728	742	513	java/io/IOException
    //   728	742	1257	java/lang/Exception
    //   728	742	1350	finally
    //   746	760	513	java/io/IOException
    //   746	760	1257	java/lang/Exception
    //   746	760	1350	finally
    //   764	778	513	java/io/IOException
    //   764	778	1257	java/lang/Exception
    //   764	778	1350	finally
    //   782	796	513	java/io/IOException
    //   782	796	1257	java/lang/Exception
    //   782	796	1350	finally
    //   800	830	513	java/io/IOException
    //   800	830	1257	java/lang/Exception
    //   800	830	1350	finally
    //   834	861	513	java/io/IOException
    //   834	861	1257	java/lang/Exception
    //   834	861	1350	finally
    //   865	874	513	java/io/IOException
    //   865	874	1257	java/lang/Exception
    //   865	874	1350	finally
    //   878	886	513	java/io/IOException
    //   878	886	1257	java/lang/Exception
    //   878	886	1350	finally
    //   890	902	513	java/io/IOException
    //   890	902	1257	java/lang/Exception
    //   890	902	1350	finally
    //   906	913	513	java/io/IOException
    //   906	913	1257	java/lang/Exception
    //   906	913	1350	finally
    //   917	933	513	java/io/IOException
    //   917	933	1257	java/lang/Exception
    //   917	933	1350	finally
    //   937	944	513	java/io/IOException
    //   937	944	1257	java/lang/Exception
    //   937	944	1350	finally
    //   948	955	513	java/io/IOException
    //   948	955	1257	java/lang/Exception
    //   948	955	1350	finally
    //   959	967	513	java/io/IOException
    //   959	967	1257	java/lang/Exception
    //   959	967	1350	finally
    //   971	981	513	java/io/IOException
    //   971	981	1257	java/lang/Exception
    //   971	981	1350	finally
    //   985	992	513	java/io/IOException
    //   985	992	1257	java/lang/Exception
    //   985	992	1350	finally
    //   996	1006	513	java/io/IOException
    //   996	1006	1257	java/lang/Exception
    //   996	1006	1350	finally
    //   1010	1020	513	java/io/IOException
    //   1010	1020	1257	java/lang/Exception
    //   1010	1020	1350	finally
    //   1024	1075	513	java/io/IOException
    //   1024	1075	1257	java/lang/Exception
    //   1024	1075	1350	finally
    //   1079	1093	513	java/io/IOException
    //   1079	1093	1257	java/lang/Exception
    //   1079	1093	1350	finally
    //   1097	1154	513	java/io/IOException
    //   1097	1154	1257	java/lang/Exception
    //   1097	1154	1350	finally
    //   1158	1167	513	java/io/IOException
    //   1158	1167	1257	java/lang/Exception
    //   1158	1167	1350	finally
    //   1171	1177	513	java/io/IOException
    //   1171	1177	1257	java/lang/Exception
    //   1171	1177	1350	finally
    //   1181	1191	513	java/io/IOException
    //   1181	1191	1257	java/lang/Exception
    //   1181	1191	1350	finally
    //   1195	1207	513	java/io/IOException
    //   1195	1207	1257	java/lang/Exception
    //   1195	1207	1350	finally
    //   1211	1241	513	java/io/IOException
    //   1211	1241	1257	java/lang/Exception
    //   1211	1241	1350	finally
    //   1245	1254	513	java/io/IOException
    //   1245	1254	1257	java/lang/Exception
    //   1245	1254	1350	finally
    //   1263	1274	1277	java/lang/Exception
    //   1263	1274	1350	finally
    //   1283	1291	1350	finally
    //   1295	1330	1350	finally
    //   1334	1350	1350	finally
    //   1356	1361	2121	java/lang/Exception
    //   1367	1373	513	java/io/IOException
    //   1367	1373	1257	java/lang/Exception
    //   1367	1373	1350	finally
    //   1377	1387	513	java/io/IOException
    //   1377	1387	1257	java/lang/Exception
    //   1377	1387	1350	finally
    //   1391	1403	513	java/io/IOException
    //   1391	1403	1257	java/lang/Exception
    //   1391	1403	1350	finally
    //   1410	1422	513	java/io/IOException
    //   1410	1422	1257	java/lang/Exception
    //   1410	1422	1350	finally
    //   1426	1441	513	java/io/IOException
    //   1426	1441	1257	java/lang/Exception
    //   1426	1441	1350	finally
    //   1445	1452	513	java/io/IOException
    //   1445	1452	1257	java/lang/Exception
    //   1445	1452	1350	finally
    //   1456	1466	513	java/io/IOException
    //   1456	1466	1257	java/lang/Exception
    //   1456	1466	1350	finally
    //   1470	1489	513	java/io/IOException
    //   1470	1489	1257	java/lang/Exception
    //   1470	1489	1350	finally
    //   1493	1509	513	java/io/IOException
    //   1493	1509	1257	java/lang/Exception
    //   1493	1509	1350	finally
    //   1513	1517	513	java/io/IOException
    //   1513	1517	1257	java/lang/Exception
    //   1513	1517	1350	finally
    //   1524	1532	513	java/io/IOException
    //   1524	1532	1257	java/lang/Exception
    //   1524	1532	1350	finally
    //   1539	1549	513	java/io/IOException
    //   1539	1549	1257	java/lang/Exception
    //   1539	1549	1350	finally
    //   1560	1586	513	java/io/IOException
    //   1560	1586	1257	java/lang/Exception
    //   1560	1586	1350	finally
    //   1590	1595	513	java/io/IOException
    //   1590	1595	1257	java/lang/Exception
    //   1590	1595	1350	finally
    //   1599	1623	513	java/io/IOException
    //   1599	1623	1257	java/lang/Exception
    //   1599	1623	1350	finally
    //   1627	1654	513	java/io/IOException
    //   1627	1654	1257	java/lang/Exception
    //   1627	1654	1350	finally
    //   1658	1664	513	java/io/IOException
    //   1658	1664	1257	java/lang/Exception
    //   1658	1664	1350	finally
    //   1668	1677	513	java/io/IOException
    //   1668	1677	1257	java/lang/Exception
    //   1668	1677	1350	finally
    //   1681	1686	513	java/io/IOException
    //   1681	1686	1257	java/lang/Exception
    //   1681	1686	1350	finally
    //   1693	1703	513	java/io/IOException
    //   1693	1703	1257	java/lang/Exception
    //   1693	1703	1350	finally
    //   1707	1739	513	java/io/IOException
    //   1707	1739	1257	java/lang/Exception
    //   1707	1739	1350	finally
    //   1743	1769	513	java/io/IOException
    //   1743	1769	1257	java/lang/Exception
    //   1743	1769	1350	finally
    //   1783	1792	513	java/io/IOException
    //   1783	1792	1257	java/lang/Exception
    //   1783	1792	1350	finally
    //   1796	1801	513	java/io/IOException
    //   1796	1801	1257	java/lang/Exception
    //   1796	1801	1350	finally
    //   1805	1814	513	java/io/IOException
    //   1805	1814	1257	java/lang/Exception
    //   1805	1814	1350	finally
    //   1818	1844	513	java/io/IOException
    //   1818	1844	1257	java/lang/Exception
    //   1818	1844	1350	finally
    //   1848	1853	513	java/io/IOException
    //   1848	1853	1257	java/lang/Exception
    //   1848	1853	1350	finally
    //   1857	1881	513	java/io/IOException
    //   1857	1881	1257	java/lang/Exception
    //   1857	1881	1350	finally
    //   1885	1912	513	java/io/IOException
    //   1885	1912	1257	java/lang/Exception
    //   1885	1912	1350	finally
    //   1916	1922	513	java/io/IOException
    //   1916	1922	1257	java/lang/Exception
    //   1916	1922	1350	finally
    //   1926	1931	513	java/io/IOException
    //   1926	1931	1257	java/lang/Exception
    //   1926	1931	1350	finally
    //   1938	1947	513	java/io/IOException
    //   1938	1947	1257	java/lang/Exception
    //   1938	1947	1350	finally
    //   1951	1977	513	java/io/IOException
    //   1951	1977	1257	java/lang/Exception
    //   1951	1977	1350	finally
    //   1981	1986	513	java/io/IOException
    //   1981	1986	1257	java/lang/Exception
    //   1981	1986	1350	finally
    //   1990	2014	513	java/io/IOException
    //   1990	2014	1257	java/lang/Exception
    //   1990	2014	1350	finally
    //   2018	2045	513	java/io/IOException
    //   2018	2045	1257	java/lang/Exception
    //   2018	2045	1350	finally
    //   2049	2055	513	java/io/IOException
    //   2049	2055	1257	java/lang/Exception
    //   2049	2055	1350	finally
    //   2059	2068	513	java/io/IOException
    //   2059	2068	1257	java/lang/Exception
    //   2059	2068	1350	finally
    //   2072	2077	513	java/io/IOException
    //   2072	2077	1257	java/lang/Exception
    //   2072	2077	1350	finally
    //   2099	2104	2107	java/lang/Exception
  }
  
  public ard h(ard paramard) {
    Log.d("[ChatServiceImpl]", "sendFile ".concat("init"));
    if (paramard != null) {
      Log.d("[ChatServiceImpl]", "Log 1");
      if (ase.n(paramard.r()).size() > 0) {
        Log.d("[ChatServiceImpl]", "Log 2");
        Iterator<arj> iterator = ase.n(paramard.r()).iterator();
        while (iterator.hasNext())
          c(iterator.next()); 
      } else {
        paramard.b(999);
        paramard.b("Não existe arquivo para ser enviado.");
      } 
    } 
    Log.d("[ChatServiceImpl]", "sendFile ".concat("end"));
    return paramard;
  }
  
  public void i(ard paramard) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ary.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */