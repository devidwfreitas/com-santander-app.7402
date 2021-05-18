import android.view.animation.Interpolator;

public class fba {
  private static Interpolator b = new fbb();
  
  private fcb a;
  
  private void a() {
    if (this.a == null)
      this.a = new fbc(this); 
  }
  
  public fcb a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return a(paramInt1, paramInt2, paramInt3, paramInt4, b);
  }
  
  public fcb a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6) {
    return a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, b);
  }
  
  public fcb a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Interpolator paramInterpolator) {
    a();
    this.a = new fbd(this, paramInterpolator, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
    return this.a;
  }
  
  public fcb a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Interpolator paramInterpolator) {
    a();
    this.a = new fbe(this, paramInterpolator, paramInt1, paramInt2, paramInt3, paramInt4);
    return this.a;
  }
  
  public fcb a(fcb paramfcb) {
    a();
    this.a = new fbg(this, paramfcb);
    return this.a;
  }
  
  public fcb b(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return b(paramInt1, paramInt2, paramInt3, paramInt4, b);
  }
  
  public fcb b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Interpolator paramInterpolator) {
    a();
    this.a = new fbf(this, paramInterpolator, paramInt1, paramInt2, paramInt3, paramInt4);
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */