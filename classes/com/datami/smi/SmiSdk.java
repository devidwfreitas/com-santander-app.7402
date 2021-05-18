package com.datami.smi;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import android.webkit.WebView;
import com.datami.smi.a.a;
import com.datami.smi.a.b;
import com.datami.smi.a.c;
import com.datami.smi.a.i;
import com.datami.smi.b.g;
import com.datami.smi.b.m;
import com.datami.smi.d.a;
import com.datami.smi.d.c;
import java.util.List;
import java.util.Properties;

public class SmiSdk {
  private static final byte[] $ = new byte[] { 
      64, 16, -53, 106, 38, 9, -20, 12, -2, -4, 
      -67, 86, -2, -5, -75, 9, 71, 8, -8, 1, 
      -75, 80, 4, -81, 70, 9, 4, 5, 6, -79, 
      -12, 11, -9, -6, 8, 4, -2, 12, 6, -88, 
      68, 6, -6, 14, -6, -1, 0, -67, 14, -12, 
      71, 10, 4, -10, 12, -2, 7, -6, -9, -67, 
      30, -28, 50, -16, 10, 7, -83, 47, 20, 13, 
      -7, -68, 68, -1, 14, -77, 79, 2, 6, -83, 
      67, 4, -68, 81, -14, 19, 1, -13, 0, -67, 
      66, 19, -82, 67, 11, -10, 14, -2, 10, 10, 
      -3, -11, 2, -4, 2, 16, -11, -14, 28, -26, 
      -2, 20, -18, 38, 9, -20, 12, -2, -4, -67, 
      86, -2, -5, -49, -25, -1, 8, 2, 4, -8, 
      6, -6, -70, 69, 18, -4, -3, -2, -5, -1, 
      20, -14, -68, 66, 21, 0, -11, 19, 10, -9, 
      6, 6, -6, -70, 51, 20, -55, 21, 21, 0, 
      -11, -39, 70, 18, -16, 10, 7, -83, 74, 6, 
      -77, 39, 2, 14, -9, 15, -2, -5, -4, -53, 
      65, -8, 16, -69, 54, 13, 0, 1, -63, 22, 
      13, 0, 1, -8, -1, 18, -10, 14, -12, 12, 
      6, 7, -27, 6, -6, 14, -6, -1, -6, 6, 
      3, -4, 1, 0, 4, 3, -14, 0, -67, 66, 
      14, -9, 15, -2, -5, -4, -67, 87, -16, 14, 
      2, -9, 7, 0, 38, 9, -20, 12, -2, -4, 
      -67, 86, -2, -5, -75, 14, -12, 73, 8, 5, 
      2, -5, -12, 13, -7, -68, 74, 11, -82, 79, 
      8, -8, 1, -75, 80, 4, -81, 70, 9, 4, 
      5, 6, -62, -25, -13, 18, 38, 9, -20, 12, 
      -2, -4, -67, 84, -14, 8, -74, 76, -5, 21, 
      -88, 9, 71, 8, -8, 1, -75, 80, 4, -81, 
      70, 9, 4, 5, 6, -79, 40, -8, 1, -75, 
      68, 13, 0, 7, -14, 20, -3, -1, 16, -32, 
      -14, -2, 53, 0, -11, -71, 71, -4, 9, 4, 
      -6, 0, -41, -25, -4, -27, 22, 5, -7, 52, 
      -20, 3, 12, 5, -10, 7, 0, -77, 27, -25, 
      -10, 5, -7 };
  
  private static int $$ = 155;
  
  public static final String TAG = $($[189], 36, 252) + SmiSdk.class.getSimpleName();
  
  private static boolean allowUserMessaging;
  
  private static boolean authCallInProgress;
  
  private static boolean isForeground;
  
  public static a mActivityCallback;
  
  public static Context mContext;
  
  public static int mIconId = -1;
  
  private static NWChangeReceiver mNetworkReceiver;
  
  private static long millis;
  
  private static String $(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    paramInt3 = 350 - paramInt3;
    int i = 41 - paramInt2;
    paramInt2 = paramInt1 + 69;
    byte[] arrayOfByte2 = $;
    byte[] arrayOfByte1 = new byte[i];
    int k = i - 1;
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      i = k;
      j = paramInt3;
      paramInt3 = paramInt2;
    } else {
      i = 0;
      paramInt1 = paramInt2;
      paramInt2 = paramInt3;
      arrayOfByte1[i] = (byte)paramInt1;
    } 
    paramInt2 = j + 1;
    paramInt3 = paramInt3 + i - 1;
    i = paramInt1;
    paramInt1 = paramInt3;
    arrayOfByte1[i] = (byte)paramInt1;
  }
  
  static {
    isForeground = false;
    allowUserMessaging = false;
    millis = 0L;
    authCallInProgress = false;
    mActivityCallback = null;
    mNetworkReceiver = null;
  }
  
  public static void addSdStateChangeListener(SdStateChangeListener paramSdStateChangeListener) {
    m.a(paramSdStateChangeListener);
  }
  
  public static boolean allowUserMessaging() {
    return allowUserMessaging;
  }
  
  public static void appVisibility(Context paramContext, boolean paramBoolean) {
    isForeground = paramBoolean;
    (new StringBuilder()).append($(-$[123], $[17], 320)).append(isForeground);
    c.a(paramContext);
    a.a().b(paramBoolean);
    if (paramBoolean) {
      millis = System.currentTimeMillis();
      c.b(paramContext);
      if (c.a())
        c.b(c.b()); 
      if (NWChangeReceiver.handleNwChnageInBg()) {
        byte b1 = $[43];
        $(b1, b1, 203);
        SmiIntentService.sendReAuthEventIntent();
      } 
      return;
    } 
    Properties properties = new Properties();
    byte b = $[67];
    properties.put($(b, b & 0xF5, $[46]), Long.toString(System.currentTimeMillis() - millis));
    properties.put($($[67] - 1, $[4], $[287]), a.a(c.a));
    m.b($($[67] + 1, 35, $[1]), properties);
    c.c(paramContext);
  }
  
  public static Analytics getAnalytics() {
    a.a().c();
    Analytics analytics = new Analytics();
    analytics.setSdDataUsage(b.b());
    analytics.setCellularSessionTime(i.a());
    analytics.setWifiSessionTime(i.c());
    return analytics;
  }
  
  public static void getAppSDAuth(String paramString1, Context paramContext, String paramString2) {
    getAppSDAuth(paramString1, paramContext, paramString2, -1, null, false, null);
  }
  
  public static void getAppSDAuth(String paramString1, Context paramContext, String paramString2, int paramInt) {
    getAppSDAuth(paramString1, paramContext, paramString2, paramInt, null, false, null);
  }
  
  private static void getAppSDAuth(String paramString1, Context paramContext, String paramString2, int paramInt, h paramh, boolean paramBoolean, List paramList) {
    getAppSDAuth(paramString1, paramContext, paramString2, paramInt, paramh, paramBoolean, paramList, false);
  }
  
  private static void getAppSDAuth(String paramString1, Context paramContext, String paramString2, int paramInt, h paramh, boolean paramBoolean1, List paramList, boolean paramBoolean2) {
    g g;
    mIconId = paramInt;
    mContext = paramContext.getApplicationContext();
    allowUserMessaging = paramBoolean1;
    a.a();
    c.c();
    if (paramBoolean1 && mActivityCallback == null && Build.VERSION.SDK_INT >= 14) {
      Application application;
      mActivityCallback = new a();
      paramh = null;
      if (paramContext instanceof Application) {
        application = (Application)paramContext;
      } else if (mContext instanceof Application) {
        application = (Application)mContext;
      } 
      if (application != null)
        application.registerActivityLifecycleCallbacks(mActivityCallback); 
    } 
    if (!paramBoolean2) {
      g = new g(paramString1, paramContext, paramString2, paramInt, paramBoolean1, paramList);
      g.start();
      long l = 0L;
      while (g.isAlive() || l < 500L) {
        try {
          Thread.sleep(50L);
          l += 50L;
        } catch (InterruptedException interruptedException) {
          paramString2 = TAG;
          StringBuilder stringBuilder = new StringBuilder();
          paramInt = $[46];
          Log.i(paramString2, stringBuilder.append($(paramInt, paramInt | 0x1D, $[31])).append(interruptedException).toString());
        } 
      } 
    } else {
      m.a((String)g, (Context)interruptedException, paramString2, paramInt, paramBoolean1, paramList);
    } 
    registerConnectivityChangeReceiver();
  }
  
  public static void getAppSDAuth(String paramString1, Context paramContext, String paramString2, int paramInt, boolean paramBoolean) {
    getAppSDAuth(paramString1, paramContext, paramString2, paramInt, null, paramBoolean, null);
  }
  
  public static void getAppSDAuth(String paramString1, Context paramContext, String paramString2, int paramInt, boolean paramBoolean, List paramList) {
    getAppSDAuth(paramString1, paramContext, paramString2, paramInt, null, paramBoolean, paramList);
  }
  
  public static void getAppSDAuth(String paramString1, Context paramContext, String paramString2, boolean paramBoolean) {
    getAppSDAuth(paramString1, paramContext, paramString2, -1, null, paramBoolean, null);
  }
  
  protected static void getAppSDAuthInternal(Context paramContext, String paramString, int paramInt, h paramh, boolean paramBoolean) {
    mIconId = paramInt;
    allowUserMessaging = paramBoolean;
    if (authCallInProgress) {
      Log.i(TAG, $(36, $[134], 225));
      return;
    } 
    authCallInProgress = true;
    (new Thread(new j(paramContext, paramString, paramh))).start();
  }
  
  public static String getOmsUrl(String paramString, Context paramContext) {
    SmiIntentService.init(paramString, "", paramContext);
    m.a(paramContext, true);
    return m.R();
  }
  
  public static SmiResult getSDAuth(String paramString1, Context paramContext, String paramString2) {
    return getSDAuth(paramString1, paramContext, paramString2, "", "");
  }
  
  public static SmiResult getSDAuth(String paramString1, Context paramContext, String paramString2, String paramString3) {
    return getSDAuth(paramString1, paramContext, paramString2, paramString3, "");
  }
  
  public static SmiResult getSDAuth(String paramString1, Context paramContext, String paramString2, String paramString3, String paramString4) {
    // Byte code:
    //   0: aload_0
    //   1: ifnull -> 11
    //   4: aload_0
    //   5: invokevirtual isEmpty : ()Z
    //   8: ifeq -> 41
    //   11: new java/lang/Exception
    //   14: dup
    //   15: getstatic com/datami/smi/SmiSdk.$ : [B
    //   18: bipush #22
    //   20: baload
    //   21: getstatic com/datami/smi/SmiSdk.$ : [B
    //   24: bipush #51
    //   26: baload
    //   27: getstatic com/datami/smi/SmiSdk.$ : [B
    //   30: sipush #168
    //   33: baload
    //   34: invokestatic $ : (III)Ljava/lang/String;
    //   37: invokespecial <init> : (Ljava/lang/String;)V
    //   40: athrow
    //   41: aload_1
    //   42: ifnonnull -> 72
    //   45: getstatic com/datami/smi/SmiSdk.$ : [B
    //   48: iconst_5
    //   49: baload
    //   50: istore #5
    //   52: new java/lang/Exception
    //   55: dup
    //   56: iload #5
    //   58: iload #5
    //   60: bipush #20
    //   62: ior
    //   63: bipush #44
    //   65: invokestatic $ : (III)Ljava/lang/String;
    //   68: invokespecial <init> : (Ljava/lang/String;)V
    //   71: athrow
    //   72: getstatic com/datami/smi/b/m.j : Z
    //   75: ifne -> 165
    //   78: aload_2
    //   79: ifnull -> 89
    //   82: aload_2
    //   83: invokevirtual isEmpty : ()Z
    //   86: ifeq -> 115
    //   89: new java/lang/Exception
    //   92: dup
    //   93: getstatic com/datami/smi/SmiSdk.$ : [B
    //   96: bipush #22
    //   98: baload
    //   99: getstatic com/datami/smi/SmiSdk.$ : [B
    //   102: bipush #43
    //   104: baload
    //   105: sipush #346
    //   108: invokestatic $ : (III)Ljava/lang/String;
    //   111: invokespecial <init> : (Ljava/lang/String;)V
    //   114: athrow
    //   115: aload_2
    //   116: invokestatic isValidUrl : (Ljava/lang/String;)Z
    //   119: ifne -> 165
    //   122: new java/lang/Exception
    //   125: dup
    //   126: new java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial <init> : ()V
    //   133: getstatic com/datami/smi/SmiSdk.$ : [B
    //   136: bipush #22
    //   138: baload
    //   139: getstatic com/datami/smi/SmiSdk.$ : [B
    //   142: bipush #108
    //   144: baload
    //   145: sipush #237
    //   148: invokestatic $ : (III)Ljava/lang/String;
    //   151: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: aload_2
    //   155: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual toString : ()Ljava/lang/String;
    //   161: invokespecial <init> : (Ljava/lang/String;)V
    //   164: athrow
    //   165: getstatic com/datami/smi/b/m.j : Z
    //   168: ifne -> 252
    //   171: new java/net/URI
    //   174: dup
    //   175: aload_2
    //   176: invokespecial <init> : (Ljava/lang/String;)V
    //   179: invokevirtual getHost : ()Ljava/lang/String;
    //   182: astore #7
    //   184: aload #7
    //   186: ifnull -> 197
    //   189: aload #7
    //   191: invokevirtual isEmpty : ()Z
    //   194: ifeq -> 252
    //   197: new java/lang/StringBuilder
    //   200: dup
    //   201: invokespecial <init> : ()V
    //   204: astore_0
    //   205: getstatic com/datami/smi/SmiSdk.$ : [B
    //   208: bipush #22
    //   210: baload
    //   211: istore #5
    //   213: getstatic com/datami/smi/SmiSdk.$ : [B
    //   216: bipush #46
    //   218: baload
    //   219: istore #6
    //   221: new java/lang/Exception
    //   224: dup
    //   225: aload_0
    //   226: iload #5
    //   228: iload #6
    //   230: iload #6
    //   232: bipush #116
    //   234: ior
    //   235: invokestatic $ : (III)Ljava/lang/String;
    //   238: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: aload_2
    //   242: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: invokevirtual toString : ()Ljava/lang/String;
    //   248: invokespecial <init> : (Ljava/lang/String;)V
    //   251: athrow
    //   252: getstatic android/os/Build$VERSION.SDK_INT : I
    //   255: bipush #14
    //   257: if_icmpge -> 335
    //   260: getstatic com/datami/smi/SmiSdk.TAG : Ljava/lang/String;
    //   263: astore_0
    //   264: getstatic com/datami/smi/SmiSdk.$ : [B
    //   267: bipush #67
    //   269: baload
    //   270: istore #5
    //   272: getstatic com/datami/smi/SmiSdk.$ : [B
    //   275: bipush #43
    //   277: baload
    //   278: istore #6
    //   280: aload_0
    //   281: iload #5
    //   283: iconst_1
    //   284: iadd
    //   285: iload #6
    //   287: iload #6
    //   289: sipush #128
    //   292: ior
    //   293: invokestatic $ : (III)Ljava/lang/String;
    //   296: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   299: pop
    //   300: new com/datami/smi/SmiResult
    //   303: dup
    //   304: invokespecial <init> : ()V
    //   307: astore_0
    //   308: getstatic com/datami/smi/b/m.j : Z
    //   311: ifne -> 319
    //   314: aload_0
    //   315: aload_2
    //   316: invokevirtual setUrl : (Ljava/lang/String;)V
    //   319: aload_0
    //   320: getstatic com/datami/smi/SdState.SD_NOT_AVAILABLE : Lcom/datami/smi/SdState;
    //   323: invokevirtual setSdState : (Lcom/datami/smi/SdState;)V
    //   326: aload_0
    //   327: getstatic com/datami/smi/SdReason.SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED : Lcom/datami/smi/SdReason;
    //   330: invokevirtual setSdReason : (Lcom/datami/smi/SdReason;)V
    //   333: aload_0
    //   334: areturn
    //   335: aload_1
    //   336: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   339: astore #7
    //   341: aload #7
    //   343: putstatic com/datami/smi/SmiSdk.mContext : Landroid/content/Context;
    //   346: aload #7
    //   348: invokevirtual getPackageName : ()Ljava/lang/String;
    //   351: putstatic com/datami/smi/c/e.b : Ljava/lang/String;
    //   354: aload_0
    //   355: aload_3
    //   356: aload_1
    //   357: invokestatic init : (Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   360: aload_1
    //   361: iconst_1
    //   362: invokestatic a : (Landroid/content/Context;Z)V
    //   365: aload_1
    //   366: aload_2
    //   367: aload_3
    //   368: aload #4
    //   370: iconst_0
    //   371: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/datami/smi/b/m;
    //   374: astore #8
    //   376: new com/datami/smi/SmiResult
    //   379: dup
    //   380: invokespecial <init> : ()V
    //   383: astore #7
    //   385: getstatic com/datami/smi/b/m.j : Z
    //   388: ifeq -> 582
    //   391: aload #8
    //   393: invokevirtual e : ()I
    //   396: iconst_2
    //   397: if_icmpeq -> 410
    //   400: aload #8
    //   402: invokevirtual e : ()I
    //   405: bipush #6
    //   407: if_icmpne -> 582
    //   410: new com/datami/smi/k
    //   413: dup
    //   414: aload #8
    //   416: aload_1
    //   417: aload_2
    //   418: aload_3
    //   419: aload #4
    //   421: aload #7
    //   423: invokespecial <init> : (Lcom/datami/smi/b/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datami/smi/SmiResult;)V
    //   426: astore_0
    //   427: aload_0
    //   428: invokevirtual start : ()V
    //   431: aload_0
    //   432: invokevirtual join : ()V
    //   435: getstatic com/datami/smi/b/m.j : Z
    //   438: ifeq -> 639
    //   441: aload #7
    //   443: astore_0
    //   444: aload #7
    //   446: invokevirtual getSdState : ()Lcom/datami/smi/SdState;
    //   449: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   452: if_acmpne -> 333
    //   455: new com/datami/smi/SmiResult
    //   458: dup
    //   459: aload #8
    //   461: invokespecial <init> : (Lcom/datami/smi/b/m;)V
    //   464: astore_0
    //   465: aload_0
    //   466: areturn
    //   467: astore_0
    //   468: new java/lang/StringBuilder
    //   471: dup
    //   472: invokespecial <init> : ()V
    //   475: bipush #34
    //   477: getstatic com/datami/smi/SmiSdk.$ : [B
    //   480: sipush #189
    //   483: baload
    //   484: iconst_1
    //   485: iadd
    //   486: bipush #33
    //   488: invokestatic $ : (III)Ljava/lang/String;
    //   491: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   494: aload_0
    //   495: invokevirtual getMessage : ()Ljava/lang/String;
    //   498: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: pop
    //   502: new com/datami/smi/SmiResult
    //   505: dup
    //   506: invokespecial <init> : ()V
    //   509: astore_0
    //   510: getstatic com/datami/smi/b/m.j : Z
    //   513: ifne -> 521
    //   516: aload_0
    //   517: aload_2
    //   518: invokevirtual setUrl : (Ljava/lang/String;)V
    //   521: aload_0
    //   522: getstatic com/datami/smi/SdState.SD_NOT_AVAILABLE : Lcom/datami/smi/SdState;
    //   525: invokevirtual setSdState : (Lcom/datami/smi/SdState;)V
    //   528: aload_0
    //   529: getstatic com/datami/smi/SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN : Lcom/datami/smi/SdReason;
    //   532: invokevirtual setSdReason : (Lcom/datami/smi/SdReason;)V
    //   535: aload_0
    //   536: areturn
    //   537: astore_0
    //   538: new java/lang/StringBuilder
    //   541: dup
    //   542: invokespecial <init> : ()V
    //   545: astore_1
    //   546: getstatic com/datami/smi/SmiSdk.$ : [B
    //   549: bipush #46
    //   551: baload
    //   552: istore #5
    //   554: aload_1
    //   555: iload #5
    //   557: iload #5
    //   559: bipush #29
    //   561: ior
    //   562: getstatic com/datami/smi/SmiSdk.$ : [B
    //   565: bipush #31
    //   567: baload
    //   568: invokestatic $ : (III)Ljava/lang/String;
    //   571: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   574: aload_0
    //   575: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   578: pop
    //   579: goto -> 435
    //   582: aload #8
    //   584: invokevirtual e : ()I
    //   587: getstatic com/datami/smi/SdState.WIFI : Lcom/datami/smi/SdState;
    //   590: invokevirtual getStatusCode : ()I
    //   593: if_icmpne -> 435
    //   596: aload #7
    //   598: getstatic com/datami/smi/SdState.WIFI : Lcom/datami/smi/SdState;
    //   601: invokevirtual setSdState : (Lcom/datami/smi/SdState;)V
    //   604: aload #7
    //   606: astore_0
    //   607: getstatic com/datami/smi/b/m.j : Z
    //   610: ifne -> 333
    //   613: aload #7
    //   615: astore_0
    //   616: aload_2
    //   617: ifnull -> 333
    //   620: aload #7
    //   622: astore_0
    //   623: aload_2
    //   624: invokevirtual isEmpty : ()Z
    //   627: ifne -> 333
    //   630: aload #7
    //   632: aload_2
    //   633: invokevirtual setUrl : (Ljava/lang/String;)V
    //   636: aload #7
    //   638: areturn
    //   639: aload #7
    //   641: astore_0
    //   642: aload #8
    //   644: invokevirtual e : ()I
    //   647: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   650: invokevirtual getStatusCode : ()I
    //   653: if_icmpne -> 333
    //   656: new com/datami/smi/SmiResult
    //   659: dup
    //   660: aload #8
    //   662: invokespecial <init> : (Lcom/datami/smi/b/m;)V
    //   665: astore_0
    //   666: aload_0
    //   667: areturn
    // Exception table:
    //   from	to	target	type
    //   335	410	467	java/lang/Exception
    //   410	431	467	java/lang/Exception
    //   431	435	537	java/lang/Exception
    //   435	441	467	java/lang/Exception
    //   444	465	467	java/lang/Exception
    //   538	579	467	java/lang/Exception
    //   582	604	467	java/lang/Exception
    //   607	613	467	java/lang/Exception
    //   623	636	467	java/lang/Exception
    //   642	666	467	java/lang/Exception
  }
  
  public static String getSdStream(Context paramContext, String paramString1, String paramString2) {
    return m.a(paramContext, paramString1);
  }
  
  public static SmiResult getVideoSDAuth(Object paramObject) {
    return m.a(paramObject);
  }
  
  public static SmiResult getVideoSDAuth(String paramString1, Context paramContext, Object paramObject, String paramString2) {
    SmiIntentService.init(paramString1, paramString2, paramContext);
    return m.a(paramContext, paramObject, paramString2);
  }
  
  public static SmiResult getVpnSdAuth(String paramString, Context paramContext) {
    m.j = true;
    return getSDAuth(paramString, paramContext, "", "", "");
  }
  
  public static void getWebViewSDAuth(WebView paramWebView) {
    m.a(paramWebView);
  }
  
  public static void initSponsoredData(String paramString1, Context paramContext, String paramString2, int paramInt, boolean paramBoolean) {
    getAppSDAuth(paramString1, paramContext, paramString2, paramInt, null, paramBoolean, null);
  }
  
  public static void initSponsoredData(String paramString1, Context paramContext, String paramString2, int paramInt, boolean paramBoolean, List paramList) {
    getAppSDAuth(paramString1, paramContext, paramString2, paramInt, null, paramBoolean, paramList);
  }
  
  public static void initSponsoredDataSync(String paramString1, Context paramContext, String paramString2, int paramInt, boolean paramBoolean) {
    getAppSDAuth(paramString1, paramContext, paramString2, paramInt, null, paramBoolean, null, true);
  }
  
  public static void initSponsoredDataSync(String paramString1, Context paramContext, String paramString2, int paramInt, boolean paramBoolean, List paramList) {
    getAppSDAuth(paramString1, paramContext, paramString2, paramInt, null, paramBoolean, paramList, true);
  }
  
  public static boolean isDataMiUrl(String paramString) {
    return m.b(paramString);
  }
  
  public static boolean isForeground() {
    return isForeground;
  }
  
  private static void registerConnectivityChangeReceiver() {
    if (mNetworkReceiver == null) {
      NWChangeReceiver nWChangeReceiver = new NWChangeReceiver();
      mNetworkReceiver = nWChangeReceiver;
      nWChangeReceiver.init(mContext);
    } 
    mContext.registerReceiver(mNetworkReceiver, new IntentFilter($($[108], $[27], 177)));
  }
  
  public static void registerEvent(String paramString) {
    registerEvent(paramString, null);
  }
  
  public static void registerEvent(String paramString, Properties paramProperties) {
    if (paramString.isEmpty())
      throw new Exception($($[46], $[22], 288)); 
    m.a(paramString, paramProperties);
  }
  
  public static void sendStopSponsoredDataIntent() {
    if (mContext != null) {
      Intent intent = new Intent(mContext, SmiIntentService.class);
      intent.setAction($($[43], $[60] - 1, 248));
      mContext.startService(intent);
    } 
  }
  
  public static void startSponsoredData() {
    m.M();
  }
  
  public static void stopSponsoredData() {
    sendStopSponsoredDataIntent();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\SmiSdk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */