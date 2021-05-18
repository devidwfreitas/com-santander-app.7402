import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.Process;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class cmf implements Runnable {
  private static final long a = TimeUnit.SECONDS.toMillis(3600L);
  
  private static final long b = TimeUnit.SECONDS.toMillis(30L);
  
  private static Object c = new Object();
  
  private static cmf d;
  
  private final long e;
  
  private final long f;
  
  private final cme g;
  
  private final Context h;
  
  private final HandlerThread i;
  
  private final Object j = new Object();
  
  private final Set<String> k;
  
  private final Map<String, Long> l;
  
  private final SharedPreferences m;
  
  private long n;
  
  private Handler o;
  
  cmf(Context paramContext, long paramLong1, long paramLong2, cme paramcme) {
    this.h = paramContext;
    this.f = paramLong1;
    this.e = paramLong2;
    this.g = paramcme;
    this.l = new HashMap<String, Long>();
    this.k = new HashSet<String>();
    this.m = this.h.getSharedPreferences("google_auto_usage", 0);
    d();
    this.i = new HandlerThread("Google Conversion SDK", 10);
    this.i.start();
    this.o = new Handler(this.i.getLooper());
    c();
  }
  
  public static cmf a(Context paramContext) {
    synchronized (c) {
      cmf cmf1 = d;
      if (cmf1 == null)
        try {
          d = new cmf(paramContext, a, b, new cme(paramContext));
        } catch (Exception exception) {} 
      return d;
    } 
  }
  
  private long b() {
    long l2 = cmn.a();
    long l1 = 0L;
    if (l2 >= this.n)
      l1 = (l2 - this.n) / this.f + 1L; 
    l2 = this.n;
    return l1 * this.f + l2;
  }
  
  private void b(long paramLong) {
    this.m.edit().putLong("end_of_interval", paramLong).commit();
    this.n = paramLong;
  }
  
  private void c() {
    synchronized (this.j) {
      a(b() - cmn.a());
      return;
    } 
  }
  
  private void d() {
    if (this.n == 0L) {
      long l1 = cmn.a();
      long l2 = this.f;
      this.n = this.m.getLong("end_of_interval", l1 + l2);
    } 
  }
  
  protected void a(long paramLong) {
    synchronized (this.j) {
      if (this.o != null) {
        this.o.removeCallbacks(this);
        this.o.postDelayed(this, paramLong);
      } 
      return;
    } 
  }
  
  public void a(String paramString) {
    synchronized (this.j) {
      this.k.remove(paramString);
      c(paramString);
      return;
    } 
  }
  
  protected boolean a() {
    ActivityManager activityManager = (ActivityManager)this.h.getSystemService("activity");
    KeyguardManager keyguardManager = (KeyguardManager)this.h.getSystemService("keyguard");
    PowerManager powerManager = (PowerManager)this.h.getSystemService("power");
    List list = activityManager.getRunningAppProcesses();
    if (list == null)
      return false; 
    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : list) {
      if (Process.myPid() == runningAppProcessInfo.pid && runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && powerManager.isScreenOn())
        return true; 
    } 
    return false;
  }
  
  public void b(String paramString) {
    synchronized (this.j) {
      this.k.add(paramString);
      this.l.remove(paramString);
      return;
    } 
  }
  
  public void c(String paramString) {
    synchronized (this.j) {
      if (this.k.contains(paramString) || this.l.containsKey(paramString))
        return; 
      this.g.a(paramString, this.n);
      this.l.put(paramString, Long.valueOf(this.n));
      return;
    } 
  }
  
  public boolean d(String paramString) {
    return this.l.containsKey(paramString);
  }
  
  public void run() {
    if (!a()) {
      a(this.e);
      return;
    } 
    synchronized (this.j) {
      for (Map.Entry<String, Long> entry : this.l.entrySet()) {
        String str = (String)entry.getKey();
        if (((Long)entry.getValue()).longValue() < this.n) {
          entry.setValue(Long.valueOf(this.n));
          this.g.a(str, this.n);
        } 
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
    c();
    b(b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */