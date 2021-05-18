import android.os.Bundle;
import java.io.Serializable;
import java.util.Locale;

class bli implements Serializable {
  private static final long a = 1L;
  
  private static final String b = bli.class.getCanonicalName();
  
  private static final long c = -1L;
  
  private static final long d = 1000L;
  
  private static final long e = 60000L;
  
  private static final long f = 300000L;
  
  private static final long[] g = new long[] { 
      300000L, 900000L, 1800000L, 3600000L, 21600000L, 43200000L, 86400000L, 172800000L, 259200000L, 604800000L, 
      1209600000L, 1814400000L, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L };
  
  private boolean h;
  
  private boolean i;
  
  private long j;
  
  private long k;
  
  private long l;
  
  private long m;
  
  private int n;
  
  private String o;
  
  bli() {
    a();
  }
  
  private bli(long paramLong1, long paramLong2, long paramLong3, int paramInt) {
    a();
    this.k = paramLong1;
    this.l = paramLong2;
    this.m = paramLong3;
    this.n = paramInt;
  }
  
  private bli(long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString) {
    a();
    this.k = paramLong1;
    this.l = paramLong2;
    this.m = paramLong3;
    this.n = paramInt;
    this.o = paramString;
  }
  
  private static int a(long paramLong) {
    int i;
    for (i = 0; i < g.length && g[i] < paramLong; i++);
    return i;
  }
  
  private void a() {
    this.i = false;
    this.k = -1L;
    this.l = -1L;
    this.n = 0;
    this.m = 0L;
  }
  
  private void b(bla parambla, long paramLong) {
    Bundle bundle = new Bundle();
    bundle.putInt("fb_mobile_app_interruptions", this.n);
    bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", new Object[] { Integer.valueOf(a(paramLong)) }));
    bundle.putString("fb_mobile_launch_source", this.o);
    parambla.a("fb_mobile_deactivate_app", (this.m / 1000L), bundle);
    a();
  }
  
  private boolean b() {
    return (this.l != -1L);
  }
  
  private boolean c() {
    if (!this.h) {
      boolean bool1 = true;
      this.h = true;
      return bool1;
    } 
    boolean bool = false;
    this.h = true;
    return bool;
  }
  
  private Object writeReplace() {
    return new bll(this.k, this.l, this.m, this.n, this.o);
  }
  
  void a(bla parambla, long paramLong) {
    long l1 = 0L;
    if (!this.i) {
      bpu.a(bjb.APP_EVENTS, b, "Suspend for inactive app");
      return;
    } 
    long l2 = paramLong - this.k;
    if (l2 < 0L) {
      bpu.a(bjb.APP_EVENTS, b, "Clock skew detected");
    } else {
      l1 = l2;
    } 
    this.m = l1 + this.m;
    this.l = paramLong;
    this.i = false;
  }
  
  void a(bla parambla, long paramLong, String paramString) {
    long l1;
    long l2 = 0L;
    if (c() || paramLong - this.j > 300000L) {
      Bundle bundle = new Bundle();
      bundle.putString("fb_mobile_launch_source", paramString);
      parambla.a("fb_mobile_activate_app", bundle);
      this.j = paramLong;
      if (bla.a() != blf.EXPLICIT_ONLY)
        parambla.b(); 
    } 
    if (this.i) {
      bpu.a(bjb.APP_EVENTS, b, "Resume for active app");
      return;
    } 
    if (b()) {
      l1 = paramLong - this.l;
    } else {
      l1 = 0L;
    } 
    if (l1 < 0L) {
      bpu.a(bjb.APP_EVENTS, b, "Clock skew detected");
      l1 = l2;
    } 
    if (l1 > 60000L) {
      b(parambla, l1);
    } else if (l1 > 1000L) {
      this.n++;
    } 
    if (this.n == 0)
      this.o = paramString; 
    this.k = paramLong;
    this.i = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bli.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */