import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.Util;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

public class avo {
  String A;
  
  String B;
  
  Map<String, String> C;
  
  private boolean D = false;
  
  public String a;
  
  Boolean b;
  
  public String c;
  
  public String d;
  
  public String e;
  
  String f;
  
  String g;
  
  String h;
  
  String i;
  
  String j;
  
  String k;
  
  String l;
  
  String m;
  
  String n;
  
  String o;
  
  String p;
  
  String q;
  
  String r;
  
  String s;
  
  String t;
  
  String u;
  
  String v;
  
  String w;
  
  String x;
  
  String y;
  
  String z;
  
  public avo(Context paramContext, String paramString) {
    Resources resources = paramContext.getResources();
    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
    Configuration configuration = resources.getConfiguration();
    Locale locale = Util.getLocale(configuration);
    int i = configuration.screenLayout;
    paramContext.getContentResolver();
    a(paramContext);
    this.h = b(paramContext);
    this.i = c(paramContext);
    this.j = a(i);
    this.k = a();
    this.l = b();
    this.m = c();
    this.n = d();
    this.o = e();
    this.p = a(locale);
    this.q = b(locale);
    this.r = b(i);
    this.s = c(i);
    this.t = a(displayMetrics);
    this.u = b(displayMetrics);
    this.v = c(displayMetrics);
    this.g = a(paramString);
    this.f = d(paramContext);
    this.C = Util.getPluginKeys(paramContext);
    this.w = g();
    this.x = h();
    this.y = f();
    this.z = i();
    this.A = e(paramContext);
    this.B = f(paramContext);
  }
  
  private String a() {
    return Build.MODEL;
  }
  
  private String a(int paramInt) {
    switch (paramInt & 0xF) {
      default:
        return null;
      case 1:
      case 2:
        return "phone";
      case 3:
      case 4:
        break;
    } 
    return "tablet";
  }
  
  private String a(Context paramContext, boolean paramBoolean) {
    if (!paramBoolean) {
      if (!Util.checkPermission(paramContext, "android.permission.ACCESS_WIFI_STATE"))
        AdjustFactory.getLogger().warn("Missing permission: ACCESS_WIFI_STATE", new Object[0]); 
      return Util.getMacAddress(paramContext);
    } 
    return null;
  }
  
  private String a(DisplayMetrics paramDisplayMetrics) {
    int i = paramDisplayMetrics.densityDpi;
    return (i == 0) ? null : ((i < 140) ? "low" : ((i > 200) ? "high" : "medium"));
  }
  
  private String a(String paramString) {
    return (paramString == null) ? "android4.12.0" : String.format(Locale.US, "%s@%s", new Object[] { paramString, "android4.12.0" });
  }
  
  private String a(Locale paramLocale) {
    return paramLocale.getLanguage();
  }
  
  private String b() {
    return Build.MANUFACTURER;
  }
  
  private String b(int paramInt) {
    switch (paramInt & 0xF) {
      default:
        return null;
      case 1:
        return "small";
      case 2:
        return "normal";
      case 3:
        return "large";
      case 4:
        break;
    } 
    return "xlarge";
  }
  
  private String b(Context paramContext) {
    return paramContext.getPackageName();
  }
  
  private String b(DisplayMetrics paramDisplayMetrics) {
    return String.valueOf(paramDisplayMetrics.widthPixels);
  }
  
  private String b(String paramString) {
    return (paramString == null) ? null : Util.sha1(paramString);
  }
  
  private String b(Locale paramLocale) {
    return paramLocale.getCountry();
  }
  
  private String c() {
    return "android";
  }
  
  private String c(int paramInt) {
    switch (paramInt & 0x30) {
      default:
        return null;
      case 32:
        return "long";
      case 16:
        break;
    } 
    return "normal";
  }
  
  private String c(Context paramContext) {
    try {
      return (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0)).versionName;
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private String c(DisplayMetrics paramDisplayMetrics) {
    return String.valueOf(paramDisplayMetrics.heightPixels);
  }
  
  private String c(String paramString) {
    return (paramString == null) ? null : Util.md5(paramString.replaceAll(":", ""));
  }
  
  private String d() {
    return Build.VERSION.RELEASE;
  }
  
  private String d(Context paramContext) {
    try {
      Cursor cursor = paramContext.getContentResolver().query(Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider"), new String[] { "aid" }, null, null, null);
      if (cursor == null)
        return null; 
      if (!cursor.moveToFirst()) {
        cursor.close();
        return null;
      } 
      String str = cursor.getString(cursor.getColumnIndex("aid"));
      cursor.close();
      return str;
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private String e() {
    return "" + Build.VERSION.SDK_INT;
  }
  
  private String e(Context paramContext) {
    try {
      PackageInfo packageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 4096);
      return Util.dateFormatter.format(new Date(packageInfo.firstInstallTime));
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private String f() {
    return Build.ID;
  }
  
  private String f(Context paramContext) {
    try {
      PackageInfo packageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 4096);
      return Util.dateFormatter.format(new Date(packageInfo.lastUpdateTime));
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private String g() {
    return Build.DISPLAY;
  }
  
  private String h() {
    String[] arrayOfString = Util.getSupportedAbis();
    return (arrayOfString == null || arrayOfString.length == 0) ? Util.getCpuAbi() : arrayOfString[0];
  }
  
  private String i() {
    return Util.getVmInstructionSet();
  }
  
  void a(Context paramContext) {
    this.b = Util.isPlayTrackingEnabled(paramContext);
    this.a = Util.getPlayAdId(paramContext);
    if (this.a == null && !this.D) {
      if (!Util.checkPermission(paramContext, "android.permission.ACCESS_WIFI_STATE"))
        AdjustFactory.getLogger().warn("Missing permission: ACCESS_WIFI_STATE", new Object[0]); 
      String str = Util.getMacAddress(paramContext);
      this.c = b(str);
      this.d = c(str);
      this.e = Util.getAndroidId(paramContext);
      this.D = true;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */