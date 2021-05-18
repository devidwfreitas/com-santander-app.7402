import android.content.ContentResolver;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.adjust.sdk.ActivityKind;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.ActivityState;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.SessionParameters;
import com.adjust.sdk.Util;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

public class avq {
  private static ILogger o = AdjustFactory.getLogger();
  
  public Map<String, String> a;
  
  public AdjustAttribution b;
  
  public String c;
  
  public String d;
  
  public String e;
  
  public String f;
  
  public long g = -1L;
  
  public long h = -1L;
  
  public long i = -1L;
  
  private AdjustConfig j;
  
  private avo k;
  
  private avr l;
  
  private SessionParameters m;
  
  private long n;
  
  public avq(AdjustConfig paramAdjustConfig, avo paramavo, ActivityState paramActivityState, SessionParameters paramSessionParameters, long paramLong) {
    this.j = paramAdjustConfig;
    this.k = paramavo;
    this.l = new avr(this, paramActivityState);
    this.m = paramSessionParameters;
    this.n = paramLong;
  }
  
  private ActivityPackage a(ActivityKind paramActivityKind) {
    ActivityPackage activityPackage = new ActivityPackage(paramActivityKind);
    activityPackage.setClientSdk(this.k.g);
    return activityPackage;
  }
  
  private String a(AdjustEvent paramAdjustEvent) {
    return (paramAdjustEvent.revenue == null) ? String.format(Locale.US, "'%s'", new Object[] { paramAdjustEvent.eventToken }) : String.format(Locale.US, "(%.5f %s, '%s')", new Object[] { paramAdjustEvent.revenue, paramAdjustEvent.currency, paramAdjustEvent.eventToken });
  }
  
  private void a(Map<String, String> paramMap) {
    b(paramMap);
    a(paramMap, "fb_id", this.k.f);
    a(paramMap, "package_name", this.k.h);
    a(paramMap, "app_version", this.k.i);
    a(paramMap, "device_type", this.k.j);
    a(paramMap, "device_name", this.k.k);
    a(paramMap, "device_manufacturer", this.k.l);
    a(paramMap, "os_name", this.k.m);
    a(paramMap, "os_version", this.k.n);
    a(paramMap, "api_level", this.k.o);
    a(paramMap, "language", this.k.p);
    a(paramMap, "country", this.k.q);
    a(paramMap, "screen_size", this.k.r);
    a(paramMap, "screen_format", this.k.s);
    a(paramMap, "screen_density", this.k.t);
    a(paramMap, "display_width", this.k.u);
    a(paramMap, "display_height", this.k.v);
    a(paramMap, "hardware_name", this.k.w);
    a(paramMap, "cpu_type", this.k.x);
    a(paramMap, "os_build", this.k.y);
    a(paramMap, "vm_isa", this.k.z);
    a(paramMap, "mcc", Util.getMcc(this.j.context));
    a(paramMap, "mnc", Util.getMnc(this.j.context));
    a(paramMap, "connectivity_type", Util.getConnectivityType(this.j.context));
    a(paramMap, "network_type", Util.getNetworkType(this.j.context));
    h(paramMap);
  }
  
  public static void a(Map<String, String> paramMap, String paramString, long paramLong) {
    if (paramLong < 0L)
      return; 
    a(paramMap, paramString, Long.toString(paramLong));
  }
  
  public static void a(Map<String, String> paramMap, String paramString, Boolean paramBoolean) {
    boolean bool;
    if (paramBoolean == null)
      return; 
    if (paramBoolean.booleanValue()) {
      bool = true;
    } else {
      bool = false;
    } 
    a(paramMap, paramString, bool);
  }
  
  public static void a(Map<String, String> paramMap, String paramString, Double paramDouble) {
    if (paramDouble == null)
      return; 
    a(paramMap, paramString, String.format(Locale.US, "%.5f", new Object[] { paramDouble }));
  }
  
  public static void a(Map<String, String> paramMap, String paramString1, String paramString2) {
    if (TextUtils.isEmpty(paramString2))
      return; 
    paramMap.put(paramString1, paramString2);
  }
  
  public static void a(Map<String, String> paramMap, String paramString, Date paramDate) {
    if (paramDate == null)
      return; 
    a(paramMap, paramString, Util.dateFormatter.format(paramDate));
  }
  
  public static void a(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2) {
    if (paramMap2 != null && paramMap2.size() != 0) {
      a(paramMap1, paramString, (new JSONObject(paramMap2)).toString());
      return;
    } 
  }
  
  private Map<String, String> b() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    a((Map)hashMap);
    c((Map)hashMap);
    d((Map)hashMap);
    e((Map)hashMap);
    g((Map)hashMap);
    return (Map)hashMap;
  }
  
  private Map<String, String> b(boolean paramBoolean) {
    Map<String, String> map = b();
    d(map, "last_interval", this.l.a);
    a(map, "default_tracker", this.j.defaultTracker);
    a(map, "installed_at", this.k.A);
    a(map, "updated_at", this.k.B);
    if (!paramBoolean) {
      a(map, "callback_params", this.m.callbackParameters);
      a(map, "partner_params", this.m.partnerParameters);
    } 
    return map;
  }
  
  private void b(Map<String, String> paramMap) {
    this.k.a(this.j.context);
    a(paramMap, "tracking_enabled", this.k.b);
    a(paramMap, "gps_adid", this.k.a);
    if (this.k.a == null) {
      a(paramMap, "mac_sha1", this.k.c);
      a(paramMap, "mac_md5", this.k.d);
      a(paramMap, "android_id", this.k.e);
    } 
  }
  
  public static void b(Map<String, String> paramMap, String paramString, long paramLong) {
    if (paramLong <= 0L)
      return; 
    a(paramMap, paramString, new Date(paramLong));
  }
  
  private Map<String, String> c() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    b((Map)hashMap);
    c((Map)hashMap);
    e((Map)hashMap);
    g((Map)hashMap);
    return (Map)hashMap;
  }
  
  private void c(Map<String, String> paramMap) {
    a(paramMap, "app_token", this.j.appToken);
    a(paramMap, "environment", this.j.environment);
    a(paramMap, "device_known", this.j.deviceKnown);
    a(paramMap, "event_buffering_enabled", Boolean.valueOf(this.j.eventBufferingEnabled));
    a(paramMap, "push_token", this.l.h);
    ContentResolver contentResolver = this.j.context.getContentResolver();
    a(paramMap, "fire_adid", Util.getFireAdvertisingId(contentResolver));
    a(paramMap, "fire_tracking_enabled", Util.getFireTrackingEnabled(contentResolver));
    a(paramMap, "secret_id", this.j.secretId);
    a(paramMap, "app_secret", this.j.appSecret);
    if (this.j.readMobileEquipmentIdentity) {
      TelephonyManager telephonyManager = (TelephonyManager)this.j.context.getSystemService("phone");
      a(paramMap, "device_ids", Util.getTelephonyIds(telephonyManager));
      a(paramMap, "imeis", Util.getIMEIs(telephonyManager));
      a(paramMap, "meids", Util.getMEIDs(telephonyManager));
    } 
  }
  
  public static void c(Map<String, String> paramMap, String paramString, long paramLong) {
    if (paramLong <= 0L)
      return; 
    a(paramMap, paramString, new Date(1000L * paramLong));
  }
  
  private void d(Map<String, String> paramMap) {
    a(paramMap, "android_uuid", this.l.c);
    a(paramMap, "session_count", this.l.d);
    a(paramMap, "subsession_count", this.l.e);
    d(paramMap, "session_length", this.l.f);
    d(paramMap, "time_spent", this.l.g);
  }
  
  public static void d(Map<String, String> paramMap, String paramString, long paramLong) {
    if (paramLong < 0L)
      return; 
    a(paramMap, paramString, (500L + paramLong) / 1000L);
  }
  
  private void e(Map<String, String> paramMap) {
    b(paramMap, "created_at", this.n);
    a(paramMap, "attribution_deeplink", Boolean.valueOf(true));
    a(paramMap, "needs_response_details", Boolean.valueOf(true));
  }
  
  private void f(Map<String, String> paramMap) {
    if (this.b == null)
      return; 
    a(paramMap, "tracker", this.b.trackerName);
    a(paramMap, "campaign", this.b.campaign);
    a(paramMap, "adgroup", this.b.adgroup);
    a(paramMap, "creative", this.b.creative);
  }
  
  private void g(Map<String, String> paramMap) {
    if (!paramMap.containsKey("mac_sha1") && !paramMap.containsKey("mac_md5") && !paramMap.containsKey("android_id") && !paramMap.containsKey("gps_adid"))
      o.error("Missing device id's. Please check if Proguard is correctly set with Adjust SDK", new Object[0]); 
  }
  
  private void h(Map<String, String> paramMap) {
    if (this.k.C != null) {
      Iterator<Map.Entry> iterator = this.k.C.entrySet().iterator();
      while (true) {
        if (iterator.hasNext()) {
          Map.Entry entry = iterator.next();
          a(paramMap, (String)entry.getKey(), (String)entry.getValue());
          continue;
        } 
        return;
      } 
    } 
  }
  
  public ActivityPackage a() {
    Map<String, String> map = c();
    ActivityPackage activityPackage = a(ActivityKind.ATTRIBUTION);
    activityPackage.setPath("attribution");
    activityPackage.setSuffix("");
    activityPackage.setParameters(map);
    return activityPackage;
  }
  
  public ActivityPackage a(AdjustEvent paramAdjustEvent, boolean paramBoolean) {
    Map<String, String> map = b();
    a(map, "event_count", this.l.b);
    a(map, "event_token", paramAdjustEvent.eventToken);
    a(map, "revenue", paramAdjustEvent.revenue);
    a(map, "currency", paramAdjustEvent.currency);
    if (!paramBoolean) {
      a(map, "callback_params", Util.mergeParameters(this.m.callbackParameters, paramAdjustEvent.callbackParameters, "Callback"));
      a(map, "partner_params", Util.mergeParameters(this.m.partnerParameters, paramAdjustEvent.partnerParameters, "Partner"));
    } 
    ActivityPackage activityPackage = a(ActivityKind.EVENT);
    activityPackage.setPath("/event");
    activityPackage.setSuffix(a(paramAdjustEvent));
    activityPackage.setParameters(map);
    if (paramBoolean) {
      activityPackage.setCallbackParameters(paramAdjustEvent.callbackParameters);
      activityPackage.setPartnerParameters(paramAdjustEvent.partnerParameters);
    } 
    return activityPackage;
  }
  
  public ActivityPackage a(String paramString) {
    Map<String, String> map = b(false);
    a(map, "source", paramString);
    b(map, "click_time", this.g);
    a(map, "reftag", this.c);
    a(map, "params", this.a);
    a(map, "referrer", this.d);
    a(map, "raw_referrer", this.e);
    a(map, "deeplink", this.f);
    c(map, "click_time", this.h);
    c(map, "install_begin_time", this.i);
    f(map);
    ActivityPackage activityPackage = a(ActivityKind.CLICK);
    activityPackage.setPath("/sdk_click");
    activityPackage.setSuffix("");
    activityPackage.setClickTimeInMilliseconds(this.g);
    activityPackage.setClickTimeInSeconds(this.h);
    activityPackage.setInstallBeginTimeInSeconds(this.i);
    activityPackage.setParameters(map);
    return activityPackage;
  }
  
  public ActivityPackage a(boolean paramBoolean) {
    Map<String, String> map = b(paramBoolean);
    ActivityPackage activityPackage = a(ActivityKind.SESSION);
    activityPackage.setPath("/session");
    activityPackage.setSuffix("");
    activityPackage.setParameters(map);
    return activityPackage;
  }
  
  public ActivityPackage b(String paramString) {
    Map<String, String> map = c();
    a(map, "source", paramString);
    ActivityPackage activityPackage = a(ActivityKind.INFO);
    activityPackage.setPath("/sdk_info");
    activityPackage.setSuffix("");
    activityPackage.setParameters(map);
    return activityPackage;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */