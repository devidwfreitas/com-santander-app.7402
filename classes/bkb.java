import android.os.Handler;
import com.facebook.GraphRequest;

class bkb {
  private final GraphRequest a;
  
  private final Handler b;
  
  private final long c;
  
  private long d;
  
  private long e;
  
  private long f;
  
  bkb(Handler paramHandler, GraphRequest paramGraphRequest) {
    this.a = paramGraphRequest;
    this.b = paramHandler;
    this.c = bhv.k();
  }
  
  long a() {
    return this.d;
  }
  
  void a(long paramLong) {
    this.d += paramLong;
    if (this.d >= this.e + this.c || this.d >= this.f)
      c(); 
  }
  
  long b() {
    return this.f;
  }
  
  void b(long paramLong) {
    this.f += paramLong;
  }
  
  void c() {
    if (this.d > this.e) {
      bim bim = this.a.k();
      if (this.f > 0L && bim instanceof biq) {
        long l1 = this.d;
        long l2 = this.f;
        bim = bim;
        if (this.b == null) {
          bim.a(l1, l2);
        } else {
          this.b.post(new bkc(this, (biq)bim, l1, l2));
        } 
        this.e = this.d;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bkb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */