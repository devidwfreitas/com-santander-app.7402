import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.Looper;
import android.util.Log;

class ffg {
  private static final String a = "LocationRetriever";
  
  private final int b = 1200;
  
  private final int c = 1201;
  
  private final int d = 30000;
  
  private final int e = 10;
  
  private LocationManager f = null;
  
  private LocationProvider g = null;
  
  private LocationProvider h = null;
  
  private Context i = null;
  
  private long j = 0L;
  
  private long k = 0L;
  
  private long l = 0L;
  
  private int m = 0;
  
  private long n = 0L;
  
  private Location o = null;
  
  private ffi p = null;
  
  private int q = 0;
  
  private ffj r = null;
  
  private boolean s;
  
  private boolean t;
  
  private ffb u;
  
  private ffl v = new ffl(this);
  
  private ffk w = new ffk(this);
  
  private Location a(Location paramLocation1, Location paramLocation2) {
    boolean bool1 = b(paramLocation1);
    boolean bool2 = b(paramLocation2);
    if (!bool1 && !bool2)
      return null; 
    if (bool1 && bool2) {
      long l2 = System.currentTimeMillis();
      long l1 = l2 - paramLocation1.getTime();
      l2 -= paramLocation2.getTime();
      if (l1 < this.k && l2 < this.k) {
        Location location2 = paramLocation1;
        return (paramLocation1.getAccuracy() >= paramLocation2.getAccuracy()) ? paramLocation2 : location2;
      } 
      Location location1 = paramLocation1;
      if (l1 >= this.k) {
        if (l2 < this.k)
          return paramLocation2; 
        location1 = paramLocation1;
        if (l1 >= l2)
          return paramLocation2; 
      } 
      return location1;
    } 
    Location location = paramLocation1;
    return !bool1 ? (bool2 ? paramLocation2 : null) : location;
  }
  
  private void a(Location paramLocation) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_0
    //   5: getfield o : Landroid/location/Location;
    //   8: aload_1
    //   9: invokespecial a : (Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    //   12: putfield o : Landroid/location/Location;
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: athrow
    // Exception table:
    //   from	to	target	type
    //   2	15	18	finally
  }
  
  private void b() {
    boolean bool2 = false;
    Log.i("LocationRetriever", "startLocationUpdate");
    this.s = false;
    this.t = false;
    try {
      this.g = this.f.getProvider("gps");
    } catch (SecurityException securityException) {
      this.t = true;
    } 
    boolean bool1 = bool2;
    if (this.g != null)
      if (this.f.isProviderEnabled("gps")) {
        this.f.requestLocationUpdates("gps", 30000L, 10.0F, c(), Looper.getMainLooper());
        bool1 = true;
      } else {
        this.t = true;
        bool1 = bool2;
      }  
    try {
      this.h = this.f.getProvider("network");
    } catch (SecurityException securityException) {
      this.s = true;
    } 
    if (this.h != null && this.f.isProviderEnabled("network")) {
      this.f.requestLocationUpdates("network", 30000L, 10.0F, c(), Looper.getMainLooper());
      bool1 = true;
    } else {
      this.s = true;
    } 
    if (this.t && this.s)
      this.q = 1; 
    if (bool1)
      h(); 
  }
  
  private boolean b(Location paramLocation) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramLocation != null) {
      bool1 = bool2;
      if (System.currentTimeMillis() - paramLocation.getTime() < this.l)
        bool1 = true; 
    } 
    return bool1;
  }
  
  private ffi c() {
    if (this.p == null)
      this.p = new ffi(this, null); 
    return this.p;
  }
  
  private boolean c(Location paramLocation) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramLocation != null) {
      bool1 = bool2;
      if (System.currentTimeMillis() - paramLocation.getTime() < this.k) {
        bool1 = bool2;
        if (paramLocation.getAccuracy() <= this.m)
          bool1 = true; 
      } 
    } 
    return bool1;
  }
  
  private void d() {
    Log.i("LocationRetriever", "putResult");
    this.u.a(this.o, this.q);
    if (this.r != null)
      this.r.a(); 
  }
  
  private void e() {
    Log.i("LocationRetriever", "cancelAllRequests");
    if (this.f != null && this.p != null)
      this.f.removeUpdates(this.p); 
  }
  
  private void f() {
    Log.i("LocationRetriever", "handleTimeout");
    i();
    k();
    this.q = 3;
    e();
    d();
    j();
  }
  
  private void g() {
    Log.i("LocationRetriever", "handleSilenceExpired");
    i();
    k();
    this.q = 0;
    b();
  }
  
  private void h() {
    i();
    this.v.sendEmptyMessageDelayed(1200, this.j);
  }
  
  private void i() {
    if (this.v.hasMessages(1200))
      this.v.removeMessages(1200); 
  }
  
  private void j() {
    k();
    this.w.sendEmptyMessageDelayed(1201, this.n);
  }
  
  private void k() {
    if (this.w.hasMessages(1201))
      this.w.removeMessages(1201); 
  }
  
  void a() {
    i();
    k();
    e();
    this.f = null;
    this.g = null;
    this.h = null;
    this.r = null;
    this.p = null;
  }
  
  void a(Context paramContext, long paramLong1, long paramLong2, long paramLong3, long paramLong4, int paramInt, ffb paramffb, ffj paramffj) {
    Log.i("LocationRetriever", "queryLocation");
    if (paramffb == null) {
      Log.e("LocationRetriever", "mobile SDK: internal problem, queryLocation, null locationInfoBuffer");
      return;
    } 
    this.q = 0;
    this.t = false;
    this.s = false;
    this.i = paramContext;
    this.u = paramffb;
    this.r = paramffj;
    this.f = (LocationManager)this.i.getSystemService("location");
    this.j = 60L * paramLong1 * 1000L;
    this.n = 60L * paramLong2 * 1000L;
    this.k = 60L * paramLong3 * 1000L;
    this.l = 24L * paramLong4 * 3600L * 1000L;
    this.m = paramInt;
    try {
      this.g = this.f.getProvider("gps");
    } catch (SecurityException securityException) {
      this.t = true;
    } 
    if (this.g != null) {
      if (!this.f.isProviderEnabled("gps"))
        this.t = true; 
      try {
        a(this.f.getLastKnownLocation("gps"));
      } catch (SecurityException securityException) {
        this.t = true;
      } 
    } else {
      this.q = 4;
    } 
    try {
      this.h = this.f.getProvider("network");
      if (!this.f.isProviderEnabled("network"))
        this.s = true; 
      a(this.f.getLastKnownLocation("network"));
    } catch (SecurityException securityException) {
      this.s = true;
    } 
    if (this.t && this.s)
      this.q = 1; 
    d();
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */