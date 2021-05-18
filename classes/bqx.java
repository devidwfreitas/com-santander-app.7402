import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Looper;
import android.util.Log;
import com.facebook.FacebookActivity;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class bqx {
  private static final String a = bqx.class.getName();
  
  private static final String b = "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.";
  
  private static final String c = "FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.";
  
  private static final String d = "FacebookActivity is declared incorrectly in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.";
  
  private static final String e = "A ContentProvider for this app was not set up in the AndroidManifest.xml, please add %s as a provider to your AndroidManifest.xml file. See https://developers.facebook.com/docs/sharing/android for more info.";
  
  private static final String f = "com.facebook.app.FacebookContentProvider";
  
  public static void a() {
    if (!Looper.getMainLooper().equals(Looper.myLooper()))
      throw new bhp("This method should be called from the UI thread"); 
  }
  
  public static void a(Context paramContext) {
    a(paramContext, true);
  }
  
  public static void a(Context paramContext, boolean paramBoolean) {
    a(paramContext, "context");
    if (paramContext.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
      if (paramBoolean)
        throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml."); 
      Log.w(a, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
    } 
  }
  
  public static void a(Object paramObject, String paramString) {
    if (paramObject == null)
      throw new NullPointerException("Argument '" + paramString + "' cannot be null"); 
  }
  
  public static void a(Object paramObject, String paramString, Object... paramVarArgs) {
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      Object object = paramVarArgs[i];
      if ((object != null) ? object.equals(paramObject) : (paramObject == null))
        return; 
    } 
    throw new IllegalArgumentException("Argument '" + paramString + "' was not one of the allowed values");
  }
  
  public static void a(String paramString1, String paramString2) {
    if (bqq.a(paramString1))
      throw new IllegalArgumentException("Argument '" + paramString2 + "' cannot be null or empty"); 
  }
  
  public static <T> void a(Collection<T> paramCollection, String paramString) {
    if (paramCollection.isEmpty())
      throw new IllegalArgumentException("Container '" + paramString + "' cannot be empty"); 
  }
  
  public static boolean a(Context paramContext, String paramString) {
    return (paramContext.checkCallingOrSelfPermission(paramString) == 0);
  }
  
  public static void b() {
    if (!bhv.a())
      throw new bib("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first."); 
  }
  
  public static void b(Context paramContext, boolean paramBoolean) {
    a(paramContext, "context");
    PackageManager packageManager = paramContext.getPackageManager();
    ActivityInfo activityInfo2 = null;
    ActivityInfo activityInfo1 = activityInfo2;
    if (packageManager != null) {
      ComponentName componentName = new ComponentName(paramContext, FacebookActivity.class);
      try {
        activityInfo1 = packageManager.getActivityInfo(componentName, 1);
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
        activityInfo1 = activityInfo2;
      } 
    } 
    if (activityInfo1 == null) {
      if (paramBoolean)
        throw new IllegalStateException("FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info."); 
      Log.w(a, "FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
    } 
  }
  
  public static <T> void b(Collection<T> paramCollection, String paramString) {
    a(paramCollection, paramString);
    Iterator<T> iterator = paramCollection.iterator();
    while (iterator.hasNext()) {
      if (iterator.next() == null)
        throw new NullPointerException("Container '" + paramString + "' cannot contain null values"); 
    } 
  }
  
  public static boolean b(Context paramContext) {
    return a(paramContext, "android.permission.ACCESS_WIFI_STATE");
  }
  
  public static String c() {
    String str = bhv.l();
    if (str == null)
      throw new IllegalStateException("No App ID found, please set the App ID."); 
    return str;
  }
  
  public static void c(Context paramContext, boolean paramBoolean) {
    if (!h(paramContext)) {
      if (paramBoolean)
        throw new IllegalStateException("FacebookActivity is declared incorrectly in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info."); 
      Log.w(a, "FacebookActivity is declared incorrectly in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
    } 
  }
  
  public static void c(Collection<String> paramCollection, String paramString) {
    a(paramCollection, paramString);
    for (String str : paramCollection) {
      if (str == null)
        throw new NullPointerException("Container '" + paramString + "' cannot contain null values"); 
      if (str.length() == 0)
        throw new IllegalArgumentException("Container '" + paramString + "' cannot contain empty values"); 
    } 
  }
  
  public static boolean c(Context paramContext) {
    return a(paramContext, "android.permission.CHANGE_WIFI_STATE");
  }
  
  public static String d() {
    String str = bhv.n();
    if (str == null)
      throw new IllegalStateException("No Client Token found, please set the Client Token."); 
    return str;
  }
  
  public static <T> void d(Collection<T> paramCollection, String paramString) {
    b(paramCollection, paramString);
    a(paramCollection, paramString);
  }
  
  public static boolean d(Context paramContext) {
    return (a(paramContext, "android.permission.ACCESS_COARSE_LOCATION") || a(paramContext, "android.permission.ACCESS_FINE_LOCATION"));
  }
  
  public static boolean e(Context paramContext) {
    return (a(paramContext, "android.permission.BLUETOOTH") && a(paramContext, "android.permission.BLUETOOTH_ADMIN"));
  }
  
  public static void f(Context paramContext) {
    b(paramContext, true);
  }
  
  public static void g(Context paramContext) {
    c(paramContext, true);
  }
  
  public static boolean h(Context paramContext) {
    List list;
    boolean bool1;
    boolean bool2 = false;
    a(paramContext, "context");
    PackageManager packageManager = paramContext.getPackageManager();
    paramContext = null;
    if (packageManager != null) {
      Intent intent = new Intent();
      intent.setAction("android.intent.action.VIEW");
      intent.addCategory("android.intent.category.DEFAULT");
      intent.addCategory("android.intent.category.BROWSABLE");
      intent.setData(Uri.parse("fb" + bhv.l() + "://authorize"));
      list = packageManager.queryIntentActivities(intent, 64);
    } 
    if (list != null) {
      Iterator iterator = list.iterator();
      bool1 = false;
      while (iterator.hasNext()) {
        bool1 = bool2;
        if (((ResolveInfo)iterator.next()).activityInfo.name.equals(bhf.class.getName()))
          bool1 = true; 
      } 
    } else {
      bool1 = false;
    } 
    return bool1;
  }
  
  public static void i(Context paramContext) {
    a(paramContext, "context");
    String str = c();
    PackageManager packageManager = paramContext.getPackageManager();
    if (packageManager != null) {
      str = "com.facebook.app.FacebookContentProvider" + str;
      if (packageManager.resolveContentProvider(str, 0) == null)
        throw new IllegalStateException(String.format("A ContentProvider for this app was not set up in the AndroidManifest.xml, please add %s as a provider to your AndroidManifest.xml file. See https://developers.facebook.com/docs/sharing/android for more info.", new Object[] { str })); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */