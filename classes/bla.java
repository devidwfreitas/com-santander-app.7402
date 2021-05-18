import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.AccessToken;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class bla {
  public static final String a = "com.facebook.sdk.appEventPreferences";
  
  public static final String b = "com.facebook.sdk.APP_EVENTS_FLUSHED";
  
  public static final String c = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED";
  
  public static final String d = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT";
  
  private static final String e = bla.class.getCanonicalName();
  
  private static final int f = 86400;
  
  private static final int g = 30;
  
  private static final String h = "_fbSourceApplicationHasBeenSet";
  
  private static final String i = "fb_push_payload";
  
  private static final String j = "campaign";
  
  private static final String k = "fb_mobile_push_opened";
  
  private static final String l = "fb_push_campaign";
  
  private static final String m = "fb_push_action";
  
  private static ScheduledThreadPoolExecutor p;
  
  private static blf q = blf.AUTO;
  
  private static Object r = new Object();
  
  private static String s;
  
  private static String t;
  
  private static boolean u;
  
  private static boolean v;
  
  private static String w;
  
  private static String x;
  
  private final String n;
  
  private final bkf o;
  
  private bla(Context paramContext, String paramString, AccessToken paramAccessToken) {
    this(bqq.d(paramContext), paramString, paramAccessToken);
  }
  
  protected bla(String paramString1, String paramString2, AccessToken paramAccessToken) {
    bqx.b();
    this.n = paramString1;
    AccessToken accessToken = paramAccessToken;
    if (paramAccessToken == null)
      accessToken = AccessToken.a(); 
    if (accessToken != null && (paramString2 == null || paramString2.equals(accessToken.i()))) {
      this.o = new bkf(accessToken);
    } else {
      String str = paramString2;
      if (paramString2 == null)
        str = bqq.a(bhv.h()); 
      this.o = new bkf(null, str);
    } 
    n();
  }
  
  public static bla a(Context paramContext, AccessToken paramAccessToken) {
    return new bla(paramContext, null, paramAccessToken);
  }
  
  public static bla a(Context paramContext, String paramString, AccessToken paramAccessToken) {
    return new bla(paramContext, paramString, paramAccessToken);
  }
  
  public static blf a() {
    synchronized (r) {
      return q;
    } 
  }
  
  private void a(long paramLong) {
    blg.a(bhv.h(), this.o, this, paramLong);
  }
  
  private void a(long paramLong, String paramString) {
    blg.a(bhv.h(), this.o, this, paramLong, paramString);
  }
  
  private static void a(Activity paramActivity) {
    ComponentName componentName = paramActivity.getCallingActivity();
    if (componentName != null) {
      String str = componentName.getPackageName();
      if (str.equals(paramActivity.getPackageName())) {
        j();
        return;
      } 
      t = str;
    } 
    Intent intent = paramActivity.getIntent();
    if (intent == null || intent.getBooleanExtra("_fbSourceApplicationHasBeenSet", false)) {
      j();
      return;
    } 
    Bundle bundle = eq.a(intent);
    if (bundle == null) {
      j();
      return;
    } 
    u = true;
    bundle = bundle.getBundle("referer_app_link");
    if (bundle == null) {
      t = null;
      return;
    } 
    t = bundle.getString("package");
    intent.putExtra("_fbSourceApplicationHasBeenSet", true);
  }
  
  public static void a(Application paramApplication) {
    a(paramApplication, (String)null);
  }
  
  public static void a(Application paramApplication, String paramString) {
    if (!bhv.a())
      throw new bhp("The Facebook sdk must be initialized before calling activateApp"); 
    bki.a();
    String str = paramString;
    if (paramString == null)
      str = bhv.l(); 
    bhv.a((Context)paramApplication, str);
    blt.a(paramApplication, str);
  }
  
  @Deprecated
  public static void a(Context paramContext) {
    if (blt.a()) {
      Log.w(e, "activateApp events are being logged automatically. There's no need to call activateApp explicitly, this is safe to remove.");
      return;
    } 
    bhv.a(paramContext);
    a(paramContext, bqq.a(paramContext));
  }
  
  private static void a(Context paramContext, bkl parambkl, bkf parambkf) {
    bkq.a(parambkf, parambkl);
    if (!parambkl.b() && !v) {
      if (parambkl.a() == "fb_mobile_activate_app") {
        v = true;
        return;
      } 
    } else {
      return;
    } 
    bpu.a(bjb.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
  }
  
  @Deprecated
  public static void a(Context paramContext, String paramString) {
    if (blt.a()) {
      Log.w(e, "activateApp events are being logged automatically. There's no need to call activateApp explicitly, this is safe to remove.");
      return;
    } 
    if (paramContext == null || paramString == null)
      throw new IllegalArgumentException("Both context and applicationId must be non-null"); 
    bki.a();
    if (paramContext instanceof Activity) {
      a((Activity)paramContext);
    } else {
      j();
      Log.d(bla.class.getName(), "To set source application the context of activateApp must be an instance of Activity");
    } 
    bhv.a(paramContext, paramString);
    bla bla1 = new bla(paramContext, paramString, null);
    long l = System.currentTimeMillis();
    paramString = i();
    p.execute(new blb(bla1, l, paramString));
  }
  
  public static void a(Bundle paramBundle, bim parambim) {
    a(paramBundle, bhv.l(), parambim);
  }
  
  public static void a(Bundle paramBundle, String paramString, bim parambim) {
    String str = e();
    if (str == null || str.isEmpty()) {
      bpu.a(bjb.APP_EVENTS, e, "AppEventsLogger userID cannot be null or empty");
      return;
    } 
    k().execute(new bld(str, paramBundle, paramString, parambim));
  }
  
  public static void a(blf paramblf) {
    synchronized (r) {
      q = paramblf;
      return;
    } 
  }
  
  private void a(String paramString, Double paramDouble, Bundle paramBundle, boolean paramBoolean, @Nullable UUID paramUUID) {
    try {
      bkl bkl = new bkl(this.n, paramString, paramDouble, paramBundle, paramBoolean, paramUUID);
      a(bhv.h(), bkl, this.o);
      return;
    } catch (JSONException jSONException) {
      bpu.a(bjb.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", new Object[] { jSONException.toString() });
      return;
    } catch (bhp bhp) {
      bpu.a(bjb.APP_EVENTS, "AppEvents", "Invalid app event: %s", new Object[] { bhp.toString() });
      return;
    } 
  }
  
  static void a(String paramString, boolean paramBoolean) {
    t = paramString;
    u = paramBoolean;
  }
  
  @Deprecated
  public static void b(Context paramContext) {
    if (blt.a()) {
      Log.w(e, "deactivateApp events are being logged automatically. There's no need to call deactivateApp, this is safe to remove.");
      return;
    } 
    b(paramContext, bqq.a(paramContext));
  }
  
  @Deprecated
  public static void b(Context paramContext, String paramString) {
    if (blt.a()) {
      Log.w(e, "deactivateApp events are being logged automatically. There's no need to call deactivateApp, this is safe to remove.");
      return;
    } 
    if (paramContext == null || paramString == null)
      throw new IllegalArgumentException("Both context and applicationId must be non-null"); 
    j();
    bla bla1 = new bla(paramContext, paramString, null);
    long l = System.currentTimeMillis();
    p.execute(new blc(bla1, l));
  }
  
  public static void b(String paramString) {
    synchronized (r) {
      if (!bqq.b(w, paramString)) {
        w = paramString;
        bla bla1 = c(bhv.h());
        bla1.a("fb_mobile_obtain_push_token");
        if (a() != blf.EXPLICIT_ONLY)
          bla1.b(); 
      } 
      return;
    } 
  }
  
  public static bla c(Context paramContext) {
    return new bla(paramContext, null, null);
  }
  
  public static bla c(Context paramContext, String paramString) {
    return new bla(paramContext, paramString, null);
  }
  
  public static void c() {
    bkq.a();
  }
  
  public static void c(String paramString) {
    bki.a(paramString);
  }
  
  static String d() {
    synchronized (r) {
      return w;
    } 
  }
  
  public static String d(Context paramContext) {
    if (s == null)
      synchronized (r) {
        if (s == null) {
          s = paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
          if (s == null) {
            s = "XZ" + UUID.randomUUID().toString();
            paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", s).apply();
          } 
        } 
        return s;
      }  
    return s;
  }
  
  private static void d(String paramString) {
    bpu.a(bjb.DEVELOPER_ERRORS, "AppEvents", paramString);
  }
  
  public static String e() {
    return bki.b();
  }
  
  public static void f() {
    bki.a(null);
  }
  
  static void h() {
    if (a() != blf.EXPLICIT_ONLY)
      bkq.a(blm.EAGER_FLUSHING_EVENT); 
  }
  
  static String i() {
    String str1 = "Unclassified";
    if (u)
      str1 = "Applink"; 
    String str2 = str1;
    if (t != null)
      str2 = str1 + "(" + t + ")"; 
    return str2;
  }
  
  static void j() {
    t = null;
    u = false;
  }
  
  static Executor k() {
    if (p == null)
      n(); 
    return p;
  }
  
  private static void n() {
    synchronized (r) {
      if (p != null)
        return; 
      p = new ScheduledThreadPoolExecutor(1);
      null = new ble();
      p.scheduleAtFixedRate((Runnable)null, 0L, 86400L, TimeUnit.SECONDS);
      return;
    } 
  }
  
  public void a(Bundle paramBundle) {
    a(paramBundle, (String)null);
  }
  
  public void a(Bundle paramBundle, String paramString) {
    JSONException jSONException2 = null;
    try {
      String str = paramBundle.getString("fb_push_payload");
      if (bqq.a(str))
        return; 
      str = (new JSONObject(str)).getString("campaign");
    } catch (JSONException jSONException1) {
      jSONException1 = jSONException2;
    } 
    if (jSONException1 == null) {
      bpu.a(bjb.DEVELOPER_ERRORS, e, "Malformed payload specified for logging a push notification open.");
      return;
    } 
    Bundle bundle = new Bundle();
    bundle.putString("fb_push_campaign", (String)jSONException1);
    if (paramString != null)
      bundle.putString("fb_push_action", paramString); 
    a("fb_mobile_push_opened", bundle);
  }
  
  public void a(String paramString) {
    a(paramString, (Bundle)null);
  }
  
  public void a(String paramString, double paramDouble) {
    a(paramString, paramDouble, (Bundle)null);
  }
  
  public void a(String paramString, double paramDouble, Bundle paramBundle) {
    a(paramString, Double.valueOf(paramDouble), paramBundle, false, blt.b());
  }
  
  public void a(String paramString, Bundle paramBundle) {
    a(paramString, null, paramBundle, false, blt.b());
  }
  
  public void a(String paramString, Double paramDouble, Bundle paramBundle) {
    a(paramString, paramDouble, paramBundle, true, blt.b());
  }
  
  public void a(BigDecimal paramBigDecimal, Currency paramCurrency) {
    a(paramBigDecimal, paramCurrency, (Bundle)null);
  }
  
  public void a(BigDecimal paramBigDecimal, Currency paramCurrency, Bundle paramBundle) {
    if (paramBigDecimal == null) {
      d("purchaseAmount cannot be null");
      return;
    } 
    if (paramCurrency == null) {
      d("currency cannot be null");
      return;
    } 
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    bundle.putString("fb_currency", paramCurrency.getCurrencyCode());
    a("fb_mobile_purchase", paramBigDecimal.doubleValue(), bundle);
    h();
  }
  
  public boolean a(AccessToken paramAccessToken) {
    bkf bkf1 = new bkf(paramAccessToken);
    return this.o.equals(bkf1);
  }
  
  public void b() {
    bkq.a(blm.EXPLICIT);
  }
  
  public String g() {
    return this.o.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bla.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */