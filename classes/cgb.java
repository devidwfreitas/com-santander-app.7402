import android.graphics.Paint;

public class cgb extends cfj {
  protected boolean B = false;
  
  protected boolean C = false;
  
  protected int D = -7829368;
  
  protected float E = 1.0F;
  
  protected float F = 10.0F;
  
  protected float G = 10.0F;
  
  protected float H = 0.0F;
  
  protected float I = Float.POSITIVE_INFINITY;
  
  private boolean J = true;
  
  private boolean K = true;
  
  private cgd L = cgd.OUTSIDE_CHART;
  
  private cgc M = cgc.LEFT;
  
  public cgb() {}
  
  public cgb(cgc paramcgc) {}
  
  public cgc L() {
    return this.M;
  }
  
  public float M() {
    return this.H;
  }
  
  public float N() {
    return this.I;
  }
  
  public cgd O() {
    return this.L;
  }
  
  public boolean P() {
    return this.K;
  }
  
  public boolean Q() {
    return this.J;
  }
  
  public boolean R() {
    return this.B;
  }
  
  public float S() {
    return this.F;
  }
  
  public float T() {
    return this.G;
  }
  
  public boolean U() {
    return this.C;
  }
  
  public int V() {
    return this.D;
  }
  
  public float W() {
    return this.E;
  }
  
  public boolean X() {
    return (K() && h() && O() == cgd.OUTSIDE_CHART);
  }
  
  public float a(Paint paramPaint) {
    paramPaint.setTextSize(this.z);
    float f1 = clg.a(paramPaint, p());
    float f3 = F() * 2.0F + f1;
    f1 = M();
    float f4 = N();
    float f2 = f1;
    if (f1 > 0.0F)
      f2 = clg.a(f1); 
    f1 = f4;
    if (f4 > 0.0F) {
      f1 = f4;
      if (f4 != Float.POSITIVE_INFINITY)
        f1 = clg.a(f4); 
    } 
    if (f1 <= 0.0D)
      f1 = f3; 
    return Math.max(f2, Math.min(f3, f1));
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    if (this.q)
      paramFloat1 = this.t; 
    if (this.r)
      paramFloat2 = this.s; 
    float f3 = Math.abs(paramFloat2 - paramFloat1);
    float f2 = paramFloat1;
    float f1 = paramFloat2;
    if (f3 == 0.0F) {
      f1 = paramFloat2 + 1.0F;
      f2 = paramFloat1 - 1.0F;
    } 
    if (!this.q)
      this.t = f2 - f3 / 100.0F * T(); 
    if (!this.r)
      this.s = f3 / 100.0F * S() + f1; 
    this.u = Math.abs(this.s - this.t);
  }
  
  public void a(cgd paramcgd) {
    this.L = paramcgd;
  }
  
  public float b(Paint paramPaint) {
    paramPaint.setTextSize(this.z);
    return clg.b(paramPaint, p()) + G() * 2.0F;
  }
  
  public void f(int paramInt) {
    this.D = paramInt;
  }
  
  public void h(boolean paramBoolean) {
    this.K = paramBoolean;
  }
  
  public void i(boolean paramBoolean) {
    this.B = paramBoolean;
  }
  
  @Deprecated
  public void j(boolean paramBoolean) {
    if (paramBoolean) {
      d(0.0F);
      return;
    } 
    B();
  }
  
  public void k(boolean paramBoolean) {
    this.C = paramBoolean;
  }
  
  public void m(float paramFloat) {
    this.H = paramFloat;
  }
  
  public void n(float paramFloat) {
    this.I = paramFloat;
  }
  
  public void o(float paramFloat) {
    this.F = paramFloat;
  }
  
  public void p(float paramFloat) {
    this.G = paramFloat;
  }
  
  public void q(float paramFloat) {
    this.E = clg.a(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */