import android.location.Location;

class ffb {
  public double a;
  
  public boolean b;
  
  public double c;
  
  public boolean d;
  
  public double e;
  
  public boolean f;
  
  public double g;
  
  public boolean h;
  
  public double i;
  
  public boolean j;
  
  public long k;
  
  public double l;
  
  public boolean m;
  
  public double n;
  
  public boolean o;
  
  public int p;
  
  ffb(ffa paramffa) {}
  
  void a() {
    this.b = false;
    this.d = false;
    this.f = false;
    this.h = false;
    this.j = false;
    this.k = 0L;
    this.m = false;
    this.o = false;
  }
  
  void a(Location paramLocation, int paramInt) {
    a();
    this.p = paramInt;
    if (paramLocation != null) {
      this.c = paramLocation.getLatitude();
      this.d = true;
      this.a = paramLocation.getLongitude();
      this.b = true;
      if (paramLocation.hasAccuracy()) {
        this.e = paramLocation.getAccuracy();
        this.f = true;
      } 
      if (paramLocation.hasAltitude()) {
        this.g = paramLocation.getAltitude();
        this.h = true;
        if (paramLocation.hasAccuracy()) {
          this.i = paramLocation.getAccuracy();
          this.j = true;
        } 
      } 
      if (paramLocation.hasBearing()) {
        this.l = paramLocation.getBearing();
        this.m = true;
      } 
      if (paramLocation.hasSpeed()) {
        this.n = paramLocation.getSpeed();
        this.o = true;
      } 
      this.k = paramLocation.getTime();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */