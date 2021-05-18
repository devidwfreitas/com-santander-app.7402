import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Locale;

class dlh extends dmu {
  static final Pair<String, Long> a = new Pair("", Long.valueOf(0L));
  
  public final dll b = new dll(this, "health_monitor", w().ae(), null);
  
  public final dlk c = new dlk(this, "last_upload", 0L);
  
  public final dlk d = new dlk(this, "last_upload_attempt", 0L);
  
  public final dlk e = new dlk(this, "backoff", 0L);
  
  public final dlk f = new dlk(this, "last_delete_stale", 0L);
  
  public final dlk g = new dlk(this, "midnight_offset", 0L);
  
  public final dlk h = new dlk(this, "time_before_start", 10000L);
  
  public final dlk i = new dlk(this, "session_timeout", 1800000L);
  
  public final dlj j = new dlj(this, "start_new_session", true);
  
  public final dlk k = new dlk(this, "last_pause_time", 0L);
  
  public final dlk l = new dlk(this, "time_active", 0L);
  
  public boolean m;
  
  private SharedPreferences o;
  
  private String p;
  
  private boolean q;
  
  private long r;
  
  private String s;
  
  private long t;
  
  private final Object u = new Object();
  
  private SecureRandom v;
  
  dlh(dlv paramdlv) {
    super(paramdlv);
  }
  
  @WorkerThread
  private SecureRandom F() {
    e();
    if (this.v == null)
      this.v = new SecureRandom(); 
    return this.v;
  }
  
  @WorkerThread
  private SharedPreferences G() {
    e();
    R();
    return this.o;
  }
  
  @WorkerThread
  String A() {
    e();
    return G().getString("gmp_app_id", null);
  }
  
  String B() {
    synchronized (this.u) {
      if (Math.abs(m().b() - this.t) < 1000L)
        return this.s; 
      return null;
    } 
  }
  
  @WorkerThread
  Boolean C() {
    e();
    return !G().contains("use_service") ? null : Boolean.valueOf(G().getBoolean("use_service", false));
  }
  
  @WorkerThread
  void D() {
    boolean bool1 = true;
    e();
    u().D().a("Clearing collection preferences.");
    boolean bool2 = G().contains("measurement_enabled");
    if (bool2)
      bool1 = c(true); 
    SharedPreferences.Editor editor = G().edit();
    editor.clear();
    editor.apply();
    if (bool2)
      b(bool1); 
  }
  
  @WorkerThread
  protected String E() {
    e();
    String str1 = G().getString("previous_os_version", null);
    String str2 = j().y();
    if (!TextUtils.isEmpty(str2) && !str2.equals(str1)) {
      SharedPreferences.Editor editor = G().edit();
      editor.putString("previous_os_version", str2);
      editor.apply();
    } 
    return str1;
  }
  
  @NonNull
  @WorkerThread
  Pair<String, Boolean> a(String paramString) {
    e();
    long l = m().b();
    if (this.p != null && l < this.r)
      return new Pair(this.p, Boolean.valueOf(this.q)); 
    this.r = l + w().d(paramString);
    AdvertisingIdClient.b(true);
    try {
      AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(n());
      this.p = info.getId();
      if (this.p == null)
        this.p = ""; 
      this.q = info.isLimitAdTrackingEnabled();
    } catch (Throwable throwable) {
      u().C().a("Unable to get advertising id", throwable);
      this.p = "";
    } 
    AdvertisingIdClient.b(false);
    return new Pair(this.p, Boolean.valueOf(this.q));
  }
  
  protected void a() {
    this.o = n().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
    this.m = this.o.getBoolean("has_been_opened", false);
    if (!this.m) {
      SharedPreferences.Editor editor = this.o.edit();
      editor.putBoolean("has_been_opened", true);
      editor.apply();
    } 
  }
  
  @WorkerThread
  void a(boolean paramBoolean) {
    e();
    u().D().a("Setting useService", Boolean.valueOf(paramBoolean));
    SharedPreferences.Editor editor = G().edit();
    editor.putBoolean("use_service", paramBoolean);
    editor.apply();
  }
  
  @WorkerThread
  String b(String paramString) {
    e();
    paramString = (String)(a(paramString)).first;
    MessageDigest messageDigest = dou.j("MD5");
    return (messageDigest == null) ? null : String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, messageDigest.digest(paramString.getBytes())) });
  }
  
  @WorkerThread
  void b(boolean paramBoolean) {
    e();
    u().D().a("Setting measurementEnabled", Boolean.valueOf(paramBoolean));
    SharedPreferences.Editor editor = G().edit();
    editor.putBoolean("measurement_enabled", paramBoolean);
    editor.apply();
  }
  
  @WorkerThread
  void c(String paramString) {
    e();
    SharedPreferences.Editor editor = G().edit();
    editor.putString("gmp_app_id", paramString);
    editor.apply();
  }
  
  @WorkerThread
  boolean c(boolean paramBoolean) {
    e();
    return G().getBoolean("measurement_enabled", paramBoolean);
  }
  
  void d(String paramString) {
    synchronized (this.u) {
      this.s = paramString;
      this.t = m().b();
      return;
    } 
  }
  
  @WorkerThread
  String x() {
    byte[] arrayOfByte = new byte[16];
    F().nextBytes(arrayOfByte);
    return String.format(Locale.US, "%032x", new Object[] { new BigInteger(1, arrayOfByte) });
  }
  
  @WorkerThread
  String y() {
    e();
    try {
      return eir.a().b();
    } catch (IllegalStateException illegalStateException) {
      u().z().a("Failed to retrieve Firebase Instance Id");
      return null;
    } 
  }
  
  @WorkerThread
  long z() {
    R();
    e();
    long l2 = this.g.a();
    long l1 = l2;
    if (l2 == 0L) {
      l1 = (F().nextInt(86400000) + 1);
      this.g.a(l1);
    } 
    return l1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */