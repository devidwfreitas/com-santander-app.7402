import android.app.Activity;
import android.os.Handler;

public class jbd implements jbc {
  private jaa a;
  
  private iwz b;
  
  private Handler c;
  
  public jbd(jaa paramjaa, Activity paramActivity) {
    this.a = paramjaa;
    this.b = new ixa(this, paramActivity);
  }
  
  public void a() {
    this.c = new Handler();
    this.c.postDelayed(new jbe(this), 60000L);
  }
  
  public void a(iuz paramiuz) {
    this.b.a(paramiuz);
  }
  
  public void b() {
    this.b.a();
  }
  
  public void c() {
    this.a.c();
  }
  
  public Handler d() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jbd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */