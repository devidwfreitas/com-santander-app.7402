package com.datami.smi.g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import com.ca.android.app.CaMDOHTTPClient;
import com.datami.smi.SmiIntentService;
import com.datami.smi.c.t;
import com.datami.smi.c.u;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.DefaultHttpRoutePlanner;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

public final class c {
  public static boolean a;
  
  public static int b;
  
  public static String c;
  
  private static int d;
  
  private static String e;
  
  private static int f;
  
  private static int g;
  
  private static SchemeRegistry h;
  
  private static ClientConnectionManager i;
  
  private static HttpParams j;
  
  private static String k;
  
  private static final byte[] l = new byte[] { 
      32, -93, 120, 26, -34, 0, -2, -11, -4, 71, 
      -24, -41, 11, -12, 11, -5, -5, 7, -44, 1, 
      -6, 15, -9, -6, 71, -24, -41, 11, -12, 11, 
      -5, -5, 7, 75, -55, -9, 4, 60, -72, 0, 
      12, 5, 14, -13, -4, 13, 6, -2, 69, -84, 
      5, 4, 6, -9, 78, -73, -10, 83, -78, -7, 
      9, 0, 13, -12, 13, -14, 15, -14, -1, -44, 
      1, -6, 15, -9, -6, 71, -71, -5, 9, 11, 
      -12, 0, 4, -2, 9, -13, 21, -19, 15, -2, 
      3, 11, -17, 18, -17, 11, -6, 1, 6, 4, 
      -10, 15, -7, 62, -52, -13, 10, -14, 3, 6, 
      5, 5, 46, 3, -11, 11, -11, 10, 75, -55, 
      -9, 4, 60, -52, -15, 0, -12, 0, 4, -3, 
      -15, 0, 4, 3, 6, 2, -19, 11, -6, 1, 
      63, -59, -9, 4, 1, 75, -55, -9, 4, 60, 
      -70, 14, -13, -4, 13, 6, -2, 56, -71, 5, 
      4, 6, -9, -19, 17, -7, 75, -55, -9, 4, 
      60, -54, -12, 11, -1, 56, -67, 15, -19, 12, 
      75, -55, -9, 4, 60, -52, -15, 7, 60, -62, 
      6, -20, -34, 0, -2, -11, -4, 1, 14, 25, 
      -11, -30, -2, -5, 3, 56, -22, -44, 1, -6, 
      2, 3, 3, 75, -55, -9, 4, 60, -70, 15, 
      -7 };
  
  private static int m = 158;
  
  static {
    a = false;
    b = 30;
    int i = m & 0x70;
    c = a(i, i, l[33]);
    d = 200;
    e = "";
    f = 80;
    g = 443;
    k = "";
  }
  
  public static int a() {
    return d;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    int k = 21 - paramInt2;
    paramInt1 = 212 - paramInt1;
    byte[] arrayOfByte2 = l;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      j = k;
      i = paramInt1;
    } else {
      i = 0;
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 + 10;
      paramInt3 = paramInt2;
      arrayOfByte1[i] = (byte)paramInt1;
      paramInt2 = i + 1;
    } 
    paramInt1 = j + -i;
    int i = paramInt2;
    arrayOfByte1[i] = (byte)paramInt1;
    paramInt2 = i + 1;
  }
  
  private static String a(Context paramContext) {
    String str = "";
    PackageInfo packageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
    if (packageInfo != null)
      str = paramContext.getPackageName() + a(180, -l[191], 37) + packageInfo.versionName; 
    return str;
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #6
    //   3: getstatic com/datami/smi/g/c.a : Z
    //   6: ifeq -> 83
    //   9: sipush #151
    //   12: getstatic com/datami/smi/g/c.l : [B
    //   15: bipush #93
    //   17: baload
    //   18: getstatic com/datami/smi/g/c.l : [B
    //   21: bipush #38
    //   23: baload
    //   24: ineg
    //   25: invokestatic a : (III)Ljava/lang/String;
    //   28: pop
    //   29: sipush #151
    //   32: getstatic com/datami/smi/g/c.l : [B
    //   35: bipush #93
    //   37: baload
    //   38: getstatic com/datami/smi/g/c.l : [B
    //   41: bipush #38
    //   43: baload
    //   44: ineg
    //   45: invokestatic a : (III)Ljava/lang/String;
    //   48: pop
    //   49: new java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial <init> : ()V
    //   56: aload_2
    //   57: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: sipush #209
    //   63: getstatic com/datami/smi/g/c.l : [B
    //   66: sipush #191
    //   69: baload
    //   70: ineg
    //   71: getstatic com/datami/smi/g/c.l : [B
    //   74: iconst_5
    //   75: baload
    //   76: invokestatic a : (III)Ljava/lang/String;
    //   79: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: pop
    //   83: sipush #200
    //   86: putstatic com/datami/smi/g/c.d : I
    //   89: ldc ''
    //   91: putstatic com/datami/smi/g/c.e : Ljava/lang/String;
    //   94: aload_1
    //   95: invokestatic a : (Ljava/lang/String;)V
    //   98: new org/apache/http/impl/client/DefaultHttpClient
    //   101: dup
    //   102: getstatic com/datami/smi/g/c.i : Lorg/apache/http/conn/ClientConnectionManager;
    //   105: getstatic com/datami/smi/g/c.j : Lorg/apache/http/params/HttpParams;
    //   108: invokespecial <init> : (Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    //   111: astore #8
    //   113: iload #4
    //   115: ifne -> 133
    //   118: aload #8
    //   120: new org/apache/http/impl/conn/DefaultHttpRoutePlanner
    //   123: dup
    //   124: getstatic com/datami/smi/g/c.h : Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   127: invokespecial <init> : (Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   130: invokevirtual setRoutePlanner : (Lorg/apache/http/conn/routing/HttpRoutePlanner;)V
    //   133: new org/apache/http/client/methods/HttpPost
    //   136: dup
    //   137: aload_1
    //   138: invokespecial <init> : (Ljava/lang/String;)V
    //   141: astore_1
    //   142: getstatic com/datami/smi/g/c.m : I
    //   145: istore #5
    //   147: getstatic com/datami/smi/g/c.l : [B
    //   150: bipush #60
    //   152: baload
    //   153: istore #7
    //   155: iload #5
    //   157: sipush #1008
    //   160: iand
    //   161: iload #7
    //   163: iload #7
    //   165: bipush #48
    //   167: ior
    //   168: invokestatic a : (III)Ljava/lang/String;
    //   171: astore #9
    //   173: getstatic com/datami/smi/g/c.l : [B
    //   176: bipush #57
    //   178: baload
    //   179: istore #5
    //   181: getstatic com/datami/smi/g/c.l : [B
    //   184: bipush #41
    //   186: baload
    //   187: istore #7
    //   189: aload_1
    //   190: aload #9
    //   192: iload #5
    //   194: iload #7
    //   196: iload #7
    //   198: bipush #82
    //   200: ior
    //   201: invokestatic a : (III)Ljava/lang/String;
    //   204: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   207: getstatic com/datami/smi/g/c.l : [B
    //   210: bipush #40
    //   212: baload
    //   213: istore #5
    //   215: iload #5
    //   217: iconst_4
    //   218: isub
    //   219: istore #7
    //   221: aload_1
    //   222: iload #5
    //   224: iload #7
    //   226: iload #7
    //   228: bipush #49
    //   230: ior
    //   231: invokestatic a : (III)Ljava/lang/String;
    //   234: getstatic com/datami/smi/g/c.m : I
    //   237: sipush #995
    //   240: iand
    //   241: getstatic com/datami/smi/g/c.l : [B
    //   244: bipush #42
    //   246: baload
    //   247: bipush #102
    //   249: invokestatic a : (III)Ljava/lang/String;
    //   252: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   255: getstatic com/datami/smi/g/c.l : [B
    //   258: bipush #40
    //   260: baload
    //   261: istore #5
    //   263: aload_1
    //   264: bipush #95
    //   266: iload #5
    //   268: iload #5
    //   270: bipush #98
    //   272: ior
    //   273: invokestatic a : (III)Ljava/lang/String;
    //   276: aload_0
    //   277: invokestatic a : (Landroid/content/Context;)Ljava/lang/String;
    //   280: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   283: sipush #147
    //   286: getstatic com/datami/smi/g/c.l : [B
    //   289: sipush #164
    //   292: baload
    //   293: bipush #106
    //   295: invokestatic a : (III)Ljava/lang/String;
    //   298: pop
    //   299: invokestatic a : ()Ljava/lang/String;
    //   302: astore #9
    //   304: aload #9
    //   306: ifnonnull -> 345
    //   309: getstatic com/datami/smi/g/c.l : [B
    //   312: iconst_5
    //   313: baload
    //   314: istore #5
    //   316: new java/lang/Exception
    //   319: dup
    //   320: sipush #171
    //   323: iload #5
    //   325: iload #5
    //   327: bipush #105
    //   329: ior
    //   330: invokestatic a : (III)Ljava/lang/String;
    //   333: invokespecial <init> : (Ljava/lang/String;)V
    //   336: athrow
    //   337: astore_0
    //   338: ldc 100012
    //   340: putstatic com/datami/smi/g/c.d : I
    //   343: aload_0
    //   344: athrow
    //   345: invokestatic a : ()Ljava/lang/String;
    //   348: astore #10
    //   350: aload #10
    //   352: ifnull -> 384
    //   355: aload #10
    //   357: invokevirtual isEmpty : ()Z
    //   360: ifne -> 384
    //   363: aload_1
    //   364: sipush #180
    //   367: getstatic com/datami/smi/g/c.l : [B
    //   370: bipush #12
    //   372: baload
    //   373: bipush #110
    //   375: invokestatic a : (III)Ljava/lang/String;
    //   378: invokestatic a : ()Ljava/lang/String;
    //   381: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   384: bipush #124
    //   386: getstatic com/datami/smi/g/c.l : [B
    //   389: bipush #12
    //   391: baload
    //   392: bipush #102
    //   394: invokestatic a : (III)Ljava/lang/String;
    //   397: astore #10
    //   399: getstatic com/datami/smi/g/c.k : Ljava/lang/String;
    //   402: invokevirtual isEmpty : ()Z
    //   405: ifeq -> 415
    //   408: aload_0
    //   409: invokestatic getSdkKey : (Landroid/content/Context;)Ljava/lang/String;
    //   412: putstatic com/datami/smi/g/c.k : Ljava/lang/String;
    //   415: getstatic com/datami/smi/g/c.l : [B
    //   418: iconst_0
    //   419: baload
    //   420: iconst_1
    //   421: iadd
    //   422: istore #5
    //   424: iload #5
    //   426: iconst_2
    //   427: iushr
    //   428: istore #7
    //   430: aload_1
    //   431: iload #5
    //   433: iload #7
    //   435: iload #7
    //   437: bipush #102
    //   439: ior
    //   440: invokestatic a : (III)Ljava/lang/String;
    //   443: getstatic com/datami/smi/g/c.k : Ljava/lang/String;
    //   446: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   449: getstatic com/datami/smi/g/c.l : [B
    //   452: bipush #48
    //   454: baload
    //   455: istore #5
    //   457: getstatic com/datami/smi/g/c.l : [B
    //   460: sipush #135
    //   463: baload
    //   464: istore #7
    //   466: aload_1
    //   467: iload #5
    //   469: iconst_1
    //   470: isub
    //   471: iload #7
    //   473: iload #7
    //   475: bipush #108
    //   477: ior
    //   478: invokestatic a : (III)Ljava/lang/String;
    //   481: aload #9
    //   483: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   486: getstatic com/datami/smi/g/c.l : [B
    //   489: bipush #112
    //   491: baload
    //   492: istore #5
    //   494: getstatic com/datami/smi/g/c.l : [B
    //   497: bipush #46
    //   499: baload
    //   500: istore #7
    //   502: aload_1
    //   503: iload #5
    //   505: iconst_1
    //   506: iadd
    //   507: iload #7
    //   509: iload #7
    //   511: bipush #104
    //   513: ior
    //   514: invokestatic a : (III)Ljava/lang/String;
    //   517: aload #10
    //   519: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   522: getstatic com/datami/smi/g/c.l : [B
    //   525: iconst_5
    //   526: baload
    //   527: istore #5
    //   529: getstatic com/datami/smi/g/c.l : [B
    //   532: bipush #40
    //   534: baload
    //   535: istore #7
    //   537: iload #5
    //   539: iload #7
    //   541: iload #7
    //   543: bipush #98
    //   545: ior
    //   546: invokestatic a : (III)Ljava/lang/String;
    //   549: astore #9
    //   551: new java/lang/StringBuilder
    //   554: dup
    //   555: invokespecial <init> : ()V
    //   558: astore #10
    //   560: getstatic com/datami/smi/g/c.l : [B
    //   563: iconst_5
    //   564: baload
    //   565: istore #5
    //   567: aload_1
    //   568: aload #9
    //   570: aload #10
    //   572: bipush #115
    //   574: iload #5
    //   576: iload #5
    //   578: bipush #105
    //   580: ior
    //   581: invokestatic a : (III)Ljava/lang/String;
    //   584: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   587: getstatic android/os/Build$VERSION.RELEASE : Ljava/lang/String;
    //   590: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   593: invokevirtual toString : ()Ljava/lang/String;
    //   596: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   599: iload_3
    //   600: istore #4
    //   602: iload_3
    //   603: ifeq -> 640
    //   606: aload_2
    //   607: getstatic com/datami/smi/g/c.c : Ljava/lang/String;
    //   610: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   613: astore #9
    //   615: aload #9
    //   617: aload_0
    //   618: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   621: invokestatic getCompressedEntity : ([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    //   624: astore_0
    //   625: aload_0
    //   626: invokevirtual getContentLength : ()J
    //   629: aload #9
    //   631: arraylength
    //   632: i2l
    //   633: lcmp
    //   634: iflt -> 944
    //   637: iconst_0
    //   638: istore #4
    //   640: iload #4
    //   642: ifne -> 716
    //   645: getstatic com/datami/smi/g/c.l : [B
    //   648: bipush #86
    //   650: baload
    //   651: getstatic com/datami/smi/g/c.l : [B
    //   654: bipush #21
    //   656: baload
    //   657: getstatic com/datami/smi/g/c.l : [B
    //   660: bipush #34
    //   662: baload
    //   663: ineg
    //   664: invokestatic a : (III)Ljava/lang/String;
    //   667: astore_0
    //   668: getstatic com/datami/smi/g/c.l : [B
    //   671: bipush #57
    //   673: baload
    //   674: istore #5
    //   676: getstatic com/datami/smi/g/c.l : [B
    //   679: bipush #41
    //   681: baload
    //   682: istore #7
    //   684: aload_1
    //   685: aload_0
    //   686: iload #5
    //   688: iload #7
    //   690: iload #7
    //   692: bipush #82
    //   694: ior
    //   695: invokestatic a : (III)Ljava/lang/String;
    //   698: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   701: aload_1
    //   702: new org/apache/http/entity/StringEntity
    //   705: dup
    //   706: aload_2
    //   707: getstatic com/datami/smi/g/c.c : Ljava/lang/String;
    //   710: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   713: invokevirtual setEntity : (Lorg/apache/http/HttpEntity;)V
    //   716: aload #8
    //   718: aload_1
    //   719: invokestatic execute : (Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   722: astore_1
    //   723: aload_1
    //   724: sipush #195
    //   727: getstatic com/datami/smi/g/c.l : [B
    //   730: bipush #41
    //   732: baload
    //   733: getstatic com/datami/smi/g/c.l : [B
    //   736: sipush #157
    //   739: baload
    //   740: iconst_1
    //   741: iadd
    //   742: invokestatic a : (III)Ljava/lang/String;
    //   745: invokeinterface getHeaders : (Ljava/lang/String;)[Lorg/apache/http/Header;
    //   750: astore_0
    //   751: aload_0
    //   752: arraylength
    //   753: istore #7
    //   755: iconst_0
    //   756: istore #5
    //   758: iload #5
    //   760: iload #7
    //   762: if_icmpge -> 1126
    //   765: aload_0
    //   766: iload #5
    //   768: aaload
    //   769: invokeinterface getValue : ()Ljava/lang/String;
    //   774: bipush #50
    //   776: getstatic com/datami/smi/g/c.l : [B
    //   779: sipush #164
    //   782: baload
    //   783: getstatic com/datami/smi/g/c.l : [B
    //   786: iconst_1
    //   787: baload
    //   788: ineg
    //   789: invokestatic a : (III)Ljava/lang/String;
    //   792: invokevirtual equals : (Ljava/lang/Object;)Z
    //   795: ifeq -> 1052
    //   798: iload #6
    //   800: istore #5
    //   802: aload_1
    //   803: invokeinterface getEntity : ()Lorg/apache/http/HttpEntity;
    //   808: astore_0
    //   809: iload #5
    //   811: ifne -> 1061
    //   814: aload_0
    //   815: getstatic com/datami/smi/g/c.c : Ljava/lang/String;
    //   818: invokestatic toString : (Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    //   821: astore_0
    //   822: getstatic com/datami/smi/g/c.a : Z
    //   825: ifeq -> 902
    //   828: sipush #149
    //   831: getstatic com/datami/smi/g/c.l : [B
    //   834: bipush #93
    //   836: baload
    //   837: getstatic com/datami/smi/g/c.l : [B
    //   840: bipush #38
    //   842: baload
    //   843: ineg
    //   844: invokestatic a : (III)Ljava/lang/String;
    //   847: pop
    //   848: sipush #149
    //   851: getstatic com/datami/smi/g/c.l : [B
    //   854: bipush #93
    //   856: baload
    //   857: getstatic com/datami/smi/g/c.l : [B
    //   860: bipush #38
    //   862: baload
    //   863: ineg
    //   864: invokestatic a : (III)Ljava/lang/String;
    //   867: pop
    //   868: new java/lang/StringBuilder
    //   871: dup
    //   872: invokespecial <init> : ()V
    //   875: aload_0
    //   876: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   879: sipush #209
    //   882: getstatic com/datami/smi/g/c.l : [B
    //   885: sipush #191
    //   888: baload
    //   889: ineg
    //   890: getstatic com/datami/smi/g/c.l : [B
    //   893: iconst_5
    //   894: baload
    //   895: invokestatic a : (III)Ljava/lang/String;
    //   898: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   901: pop
    //   902: aload_1
    //   903: invokeinterface getStatusLine : ()Lorg/apache/http/StatusLine;
    //   908: invokeinterface getStatusCode : ()I
    //   913: istore #5
    //   915: iload #5
    //   917: putstatic com/datami/smi/g/c.d : I
    //   920: iload #5
    //   922: sipush #200
    //   925: if_icmpeq -> 1132
    //   928: aload_1
    //   929: invokeinterface getStatusLine : ()Lorg/apache/http/StatusLine;
    //   934: invokeinterface getReasonPhrase : ()Ljava/lang/String;
    //   939: putstatic com/datami/smi/g/c.e : Ljava/lang/String;
    //   942: aload_0
    //   943: areturn
    //   944: aload_1
    //   945: sipush #209
    //   948: getstatic com/datami/smi/g/c.l : [B
    //   951: bipush #46
    //   953: baload
    //   954: getstatic com/datami/smi/g/c.l : [B
    //   957: bipush #34
    //   959: baload
    //   960: ineg
    //   961: invokestatic a : (III)Ljava/lang/String;
    //   964: bipush #50
    //   966: getstatic com/datami/smi/g/c.l : [B
    //   969: sipush #164
    //   972: baload
    //   973: getstatic com/datami/smi/g/c.l : [B
    //   976: iconst_1
    //   977: baload
    //   978: ineg
    //   979: invokestatic a : (III)Ljava/lang/String;
    //   982: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   985: aload_1
    //   986: sipush #195
    //   989: getstatic com/datami/smi/g/c.l : [B
    //   992: bipush #41
    //   994: baload
    //   995: getstatic com/datami/smi/g/c.l : [B
    //   998: sipush #157
    //   1001: baload
    //   1002: iconst_1
    //   1003: iadd
    //   1004: invokestatic a : (III)Ljava/lang/String;
    //   1007: bipush #50
    //   1009: getstatic com/datami/smi/g/c.l : [B
    //   1012: sipush #164
    //   1015: baload
    //   1016: getstatic com/datami/smi/g/c.l : [B
    //   1019: iconst_1
    //   1020: baload
    //   1021: ineg
    //   1022: invokestatic a : (III)Ljava/lang/String;
    //   1025: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   1028: aload_1
    //   1029: aload_0
    //   1030: invokevirtual setEntity : (Lorg/apache/http/HttpEntity;)V
    //   1033: iload_3
    //   1034: istore #4
    //   1036: goto -> 640
    //   1039: astore_0
    //   1040: aload_0
    //   1041: invokevirtual printStackTrace : ()V
    //   1044: ldc_w 100011
    //   1047: putstatic com/datami/smi/g/c.d : I
    //   1050: aload_0
    //   1051: athrow
    //   1052: iload #5
    //   1054: iconst_1
    //   1055: iadd
    //   1056: istore #5
    //   1058: goto -> 758
    //   1061: new java/io/BufferedReader
    //   1064: dup
    //   1065: new java/io/InputStreamReader
    //   1068: dup
    //   1069: aload_0
    //   1070: invokestatic getUngzippedContent : (Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    //   1073: getstatic com/datami/smi/g/c.c : Ljava/lang/String;
    //   1076: invokespecial <init> : (Ljava/io/InputStream;Ljava/lang/String;)V
    //   1079: sipush #8192
    //   1082: invokespecial <init> : (Ljava/io/Reader;I)V
    //   1085: astore_0
    //   1086: new java/lang/StringBuilder
    //   1089: dup
    //   1090: invokespecial <init> : ()V
    //   1093: astore_2
    //   1094: aload_0
    //   1095: invokevirtual readLine : ()Ljava/lang/String;
    //   1098: astore #8
    //   1100: aload #8
    //   1102: ifnull -> 1118
    //   1105: aload_2
    //   1106: aload #8
    //   1108: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1111: pop
    //   1112: goto -> 1094
    //   1115: astore_0
    //   1116: aload_0
    //   1117: athrow
    //   1118: aload_2
    //   1119: invokevirtual toString : ()Ljava/lang/String;
    //   1122: astore_0
    //   1123: goto -> 822
    //   1126: iconst_0
    //   1127: istore #5
    //   1129: goto -> 802
    //   1132: aload_0
    //   1133: areturn
    // Exception table:
    //   from	to	target	type
    //   3	83	337	org/apache/http/conn/ConnectTimeoutException
    //   3	83	1039	java/net/UnknownHostException
    //   3	83	1115	java/lang/Exception
    //   83	113	337	org/apache/http/conn/ConnectTimeoutException
    //   83	113	1039	java/net/UnknownHostException
    //   83	113	1115	java/lang/Exception
    //   118	133	337	org/apache/http/conn/ConnectTimeoutException
    //   118	133	1039	java/net/UnknownHostException
    //   118	133	1115	java/lang/Exception
    //   133	215	337	org/apache/http/conn/ConnectTimeoutException
    //   133	215	1039	java/net/UnknownHostException
    //   133	215	1115	java/lang/Exception
    //   221	304	337	org/apache/http/conn/ConnectTimeoutException
    //   221	304	1039	java/net/UnknownHostException
    //   221	304	1115	java/lang/Exception
    //   309	337	337	org/apache/http/conn/ConnectTimeoutException
    //   309	337	1039	java/net/UnknownHostException
    //   309	337	1115	java/lang/Exception
    //   345	350	337	org/apache/http/conn/ConnectTimeoutException
    //   345	350	1039	java/net/UnknownHostException
    //   345	350	1115	java/lang/Exception
    //   355	384	337	org/apache/http/conn/ConnectTimeoutException
    //   355	384	1039	java/net/UnknownHostException
    //   355	384	1115	java/lang/Exception
    //   384	415	337	org/apache/http/conn/ConnectTimeoutException
    //   384	415	1039	java/net/UnknownHostException
    //   384	415	1115	java/lang/Exception
    //   415	424	337	org/apache/http/conn/ConnectTimeoutException
    //   415	424	1039	java/net/UnknownHostException
    //   415	424	1115	java/lang/Exception
    //   430	599	337	org/apache/http/conn/ConnectTimeoutException
    //   430	599	1039	java/net/UnknownHostException
    //   430	599	1115	java/lang/Exception
    //   606	637	337	org/apache/http/conn/ConnectTimeoutException
    //   606	637	1039	java/net/UnknownHostException
    //   606	637	1115	java/lang/Exception
    //   645	716	337	org/apache/http/conn/ConnectTimeoutException
    //   645	716	1039	java/net/UnknownHostException
    //   645	716	1115	java/lang/Exception
    //   716	755	337	org/apache/http/conn/ConnectTimeoutException
    //   716	755	1039	java/net/UnknownHostException
    //   716	755	1115	java/lang/Exception
    //   765	798	337	org/apache/http/conn/ConnectTimeoutException
    //   765	798	1039	java/net/UnknownHostException
    //   765	798	1115	java/lang/Exception
    //   802	809	337	org/apache/http/conn/ConnectTimeoutException
    //   802	809	1039	java/net/UnknownHostException
    //   802	809	1115	java/lang/Exception
    //   814	822	337	org/apache/http/conn/ConnectTimeoutException
    //   814	822	1039	java/net/UnknownHostException
    //   814	822	1115	java/lang/Exception
    //   822	902	337	org/apache/http/conn/ConnectTimeoutException
    //   822	902	1039	java/net/UnknownHostException
    //   822	902	1115	java/lang/Exception
    //   902	920	337	org/apache/http/conn/ConnectTimeoutException
    //   902	920	1039	java/net/UnknownHostException
    //   902	920	1115	java/lang/Exception
    //   928	942	337	org/apache/http/conn/ConnectTimeoutException
    //   928	942	1039	java/net/UnknownHostException
    //   928	942	1115	java/lang/Exception
    //   944	1033	337	org/apache/http/conn/ConnectTimeoutException
    //   944	1033	1039	java/net/UnknownHostException
    //   944	1033	1115	java/lang/Exception
    //   1061	1094	337	org/apache/http/conn/ConnectTimeoutException
    //   1061	1094	1039	java/net/UnknownHostException
    //   1061	1094	1115	java/lang/Exception
    //   1094	1100	337	org/apache/http/conn/ConnectTimeoutException
    //   1094	1100	1039	java/net/UnknownHostException
    //   1094	1100	1115	java/lang/Exception
    //   1105	1112	337	org/apache/http/conn/ConnectTimeoutException
    //   1105	1112	1039	java/net/UnknownHostException
    //   1105	1112	1115	java/lang/Exception
    //   1118	1123	337	org/apache/http/conn/ConnectTimeoutException
    //   1118	1123	1039	java/net/UnknownHostException
    //   1118	1123	1115	java/lang/Exception
  }
  
  public static String a(Context paramContext, String paramString, boolean paramBoolean) {
    HttpGet httpGet;
    DefaultHttpClient defaultHttpClient;
    String str2;
    boolean bool = true;
    try {
      d = 200;
      e = "";
      a(paramString);
      defaultHttpClient = new DefaultHttpClient(i, j);
      if (!paramBoolean)
        defaultHttpClient.setRoutePlanner((HttpRoutePlanner)new DefaultHttpRoutePlanner(h)); 
      httpGet = new HttpGet(paramString);
      int k = m;
      byte b = l[60];
      str2 = a(k & 0x3F0, b, b | 0x30);
      k = l[57];
      b = l[41];
      httpGet.setHeader(str2, a(k, b, b | 0x52));
      k = l[40];
      int m = k - 4;
      httpGet.setHeader(a(k, m, m | 0x31), a(m & 0x3E3, l[42], 102));
      k = l[40];
      httpGet.setHeader(a(95, k, k | 0x62), a(paramContext));
      a(147, l[164], 106);
      str2 = t.a();
      if (str2 == null) {
        k = l[5];
        throw new Exception(a(171, k, k | 0x69));
      } 
    } catch (Exception exception) {
      throw exception;
    } 
    String str3 = u.a();
    if (str3 != null && !str3.isEmpty())
      httpGet.setHeader(a(180, l[12], 110), u.a()); 
    str3 = a(124, l[12], 102);
    if (k.isEmpty())
      k = SmiIntentService.getSdkKey((Context)exception); 
    int i = l[0] + 1;
    int j = i >>> 2;
    httpGet.setHeader(a(i, j, j | 0x66), k);
    i = l[48];
    j = l[135];
    httpGet.setHeader(a(i - 1, j, j | 0x6C), str2);
    i = l[112];
    j = l[46];
    httpGet.setHeader(a(i + 1, j, j | 0x68), str3);
    i = l[5];
    j = l[40];
    String str1 = a(i, j, j | 0x62);
    StringBuilder stringBuilder = new StringBuilder();
    i = l[5];
    httpGet.setHeader(str1, stringBuilder.append(a(115, i, i | 0x69)).append(Build.VERSION.RELEASE).toString());
    str1 = a(l[86], l[21], -l[34]);
    i = l[57];
    j = l[41];
    httpGet.setHeader(str1, a(i, j, j | 0x52));
    HttpResponse httpResponse = CaMDOHTTPClient.execute(defaultHttpClient, (HttpUriRequest)httpGet);
    Header[] arrayOfHeader = httpResponse.getHeaders(a(195, l[41], l[157] + 1));
    j = arrayOfHeader.length;
    i = 0;
    while (true) {
      String str;
      if (i < j) {
        if (arrayOfHeader[i].getValue().equals(a(50, l[164], -l[1]))) {
          i = bool;
        } else {
          i++;
          continue;
        } 
      } else {
        i = 0;
      } 
      HttpEntity httpEntity = httpResponse.getEntity();
      if (i == 0) {
        str = EntityUtils.toString(httpEntity, c);
        continue;
      } 
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(AndroidHttpClient.getUngzippedContent((HttpEntity)str), c), 8192);
      StringBuilder stringBuilder1 = new StringBuilder();
      while (true) {
        String str5 = bufferedReader.readLine();
        if (str5 != null) {
          stringBuilder1.append(str5);
          continue;
        } 
        String str4 = stringBuilder1.toString();
        if (a) {
          a(149, l[93], -l[38]);
          a(149, l[93], -l[38]);
          (new StringBuilder()).append(str4).append(a(209, -l[191], l[5]));
        } 
        i = httpResponse.getStatusLine().getStatusCode();
        d = i;
        if (i != 200) {
          e = httpResponse.getStatusLine().getReasonPhrase();
          return str4;
        } 
        return str4;
      } 
      break;
    } 
  }
  
  private static void a(String paramString) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: new java/net/URL
    //   5: dup
    //   6: aload_0
    //   7: invokespecial <init> : (Ljava/lang/String;)V
    //   10: astore_0
    //   11: aload_0
    //   12: invokevirtual getPort : ()I
    //   15: istore_2
    //   16: aload_0
    //   17: invokevirtual getProtocol : ()Ljava/lang/String;
    //   20: astore_0
    //   21: aload_0
    //   22: sipush #133
    //   25: getstatic com/datami/smi/g/c.l : [B
    //   28: sipush #164
    //   31: baload
    //   32: bipush #94
    //   34: invokestatic a : (III)Ljava/lang/String;
    //   37: invokevirtual equals : (Ljava/lang/Object;)Z
    //   40: ifeq -> 203
    //   43: iload_2
    //   44: iconst_m1
    //   45: if_icmpne -> 242
    //   48: getstatic com/datami/smi/g/c.f : I
    //   51: bipush #80
    //   53: if_icmpeq -> 242
    //   56: bipush #80
    //   58: putstatic com/datami/smi/g/c.f : I
    //   61: getstatic com/datami/smi/g/c.h : Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   64: ifnull -> 71
    //   67: iload_1
    //   68: ifeq -> 202
    //   71: new org/apache/http/conn/scheme/SchemeRegistry
    //   74: dup
    //   75: invokespecial <init> : ()V
    //   78: astore_0
    //   79: aload_0
    //   80: putstatic com/datami/smi/g/c.h : Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   83: aload_0
    //   84: new org/apache/http/conn/scheme/Scheme
    //   87: dup
    //   88: sipush #133
    //   91: getstatic com/datami/smi/g/c.l : [B
    //   94: sipush #164
    //   97: baload
    //   98: bipush #94
    //   100: invokestatic a : (III)Ljava/lang/String;
    //   103: invokestatic getSocketFactory : ()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   106: getstatic com/datami/smi/g/c.f : I
    //   109: invokespecial <init> : (Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   112: invokevirtual register : (Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   115: pop
    //   116: getstatic com/datami/smi/g/c.h : Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   119: new org/apache/http/conn/scheme/Scheme
    //   122: dup
    //   123: bipush #87
    //   125: bipush #16
    //   127: bipush #94
    //   129: invokestatic a : (III)Ljava/lang/String;
    //   132: new com/datami/smi/g/a
    //   135: dup
    //   136: invokespecial <init> : ()V
    //   139: getstatic com/datami/smi/g/c.g : I
    //   142: invokespecial <init> : (Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   145: invokevirtual register : (Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   148: pop
    //   149: new org/apache/http/params/BasicHttpParams
    //   152: dup
    //   153: invokespecial <init> : ()V
    //   156: astore_0
    //   157: aload_0
    //   158: putstatic com/datami/smi/g/c.j : Lorg/apache/http/params/HttpParams;
    //   161: aload_0
    //   162: getstatic com/datami/smi/g/c.b : I
    //   165: sipush #1000
    //   168: imul
    //   169: invokestatic setConnectionTimeout : (Lorg/apache/http/params/HttpParams;I)V
    //   172: getstatic com/datami/smi/g/c.i : Lorg/apache/http/conn/ClientConnectionManager;
    //   175: ifnull -> 186
    //   178: getstatic com/datami/smi/g/c.i : Lorg/apache/http/conn/ClientConnectionManager;
    //   181: invokeinterface shutdown : ()V
    //   186: new org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
    //   189: dup
    //   190: getstatic com/datami/smi/g/c.j : Lorg/apache/http/params/HttpParams;
    //   193: getstatic com/datami/smi/g/c.h : Lorg/apache/http/conn/scheme/SchemeRegistry;
    //   196: invokespecial <init> : (Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   199: putstatic com/datami/smi/g/c.i : Lorg/apache/http/conn/ClientConnectionManager;
    //   202: return
    //   203: aload_0
    //   204: bipush #87
    //   206: bipush #16
    //   208: bipush #94
    //   210: invokestatic a : (III)Ljava/lang/String;
    //   213: invokevirtual equals : (Ljava/lang/Object;)Z
    //   216: ifeq -> 242
    //   219: iload_2
    //   220: iconst_m1
    //   221: if_icmpne -> 242
    //   224: getstatic com/datami/smi/g/c.g : I
    //   227: sipush #443
    //   230: if_icmpeq -> 242
    //   233: sipush #443
    //   236: putstatic com/datami/smi/g/c.g : I
    //   239: goto -> 61
    //   242: iconst_0
    //   243: istore_1
    //   244: goto -> 61
  }
  
  private static String b() {
    return e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\g\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */