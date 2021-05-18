import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;

public class cwv {
  private static boolean a = false;
  
  private static final AtomicBoolean b;
  
  @Deprecated
  public static final int e = 10298000;
  
  @Deprecated
  public static final String f = "com.google.android.gms";
  
  public static final String g = "com.android.vending";
  
  public static boolean h = false;
  
  public static boolean i = false;
  
  static boolean j = false;
  
  static final AtomicBoolean k;
  
  static {
    a = false;
    k = new AtomicBoolean();
    b = new AtomicBoolean();
  }
  
  private static void a(Context paramContext) {
    if (!b.get()) {
      int i = cvd.b(paramContext);
      if (i == 0)
        throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"); 
      if (i != e) {
        int j = e;
        String str = String.valueOf("com.google.android.gms.version");
        throw new IllegalStateException((new StringBuilder(String.valueOf(str).length() + 290)).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ").append(j).append(" but found ").append(i).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"").append(str).append("\" android:value=\"@integer/google_play_services_version\" />").toString());
      } 
    } 
  }
  
  @Deprecated
  public static boolean a() {
    return cvt.a();
  }
  
  @Deprecated
  @TargetApi(19)
  public static boolean a(Context paramContext, int paramInt, String paramString) {
    return cwi.a(paramContext, paramInt, paramString);
  }
  
  @TargetApi(21)
  static boolean a(Context paramContext, String paramString) {
    boolean bool = paramString.equals("com.google.android.gms");
    if (cwd.k()) {
      Iterator<PackageInstaller.SessionInfo> iterator = paramContext.getPackageManager().getPackageInstaller().getAllSessions().iterator();
      while (iterator.hasNext()) {
        if (paramString.equals(((PackageInstaller.SessionInfo)iterator.next()).getAppPackageName()))
          return true; 
      } 
    } 
    PackageManager packageManager = paramContext.getPackageManager();
    try {
      ApplicationInfo applicationInfo = packageManager.getApplicationInfo(paramString, 8192);
      if (bool)
        return applicationInfo.enabled; 
      if (applicationInfo.enabled) {
        bool = n(paramContext);
        if (!bool)
          return true; 
      } 
      return false;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return false;
    } 
  }
  
  @Deprecated
  public static PendingIntent b(int paramInt1, Context paramContext, int paramInt2) {
    return cwn.b().a(paramContext, paramInt1, paramInt2);
  }
  
  private static void b(Context paramContext) {
    if (!a)
      c(paramContext); 
  }
  
  @Deprecated
  public static String c(int paramInt) {
    return ConnectionResult.a(paramInt);
  }
  
  private static void c(Context paramContext) {
    try {
      PackageInfo packageInfo = dgl.b(paramContext).b("com.google.android.gms", 64);
      if (packageInfo != null && cww.a(paramContext).a(packageInfo, new cwp[] { cws.a[1] }) != null) {
        j = true;
      } else {
        j = false;
      } 
      return;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", (Throwable)nameNotFoundException);
      return;
    } finally {
      a = true;
    } 
  }
  
  @Deprecated
  public static boolean c(Context paramContext, int paramInt) {
    return cwi.a(paramContext, paramInt);
  }
  
  @Deprecated
  public static boolean d(int paramInt) {
    switch (paramInt) {
      default:
        return false;
      case 1:
      case 2:
      case 3:
      case 9:
        break;
    } 
    return true;
  }
  
  @Deprecated
  public static boolean d(Context paramContext, int paramInt) {
    return (paramInt == 18) ? true : ((paramInt == 1) ? a(paramContext, "com.google.android.gms") : false);
  }
  
  @Deprecated
  public static int e(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   4: astore #4
    //   6: aload_0
    //   7: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   10: getstatic cns.common_google_play_services_unknown_issue : I
    //   13: invokevirtual getString : (I)Ljava/lang/String;
    //   16: pop
    //   17: ldc 'com.google.android.gms'
    //   19: aload_0
    //   20: invokevirtual getPackageName : ()Ljava/lang/String;
    //   23: invokevirtual equals : (Ljava/lang/Object;)Z
    //   26: ifne -> 33
    //   29: aload_0
    //   30: invokestatic a : (Landroid/content/Context;)V
    //   33: aload_0
    //   34: invokestatic b : (Landroid/content/Context;)Z
    //   37: ifne -> 124
    //   40: aload_0
    //   41: invokestatic d : (Landroid/content/Context;)Z
    //   44: ifne -> 124
    //   47: iconst_1
    //   48: istore_1
    //   49: aconst_null
    //   50: astore_3
    //   51: iload_1
    //   52: ifeq -> 66
    //   55: aload #4
    //   57: ldc 'com.android.vending'
    //   59: sipush #8256
    //   62: invokevirtual getPackageInfo : (Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   65: astore_3
    //   66: aload #4
    //   68: ldc 'com.google.android.gms'
    //   70: bipush #64
    //   72: invokevirtual getPackageInfo : (Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   75: astore #5
    //   77: aload_0
    //   78: invokestatic a : (Landroid/content/Context;)Lcww;
    //   81: astore_0
    //   82: iload_1
    //   83: ifeq -> 183
    //   86: aload_0
    //   87: aload_3
    //   88: getstatic cws.a : [Lcwp;
    //   91: invokevirtual a : (Landroid/content/pm/PackageInfo;[Lcwp;)Lcwp;
    //   94: astore_3
    //   95: aload_3
    //   96: ifnonnull -> 154
    //   99: ldc 'GooglePlayServicesUtil'
    //   101: ldc_w 'Google Play Store signature invalid.'
    //   104: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   107: pop
    //   108: bipush #9
    //   110: ireturn
    //   111: astore_3
    //   112: ldc 'GooglePlayServicesUtil'
    //   114: ldc_w 'The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.'
    //   117: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   120: pop
    //   121: goto -> 17
    //   124: iconst_0
    //   125: istore_1
    //   126: goto -> 49
    //   129: astore_0
    //   130: ldc 'GooglePlayServicesUtil'
    //   132: ldc_w 'Google Play Store is missing.'
    //   135: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   138: pop
    //   139: bipush #9
    //   141: ireturn
    //   142: astore_0
    //   143: ldc 'GooglePlayServicesUtil'
    //   145: ldc_w 'Google Play services is missing.'
    //   148: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   151: pop
    //   152: iconst_1
    //   153: ireturn
    //   154: aload_0
    //   155: aload #5
    //   157: iconst_1
    //   158: anewarray cwp
    //   161: dup
    //   162: iconst_0
    //   163: aload_3
    //   164: aastore
    //   165: invokevirtual a : (Landroid/content/pm/PackageInfo;[Lcwp;)Lcwp;
    //   168: ifnonnull -> 207
    //   171: ldc 'GooglePlayServicesUtil'
    //   173: ldc_w 'Google Play services signature invalid.'
    //   176: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   179: pop
    //   180: bipush #9
    //   182: ireturn
    //   183: aload_0
    //   184: aload #5
    //   186: getstatic cws.a : [Lcwp;
    //   189: invokevirtual a : (Landroid/content/pm/PackageInfo;[Lcwp;)Lcwp;
    //   192: ifnonnull -> 207
    //   195: ldc 'GooglePlayServicesUtil'
    //   197: ldc_w 'Google Play services signature invalid.'
    //   200: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   203: pop
    //   204: bipush #9
    //   206: ireturn
    //   207: getstatic cwv.e : I
    //   210: invokestatic a : (I)I
    //   213: istore_1
    //   214: aload #5
    //   216: getfield versionCode : I
    //   219: invokestatic a : (I)I
    //   222: iload_1
    //   223: if_icmpge -> 275
    //   226: getstatic cwv.e : I
    //   229: istore_1
    //   230: aload #5
    //   232: getfield versionCode : I
    //   235: istore_2
    //   236: ldc 'GooglePlayServicesUtil'
    //   238: new java/lang/StringBuilder
    //   241: dup
    //   242: bipush #77
    //   244: invokespecial <init> : (I)V
    //   247: ldc_w 'Google Play services out of date.  Requires '
    //   250: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: iload_1
    //   254: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   257: ldc ' but found '
    //   259: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: iload_2
    //   263: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   266: invokevirtual toString : ()Ljava/lang/String;
    //   269: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   272: pop
    //   273: iconst_2
    //   274: ireturn
    //   275: aload #5
    //   277: getfield applicationInfo : Landroid/content/pm/ApplicationInfo;
    //   280: astore_3
    //   281: aload_3
    //   282: astore_0
    //   283: aload_3
    //   284: ifnonnull -> 296
    //   287: aload #4
    //   289: ldc 'com.google.android.gms'
    //   291: iconst_0
    //   292: invokevirtual getApplicationInfo : (Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   295: astore_0
    //   296: aload_0
    //   297: getfield enabled : Z
    //   300: ifne -> 318
    //   303: iconst_3
    //   304: ireturn
    //   305: astore_0
    //   306: ldc 'GooglePlayServicesUtil'
    //   308: ldc_w 'Google Play services missing when getting application info.'
    //   311: aload_0
    //   312: invokestatic wtf : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   315: pop
    //   316: iconst_1
    //   317: ireturn
    //   318: iconst_0
    //   319: ireturn
    // Exception table:
    //   from	to	target	type
    //   6	17	111	java/lang/Throwable
    //   55	66	129	android/content/pm/PackageManager$NameNotFoundException
    //   66	77	142	android/content/pm/PackageManager$NameNotFoundException
    //   287	296	305	android/content/pm/PackageManager$NameNotFoundException
  }
  
  @Deprecated
  public static boolean e(Context paramContext, int paramInt) {
    return (paramInt == 9) ? a(paramContext, "com.android.vending") : false;
  }
  
  @Deprecated
  public static void f(Context paramContext) {
    int i = cwn.b().a(paramContext);
    if (i != 0) {
      Intent intent = cwn.b().b(paramContext, i, "e");
      Log.e("GooglePlayServicesUtil", (new StringBuilder(57)).append("GooglePlayServices not available due to error ").append(i).toString());
      if (intent == null)
        throw new cop(i); 
      throw new coq(i, "Google Play Services not available", intent);
    } 
  }
  
  public static boolean g(Context paramContext) {
    b(paramContext);
    return j;
  }
  
  public static boolean h(Context paramContext) {
    return (g(paramContext) || !a());
  }
  
  @Deprecated
  public static void i(Context paramContext) {
    if (!k.getAndSet(true))
      try {
        NotificationManager notificationManager = (NotificationManager)paramContext.getSystemService("notification");
        if (notificationManager != null) {
          notificationManager.cancel(10436);
          return;
        } 
        return;
      } catch (SecurityException securityException) {
        return;
      }  
  }
  
  @Deprecated
  public static String j(Context paramContext) {
    Uri uri = (new Uri.Builder()).scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("oss_notice").build();
    try {
      InputStream inputStream = paramContext.getContentResolver().openInputStream(uri);
      try {
        String str1 = (new Scanner(inputStream)).useDelimiter("\\A").next();
        String str2 = str1;
      } catch (NoSuchElementException noSuchElementException) {
      
      } finally {
        if (inputStream != null)
          inputStream.close(); 
      } 
    } catch (Exception exception) {
      uri = null;
    } 
    return (String)uri;
  }
  
  public static Resources k(Context paramContext) {
    try {
      return paramContext.getPackageManager().getResourcesForApplication("com.google.android.gms");
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return null;
    } 
  }
  
  public static Context l(Context paramContext) {
    try {
      return paramContext.createPackageContext("com.google.android.gms", 3);
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return null;
    } 
  }
  
  @Deprecated
  public static int m(Context paramContext) {
    try {
      PackageInfo packageInfo = paramContext.getPackageManager().getPackageInfo("com.google.android.gms", 0);
      return packageInfo.versionCode;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
      return 0;
    } 
  }
  
  @TargetApi(18)
  public static boolean n(Context paramContext) {
    if (cwd.g()) {
      Bundle bundle = ((UserManager)paramContext.getSystemService("user")).getApplicationRestrictions(paramContext.getPackageName());
      if (bundle != null && "true".equals(bundle.getString("restricted_profile")))
        return true; 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cwv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */