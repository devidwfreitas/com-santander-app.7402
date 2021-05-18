package com.ca.mdo;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

class AppDeviceData {
  private static final String OFFLINE = "Offline";
  
  private static final String WIFI = "WIFI";
  
  private static String additionalAPMHeaders;
  
  private static BroadcastReceiver batteryReceiver;
  
  private static Location lastLocation;
  
  private static String mAPMBaseHeader;
  
  private static float mBatteryPct = 0.0F;
  
  private static Context mContext;
  
  private static String mDeviceId;
  
  private static String mDeviceIdType;
  
  private static Display mDisplay;
  
  private static int mPid;
  
  private static Long mTotalMemory;
  
  private IntentFilter filter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
  
  private String mAppVersion;
  
  private String mApplicationName;
  
  private String mIpAddress;
  
  private String mManufactorer;
  
  private String mModel;
  
  private String mNetworkCountryCode;
  
  private String mNetworkOperatorName;
  
  private String mNetworkType;
  
  private String mTenantID;
  
  private String mVersion;
  
  static {
    additionalAPMHeaders = "";
  }
  
  public AppDeviceData(Context paramContext, String paramString) {
    try {
      initializeAppDeviceData(paramContext, paramString);
      return;
    } catch (Exception exception) {
      CALog.e("Error in initializing AppDeviceData.");
      CALog.ex(exception);
      return;
    } 
  }
  
  public static String getAPMHeader() {
    // Byte code:
    //   0: invokestatic getLocation : ()Landroid/location/Location;
    //   3: astore #7
    //   5: getstatic com/ca/mdo/AppDeviceData.mAPMBaseHeader : Ljava/lang/String;
    //   8: astore #6
    //   10: aload #6
    //   12: astore #5
    //   14: aload #7
    //   16: ifnull -> 85
    //   19: aload #6
    //   21: astore #4
    //   23: aload #7
    //   25: invokevirtual getLatitude : ()D
    //   28: dstore_0
    //   29: aload #6
    //   31: astore #4
    //   33: aload #7
    //   35: invokevirtual getLongitude : ()D
    //   38: dstore_2
    //   39: aload #6
    //   41: astore #4
    //   43: new java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial <init> : ()V
    //   50: getstatic com/ca/mdo/AppDeviceData.mAPMBaseHeader : Ljava/lang/String;
    //   53: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: ldc ';g='
    //   58: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: dload_0
    //   62: invokestatic toString : (D)Ljava/lang/String;
    //   65: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc ','
    //   70: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: dload_2
    //   74: invokestatic toString : (D)Ljava/lang/String;
    //   77: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual toString : ()Ljava/lang/String;
    //   83: astore #5
    //   85: aload #5
    //   87: astore #4
    //   89: new com/ca/mdo/AppDeviceData$DynInfoHolder
    //   92: dup
    //   93: invokespecial <init> : ()V
    //   96: astore #6
    //   98: aload #5
    //   100: astore #4
    //   102: new java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial <init> : ()V
    //   109: aload #5
    //   111: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: aload #6
    //   116: invokevirtual toString : ()Ljava/lang/String;
    //   119: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual toString : ()Ljava/lang/String;
    //   125: astore #5
    //   127: aload #5
    //   129: astore #4
    //   131: invokestatic getApplicationService : ()Ljava/lang/String;
    //   134: ifnonnull -> 239
    //   137: aload #5
    //   139: astore #4
    //   141: getstatic com/ca/mdo/AppDeviceData.mContext : Landroid/content/Context;
    //   144: invokestatic getApplicationName : (Landroid/content/Context;)Ljava/lang/String;
    //   147: astore #6
    //   149: aload #5
    //   151: astore #4
    //   153: invokestatic getApplicationTransaction : ()Ljava/lang/String;
    //   156: ifnonnull -> 251
    //   159: aload #5
    //   161: astore #4
    //   163: invokestatic getCurrentViewName : ()Ljava/lang/String;
    //   166: pop
    //   167: aload #5
    //   169: astore #6
    //   171: aload #5
    //   173: astore #4
    //   175: getstatic com/ca/mdo/AppDeviceData.additionalAPMHeaders : Ljava/lang/String;
    //   178: ifnull -> 208
    //   181: aload #5
    //   183: astore #4
    //   185: new java/lang/StringBuilder
    //   188: dup
    //   189: invokespecial <init> : ()V
    //   192: aload #5
    //   194: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: getstatic com/ca/mdo/AppDeviceData.additionalAPMHeaders : Ljava/lang/String;
    //   200: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual toString : ()Ljava/lang/String;
    //   206: astore #6
    //   208: aload #6
    //   210: astore #4
    //   212: new java/lang/StringBuilder
    //   215: dup
    //   216: invokespecial <init> : ()V
    //   219: ldc 'x-apm-bt : '
    //   221: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: aload #6
    //   226: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual toString : ()Ljava/lang/String;
    //   232: invokestatic d : (Ljava/lang/String;)I
    //   235: pop
    //   236: aload #6
    //   238: areturn
    //   239: aload #5
    //   241: astore #4
    //   243: invokestatic getApplicationService : ()Ljava/lang/String;
    //   246: astore #6
    //   248: goto -> 149
    //   251: aload #5
    //   253: astore #4
    //   255: ldc '%s$bs=%s;bt=%s;p=Android;pv=%s'
    //   257: iconst_4
    //   258: anewarray java/lang/Object
    //   261: dup
    //   262: iconst_0
    //   263: aload #5
    //   265: aastore
    //   266: dup
    //   267: iconst_1
    //   268: aload #6
    //   270: aastore
    //   271: dup
    //   272: iconst_2
    //   273: invokestatic getApplicationTransaction : ()Ljava/lang/String;
    //   276: aastore
    //   277: dup
    //   278: iconst_3
    //   279: getstatic android/os/Build$VERSION.RELEASE : Ljava/lang/String;
    //   282: aastore
    //   283: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   286: astore #5
    //   288: goto -> 167
    //   291: astore #5
    //   293: ldc 'Error in getting APM Header'
    //   295: invokestatic e : (Ljava/lang/String;)I
    //   298: pop
    //   299: aload #5
    //   301: invokestatic ex : (Ljava/lang/Throwable;)I
    //   304: pop
    //   305: aload #4
    //   307: areturn
    // Exception table:
    //   from	to	target	type
    //   23	29	291	java/lang/Exception
    //   33	39	291	java/lang/Exception
    //   43	85	291	java/lang/Exception
    //   89	98	291	java/lang/Exception
    //   102	127	291	java/lang/Exception
    //   131	137	291	java/lang/Exception
    //   141	149	291	java/lang/Exception
    //   153	159	291	java/lang/Exception
    //   163	167	291	java/lang/Exception
    //   175	181	291	java/lang/Exception
    //   185	208	291	java/lang/Exception
    //   212	236	291	java/lang/Exception
    //   243	248	291	java/lang/Exception
    //   255	288	291	java/lang/Exception
  }
  
  @TargetApi(3)
  protected static String getAndroidId(Context paramContext) {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    if (str != null && !str.equals("9774d56d682e549c")) {
      mDeviceIdType = "androidID";
      return str;
    } 
    try {
      str = Build.SERIAL;
      if (str != null) {
        mDeviceIdType = "serialNum";
        return str;
      } 
    } catch (Throwable throwable) {
      return null;
    } 
    return null;
  }
  
  @TargetApi(8)
  public static String getAppIcon() {
    Bitmap bitmap = null;
    String str = null;
    try {
      Drawable drawable = SDK.getApp().getPackageManager().getApplicationIcon(SDK.getApp().getApplicationInfo());
      if (drawable != null)
        bitmap = ((BitmapDrawable)drawable).getBitmap(); 
      if (bitmap != null)
        str = Util.compressAndEncode(bitmap, 30); 
      return str;
    } catch (Exception exception) {
      CALog.e("Error in retrieving Application Icon", exception);
      return null;
    } 
  }
  
  protected static long getAppTicks() {
    try {
      int i = Process.myPid();
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + i + "/stat")), 1184);
      String str = bufferedReader.readLine();
      bufferedReader.close();
      String[] arrayOfString = str.split(" ");
      long l1 = Long.parseLong(arrayOfString[13]);
      long l2 = Long.parseLong(arrayOfString[14]);
      long l3 = Long.parseLong(arrayOfString[16]);
      long l4 = Long.parseLong(arrayOfString[16]);
      return l1 + l2 + l3 + l4;
    } catch (Exception exception) {
      return 0L;
    } 
  }
  
  protected static String getApplicationName(Context paramContext) {
    PackageManager packageManager = paramContext.getPackageManager();
    try {
      ApplicationInfo applicationInfo = packageManager.getApplicationInfo(paramContext.getPackageName(), 0);
      if (applicationInfo != null) {
        CharSequence charSequence = packageManager.getApplicationLabel(applicationInfo);
        return (String)charSequence;
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      nameNotFoundException = null;
      if (nameNotFoundException != null) {
        CharSequence charSequence = packageManager.getApplicationLabel((ApplicationInfo)nameNotFoundException);
        return (String)charSequence;
      } 
    } 
    return "unknown";
  }
  
  protected static float getBatteryPct() {
    return mBatteryPct;
  }
  
  protected static float getCPUUsage() {
    return getCPUUsingDeviceStats();
  }
  
  protected static float getCPUUsingAppStats() {
    float f1 = (float)getDeviceTicks();
    float f2 = (float)getAppTicks();
    try {
      Thread.sleep(360L);
    } catch (Exception exception) {}
    float f4 = (float)getDeviceTicks();
    float f3 = (float)getAppTicks();
    f4 -= f1;
    f1 = 0.0F;
    if (f4 > 0.0F)
      f1 = 100.0F * (f3 - f2) / f4; 
    f2 = f1;
    if (f1 > 100.0F)
      f2 = 100.0F; 
    return f2;
  }
  
  protected static float getCPUUsingDeviceStats() {
    // Byte code:
    //   0: aconst_null
    //   1: astore #20
    //   3: aconst_null
    //   4: astore #22
    //   6: new java/io/RandomAccessFile
    //   9: dup
    //   10: ldc_w '/proc/stat'
    //   13: ldc_w 'r'
    //   16: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   19: astore #21
    //   21: aload #21
    //   23: invokevirtual readLine : ()Ljava/lang/String;
    //   26: ldc_w ' '
    //   29: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   32: astore #20
    //   34: aload #20
    //   36: iconst_5
    //   37: aaload
    //   38: invokestatic parseLong : (Ljava/lang/String;)J
    //   41: lstore_2
    //   42: aload #20
    //   44: iconst_2
    //   45: aaload
    //   46: invokestatic parseLong : (Ljava/lang/String;)J
    //   49: lstore #4
    //   51: aload #20
    //   53: iconst_3
    //   54: aaload
    //   55: invokestatic parseLong : (Ljava/lang/String;)J
    //   58: lstore #6
    //   60: aload #20
    //   62: iconst_4
    //   63: aaload
    //   64: invokestatic parseLong : (Ljava/lang/String;)J
    //   67: lstore #8
    //   69: aload #20
    //   71: bipush #6
    //   73: aaload
    //   74: invokestatic parseLong : (Ljava/lang/String;)J
    //   77: lstore #10
    //   79: aload #20
    //   81: bipush #7
    //   83: aaload
    //   84: invokestatic parseLong : (Ljava/lang/String;)J
    //   87: lstore #12
    //   89: aload #20
    //   91: bipush #8
    //   93: aaload
    //   94: invokestatic parseLong : (Ljava/lang/String;)J
    //   97: lstore #14
    //   99: lload #4
    //   101: lload #6
    //   103: ladd
    //   104: lload #8
    //   106: ladd
    //   107: lload #10
    //   109: ladd
    //   110: lload #12
    //   112: ladd
    //   113: lload #14
    //   115: ladd
    //   116: lstore #4
    //   118: ldc2_w 360
    //   121: invokestatic sleep : (J)V
    //   124: aload #21
    //   126: lconst_0
    //   127: invokevirtual seek : (J)V
    //   130: aload #21
    //   132: invokevirtual readLine : ()Ljava/lang/String;
    //   135: astore #20
    //   137: aload #21
    //   139: invokevirtual close : ()V
    //   142: aload #20
    //   144: ldc_w ' '
    //   147: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   150: astore #20
    //   152: aload #20
    //   154: iconst_5
    //   155: aaload
    //   156: invokestatic parseLong : (Ljava/lang/String;)J
    //   159: lstore #6
    //   161: aload #20
    //   163: iconst_2
    //   164: aaload
    //   165: invokestatic parseLong : (Ljava/lang/String;)J
    //   168: lstore #8
    //   170: aload #20
    //   172: iconst_3
    //   173: aaload
    //   174: invokestatic parseLong : (Ljava/lang/String;)J
    //   177: lstore #10
    //   179: aload #20
    //   181: iconst_4
    //   182: aaload
    //   183: invokestatic parseLong : (Ljava/lang/String;)J
    //   186: lstore #12
    //   188: aload #20
    //   190: bipush #6
    //   192: aaload
    //   193: invokestatic parseLong : (Ljava/lang/String;)J
    //   196: lstore #14
    //   198: aload #20
    //   200: bipush #7
    //   202: aaload
    //   203: invokestatic parseLong : (Ljava/lang/String;)J
    //   206: lstore #16
    //   208: aload #20
    //   210: bipush #8
    //   212: aaload
    //   213: invokestatic parseLong : (Ljava/lang/String;)J
    //   216: lstore #18
    //   218: lload #8
    //   220: lload #10
    //   222: ladd
    //   223: lload #12
    //   225: ladd
    //   226: lload #14
    //   228: ladd
    //   229: lload #16
    //   231: ladd
    //   232: lload #18
    //   234: ladd
    //   235: lstore #8
    //   237: lload #8
    //   239: lload #4
    //   241: lsub
    //   242: l2f
    //   243: lload #8
    //   245: lload #6
    //   247: ladd
    //   248: lload #4
    //   250: lload_2
    //   251: ladd
    //   252: lsub
    //   253: l2f
    //   254: fdiv
    //   255: fstore_0
    //   256: aload #21
    //   258: ifnull -> 489
    //   261: aload #21
    //   263: invokevirtual close : ()V
    //   266: fload_0
    //   267: fconst_0
    //   268: fcmpg
    //   269: ifge -> 434
    //   272: fconst_0
    //   273: freturn
    //   274: astore #20
    //   276: new java/lang/StringBuilder
    //   279: dup
    //   280: invokespecial <init> : ()V
    //   283: ldc_w 'Exception while closing /proc/stat file:'
    //   286: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: aload #20
    //   291: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   294: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual toString : ()Ljava/lang/String;
    //   300: invokestatic d : (Ljava/lang/String;)I
    //   303: pop
    //   304: goto -> 266
    //   307: astore #20
    //   309: aload #22
    //   311: astore #21
    //   313: aload #20
    //   315: astore #22
    //   317: aload #21
    //   319: astore #20
    //   321: aload #22
    //   323: invokevirtual getMessage : ()Ljava/lang/String;
    //   326: aload #22
    //   328: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   331: pop
    //   332: fconst_0
    //   333: fstore_1
    //   334: fload_1
    //   335: fstore_0
    //   336: aload #21
    //   338: ifnull -> 266
    //   341: aload #21
    //   343: invokevirtual close : ()V
    //   346: fload_1
    //   347: fstore_0
    //   348: goto -> 266
    //   351: astore #20
    //   353: new java/lang/StringBuilder
    //   356: dup
    //   357: invokespecial <init> : ()V
    //   360: ldc_w 'Exception while closing /proc/stat file:'
    //   363: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: aload #20
    //   368: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   371: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: invokevirtual toString : ()Ljava/lang/String;
    //   377: invokestatic d : (Ljava/lang/String;)I
    //   380: pop
    //   381: fload_1
    //   382: fstore_0
    //   383: goto -> 266
    //   386: astore #21
    //   388: aload #20
    //   390: ifnull -> 398
    //   393: aload #20
    //   395: invokevirtual close : ()V
    //   398: aload #21
    //   400: athrow
    //   401: astore #20
    //   403: new java/lang/StringBuilder
    //   406: dup
    //   407: invokespecial <init> : ()V
    //   410: ldc_w 'Exception while closing /proc/stat file:'
    //   413: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: aload #20
    //   418: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   421: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   424: invokevirtual toString : ()Ljava/lang/String;
    //   427: invokestatic d : (Ljava/lang/String;)I
    //   430: pop
    //   431: goto -> 398
    //   434: ldc_w 100.0
    //   437: fload_0
    //   438: fmul
    //   439: invokestatic round : (F)I
    //   442: i2f
    //   443: ldc_w 100.0
    //   446: fdiv
    //   447: fstore_0
    //   448: fload_0
    //   449: ldc_w 100.0
    //   452: fcmpl
    //   453: ifle -> 460
    //   456: ldc_w 100.0
    //   459: freturn
    //   460: ldc_w 100.0
    //   463: fload_0
    //   464: fmul
    //   465: freturn
    //   466: astore #20
    //   468: goto -> 124
    //   471: astore #22
    //   473: aload #21
    //   475: astore #20
    //   477: aload #22
    //   479: astore #21
    //   481: goto -> 388
    //   484: astore #22
    //   486: goto -> 317
    //   489: goto -> 266
    // Exception table:
    //   from	to	target	type
    //   6	21	307	java/io/IOException
    //   6	21	386	finally
    //   21	99	484	java/io/IOException
    //   21	99	471	finally
    //   118	124	466	java/lang/Exception
    //   118	124	484	java/io/IOException
    //   118	124	471	finally
    //   124	218	484	java/io/IOException
    //   124	218	471	finally
    //   261	266	274	java/io/IOException
    //   321	332	386	finally
    //   341	346	351	java/io/IOException
    //   393	398	401	java/io/IOException
  }
  
  public static Location getCoordinates() {
    return getLocation();
  }
  
  protected static String getDeviceId() {
    return mDeviceId;
  }
  
  protected static String getDeviceIdType() {
    return mDeviceIdType;
  }
  
  @TargetApi(8)
  protected static int getDeviceOrientation() {
    return (mDisplay != null) ? mDisplay.getRotation() : -1;
  }
  
  protected static String getDeviceOrientationString(int paramInt) {
    switch (paramInt) {
      default:
        return "Unknown";
      case 0:
        return "P";
      case 1:
        return "L";
      case 2:
        return "P";
      case 3:
        break;
    } 
    return "L";
  }
  
  protected static long getDeviceTicks() {
    try {
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")), 200);
      String str = bufferedReader.readLine();
      bufferedReader.close();
      String[] arrayOfString = str.split(" ");
      long l1 = Long.parseLong(arrayOfString[2]);
      long l2 = Long.parseLong(arrayOfString[3]);
      long l3 = Long.parseLong(arrayOfString[4]);
      long l4 = Long.parseLong(arrayOfString[6]);
      long l5 = Long.parseLong(arrayOfString[5]);
      long l6 = Long.parseLong(arrayOfString[7]);
      long l7 = Long.parseLong(arrayOfString[8]);
      return l1 + l2 + l3 + l4 + l5 + l6 + l7;
    } catch (Exception exception) {
      return 0L;
    } 
  }
  
  @TargetApi(18)
  private static StatFs getDiskStats(String paramString) {
    try {
      if (Build.VERSION.SDK_INT >= 18)
        return new StatFs(paramString); 
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
    } 
    return null;
  }
  
  @TargetApi(18)
  protected static float getDiskUsage() {
    float f1 = 0.0F;
    try {
      long l1 = Util.getSharedPreferences().getLong(Constants.PREF_DEVICE_TOTAL_DISK, 0L);
      if (l1 <= 0L) {
        l1 = getTotalInternalMemorySize();
        Util.getSharedPreferencesEditor().putLong(Constants.PREF_DEVICE_TOTAL_DISK, l1).commit();
      } 
      long l2 = getFolderSize(new File((mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0)).applicationInfo.dataDir));
      if (l1 > 0L)
        f1 = (float)l2 / (float)l1 * 100.0F; 
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      f1 = 0.0F;
    } 
    float f2 = f1;
    if (f1 < 0.0F)
      f2 = 0.0F; 
    return f2;
  }
  
  private static long getFileSize(String paramString) {
    long l = 0L;
    try {
      File file = new File(paramString);
      if (file != null)
        l = file.length(); 
      return l;
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return 0L;
    } finally {}
  }
  
  private static long getFolderSize(File paramFile) {
    long l = 0L;
    if (paramFile != null && paramFile.isDirectory()) {
      File[] arrayOfFile = paramFile.listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j) {
        long l1;
        File file = arrayOfFile[i];
        if (file.isFile()) {
          l1 = l + file.length();
        } else {
          l1 = l;
          if (file.isDirectory())
            l1 = l + file.length() + getFolderSize(file); 
        } 
        i++;
        l = l1;
      } 
      return l;
    } 
    return 0L;
  }
  
  public static Location getLastLocation() {
    if (lastLocation == null)
      lastLocation = getLocation(); 
    return lastLocation;
  }
  
  protected static String getLocalIpAddress() {
    try {
      Context context1 = mContext;
      Context context2 = mContext;
      WifiManager wifiManager = (WifiManager)context1.getSystemService("wifi");
      if (wifiManager != null && wifiManager.isWifiEnabled()) {
        int i = wifiManager.getConnectionInfo().getIpAddress();
        return String.format("%d.%d.%d.%d", new Object[] { Integer.valueOf(i & 0xFF), Integer.valueOf(i >> 8 & 0xFF), Integer.valueOf(i >> 16 & 0xFF), Integer.valueOf(i >> 24 & 0xFF) });
      } 
      Enumeration<NetworkInterface> enumeration = NetworkInterface.getNetworkInterfaces();
      while (enumeration.hasMoreElements()) {
        Enumeration<InetAddress> enumeration1 = ((NetworkInterface)enumeration.nextElement()).getInetAddresses();
        while (enumeration1.hasMoreElements()) {
          InetAddress inetAddress = enumeration1.nextElement();
          if (!inetAddress.isLoopbackAddress() && inetAddress instanceof java.net.Inet4Address)
            return inetAddress.getHostAddress(); 
        } 
      } 
    } catch (Exception exception) {
      CALog.e(exception.toString(), exception);
    } 
    return "Unknown";
  }
  
  private static Location getLocation() {
    try {
      LocationManager locationManager = (LocationManager)mContext.getSystemService("location");
      Criteria criteria = new Criteria();
      criteria.setAccuracy(2);
      String str = locationManager.getBestProvider(criteria, true);
      return (str == null) ? null : locationManager.getLastKnownLocation(str);
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return null;
    } 
  }
  
  protected static float getMemoryUsage() {
    float f = 0.0F;
    try {
      float f1 = getPSS();
      long l = getTotalMemory().longValue();
      f1 /= (float)l;
      if (f1 > 0.0F)
        f = f1 * 100.0F; 
      return f;
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return 0.0F;
    } 
  }
  
  protected static String getNetworkCountryCode(TelephonyManager paramTelephonyManager) {
    String str = paramTelephonyManager.getNetworkCountryIso();
    return (str != null) ? str : "unknown";
  }
  
  protected static String getNetworkOperatorName(TelephonyManager paramTelephonyManager) {
    String str = paramTelephonyManager.getNetworkOperatorName();
    if (str != null) {
      String str1 = str;
      return (str.length() == 0) ? "Unknown" : str1;
    } 
    return "Unknown";
  }
  
  protected static String getNetworkType(Context paramContext) {
    boolean bool = true;
    try {
      NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
        i = 1;
      } else {
        i = 0;
      } 
      if (i) {
        if (networkInfo.getType() == 1) {
          i = bool;
        } else {
          i = 0;
        } 
      } else {
        return "Offline";
      } 
    } catch (SecurityException securityException) {
      CALog.w("ACCESS_NETWORK_STATE permiison not granted. Cannot determine Wifi.", securityException);
      i = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType();
      switch (i) {
        default:
          return "type_" + i;
        case 0:
          return "Unknown";
        case 2:
          return "EDGE";
        case 3:
        case 4:
        case 8:
        case 9:
          return "3G";
        case 13:
          break;
      } 
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      i = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType();
      switch (i) {
        default:
          return "type_" + i;
        case 0:
          return "Unknown";
        case 2:
          return "EDGE";
        case 3:
        case 4:
        case 8:
        case 9:
          return "3G";
        case 13:
          break;
      } 
    } 
    if (i != 0)
      return "WIFI"; 
    int i = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType();
    switch (i) {
      default:
        return "type_" + i;
      case 0:
        return "Unknown";
      case 2:
        return "EDGE";
      case 3:
      case 4:
      case 8:
      case 9:
        return "3G";
      case 13:
        break;
    } 
  }
  
  @TargetApi(8)
  protected static int getPSS() {
    int i = 0;
    Debug.MemoryInfo[] arrayOfMemoryInfo = ((ActivityManager)mContext.getSystemService("activity")).getProcessMemoryInfo(new int[] { mPid });
    if (arrayOfMemoryInfo.length < 0)
      i = arrayOfMemoryInfo[0].getTotalPss(); 
    return i;
  }
  
  public static int getPid() {
    try {
      return Process.myPid();
    } catch (Exception exception) {
      return -1;
    } 
  }
  
  @TargetApi(18)
  public static long getSDKDiskOccupancy() {
    long l1 = 0L;
    try {
      long l = getFileSize(DatabaseHelper.getDatabaseHelper((Context)SDK.getApp()).getMDODBPath());
      l1 = l;
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
    } 
    long l2 = l1 + 0L;
    l1 = l2;
    if (l2 == 0L)
      l1 = -1L; 
    return l1;
  }
  
  public static long getTotalInternalMemorySize() {
    StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
    long l = statFs.getBlockSize();
    return statFs.getBlockCount() * l;
  }
  
  static Long getTotalMemory() {
    return mTotalMemory;
  }
  
  protected static Long getTotalRAM() {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: aconst_null
    //   3: astore #4
    //   5: ldc_w '0'
    //   8: astore_2
    //   9: new java/io/BufferedReader
    //   12: dup
    //   13: new java/io/FileReader
    //   16: dup
    //   17: ldc_w '/proc/meminfo'
    //   20: invokespecial <init> : (Ljava/lang/String;)V
    //   23: invokespecial <init> : (Ljava/io/Reader;)V
    //   26: astore_1
    //   27: aload_2
    //   28: astore_0
    //   29: aload_1
    //   30: invokevirtual readLine : ()Ljava/lang/String;
    //   33: astore_3
    //   34: aload_2
    //   35: astore_0
    //   36: aload_3
    //   37: aload_3
    //   38: bipush #58
    //   40: invokevirtual indexOf : (I)I
    //   43: iconst_1
    //   44: iadd
    //   45: invokevirtual substring : (I)Ljava/lang/String;
    //   48: invokevirtual trim : ()Ljava/lang/String;
    //   51: astore_2
    //   52: aload_2
    //   53: astore_0
    //   54: aload_2
    //   55: iconst_0
    //   56: aload_2
    //   57: ldc_w 'kB'
    //   60: invokevirtual indexOf : (Ljava/lang/String;)I
    //   63: iconst_1
    //   64: isub
    //   65: invokevirtual substring : (II)Ljava/lang/String;
    //   68: invokevirtual trim : ()Ljava/lang/String;
    //   71: astore_2
    //   72: aload_2
    //   73: astore_0
    //   74: new java/lang/StringBuilder
    //   77: dup
    //   78: invokespecial <init> : ()V
    //   81: ldc_w 'Memory in kB= '
    //   84: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_2
    //   88: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual toString : ()Ljava/lang/String;
    //   94: invokestatic d : (Ljava/lang/String;)I
    //   97: pop
    //   98: aload_1
    //   99: ifnull -> 106
    //   102: aload_1
    //   103: invokevirtual close : ()V
    //   106: aload_2
    //   107: astore_0
    //   108: aload_0
    //   109: invokestatic parseLong : (Ljava/lang/String;)J
    //   112: invokestatic valueOf : (J)Ljava/lang/Long;
    //   115: areturn
    //   116: astore_0
    //   117: aload_0
    //   118: invokevirtual getMessage : ()Ljava/lang/String;
    //   121: aload_0
    //   122: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   125: pop
    //   126: aload_2
    //   127: astore_0
    //   128: goto -> 108
    //   131: astore_3
    //   132: aload_2
    //   133: astore_1
    //   134: aload #4
    //   136: astore_2
    //   137: aload_2
    //   138: astore_0
    //   139: aload_3
    //   140: invokevirtual getMessage : ()Ljava/lang/String;
    //   143: aload_3
    //   144: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   147: pop
    //   148: aload_1
    //   149: astore_0
    //   150: aload_2
    //   151: ifnull -> 108
    //   154: aload_2
    //   155: invokevirtual close : ()V
    //   158: aload_1
    //   159: astore_0
    //   160: goto -> 108
    //   163: astore_0
    //   164: aload_0
    //   165: invokevirtual getMessage : ()Ljava/lang/String;
    //   168: aload_0
    //   169: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   172: pop
    //   173: aload_1
    //   174: astore_0
    //   175: goto -> 108
    //   178: astore_1
    //   179: aload_0
    //   180: ifnull -> 187
    //   183: aload_0
    //   184: invokevirtual close : ()V
    //   187: aload_1
    //   188: athrow
    //   189: astore_0
    //   190: aload_0
    //   191: invokevirtual getMessage : ()Ljava/lang/String;
    //   194: aload_0
    //   195: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   198: pop
    //   199: goto -> 187
    //   202: astore_2
    //   203: aload_1
    //   204: astore_0
    //   205: aload_2
    //   206: astore_1
    //   207: goto -> 179
    //   210: astore_3
    //   211: aload_1
    //   212: astore_2
    //   213: aload_0
    //   214: astore_1
    //   215: goto -> 137
    // Exception table:
    //   from	to	target	type
    //   9	27	131	java/lang/Exception
    //   9	27	178	finally
    //   29	34	210	java/lang/Exception
    //   29	34	202	finally
    //   36	52	210	java/lang/Exception
    //   36	52	202	finally
    //   54	72	210	java/lang/Exception
    //   54	72	202	finally
    //   74	98	210	java/lang/Exception
    //   74	98	202	finally
    //   102	106	116	java/io/IOException
    //   139	148	178	finally
    //   154	158	163	java/io/IOException
    //   183	187	189	java/io/IOException
  }
  
  private void initializeAppDeviceData(Context paramContext, String paramString) throws Exception {
    String str;
    mContext = paramContext;
    this.mTenantID = paramString;
    mDeviceId = getAndroidId(paramContext);
    this.mAppVersion = Util.getAppVersion(paramContext);
    mTotalMemory = getTotalRAM();
    if (Build.MANUFACTURER != null) {
      paramString = Build.MANUFACTURER;
    } else {
      paramString = "unknown";
    } 
    this.mManufactorer = paramString;
    if (Build.MODEL != null) {
      paramString = Build.MODEL;
    } else {
      paramString = "unknown";
    } 
    this.mModel = paramString;
    this.mApplicationName = getApplicationName(paramContext);
    if (Build.VERSION.RELEASE != null) {
      str = Build.VERSION.RELEASE;
    } else {
      str = "unknown";
    } 
    this.mVersion = str;
    mPid = Process.myPid();
    mDisplay = ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay();
    setNetworkDetails();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("t=");
    stringBuilder.append(this.mTenantID);
    stringBuilder.append(";a=");
    stringBuilder.append(this.mApplicationName);
    stringBuilder.append(";d=");
    stringBuilder.append(mDeviceId);
    stringBuilder.append(";v=");
    stringBuilder.append("16.4.2");
    mAPMBaseHeader = stringBuilder.toString();
  }
  
  protected static void registerBatteryReceiver() {
    try {
      IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
      mContext.registerReceiver(batteryReceiver, intentFilter);
      return;
    } catch (Throwable throwable) {
      CALog.e("registerBatteryReceiver caught exception.");
      return;
    } 
  }
  
  protected static void registerForBatteryStatus() {
    if (batteryReceiver != null)
      return; 
    try {
      batteryReceiver = new BroadcastReceiver() {
          int level = -1;
          
          int scale = -1;
          
          public void onReceive(Context param1Context, Intent param1Intent) {
            this.level = param1Intent.getIntExtra("level", -1);
            this.scale = param1Intent.getIntExtra("scale", -1);
            AppDeviceData.access$102(this.level / this.scale * 100.0F);
            CALog.d("BatteryManager level is " + AppDeviceData.mBatteryPct);
          }
        };
      return;
    } catch (Throwable throwable) {
      CALog.e("registerForBatteryStatus failed", throwable);
      return;
    } 
  }
  
  public static void setAdditionalAPMHeaders(String paramString) {
    additionalAPMHeaders = paramString;
  }
  
  protected static void unRegisterBatteryReceiver() {
    try {
      if (batteryReceiver != null)
        mContext.unregisterReceiver(batteryReceiver); 
      return;
    } catch (Throwable throwable) {
      CALog.e("unRegisterBatteryReceiver caught exception:", throwable);
      return;
    } 
  }
  
  String getAppVersion() {
    return this.mAppVersion;
  }
  
  String getApplicationName() {
    return this.mApplicationName;
  }
  
  String getIpAddress() {
    return this.mIpAddress;
  }
  
  String getManufactorer() {
    return this.mManufactorer;
  }
  
  String getModel() {
    return this.mModel;
  }
  
  String getNetworkOperatorName() {
    return this.mNetworkOperatorName;
  }
  
  String getVersion() {
    return this.mVersion;
  }
  
  public void setNetworkDetails() {
    DynInfoHolder dynInfoHolder = new DynInfoHolder();
    this.mNetworkOperatorName = dynInfoHolder.opName;
    this.mNetworkCountryCode = dynInfoHolder.countryCode;
    this.mNetworkType = dynInfoHolder.networkType;
    this.mIpAddress = dynInfoHolder.ipAddresss;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("DeviceID:" + mDeviceId);
    stringBuffer.append(" Application Version:" + this.mAppVersion);
    stringBuffer.append(" Application Name:" + this.mApplicationName);
    stringBuffer.append(" Memory:" + mTotalMemory);
    stringBuffer.append(" Manufactorer:" + this.mManufactorer);
    stringBuffer.append(" Model:" + this.mModel);
    stringBuffer.append(" IP Address:" + this.mIpAddress);
    stringBuffer.append(" NetworkType:" + this.mNetworkType);
    stringBuffer.append(" Operator Name:" + this.mNetworkOperatorName);
    stringBuffer.append(" Country Code:" + this.mNetworkCountryCode);
    return stringBuffer.toString();
  }
  
  private static class DynInfoHolder {
    String countryCode;
    
    String ipAddresss;
    
    String networkType;
    
    String opName;
    
    protected DynInfoHolder() {
      try {
        TelephonyManager telephonyManager = (TelephonyManager)AppDeviceData.mContext.getSystemService("phone");
        this.networkType = AppDeviceData.getNetworkType(AppDeviceData.mContext);
        this.ipAddresss = AppDeviceData.getLocalIpAddress();
        this.opName = AppDeviceData.getNetworkOperatorName(telephonyManager);
        this.countryCode = AppDeviceData.getNetworkCountryCode(telephonyManager);
        if (this.networkType.equalsIgnoreCase("WIFI")) {
          this.opName = "WIFI";
          return;
        } 
        if (this.networkType.equalsIgnoreCase("Offline")) {
          this.opName = "Offline";
          return;
        } 
      } catch (Exception exception) {
        CALog.e("Error in initializing DynInfoHolder - network information.");
        CALog.ex(exception);
      } 
    }
    
    public String toString() {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(";n=");
      stringBuilder.append(this.opName);
      stringBuilder.append(";l=");
      stringBuilder.append(this.networkType);
      return stringBuilder.toString();
    }
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\AppDeviceData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */