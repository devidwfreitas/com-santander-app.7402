public final class cjk {
  public static final cjk d = new cjk(0.0F, 0.0F, 0.0F);
  
  public static final cjk e = new cjk(1.0F, 0.0F, 0.0F);
  
  public static final cjk f = new cjk(0.0F, 1.0F, 0.0F);
  
  public static final cjk g = new cjk(0.0F, 0.0F, 1.0F);
  
  public float a;
  
  public float b;
  
  public float c;
  
  public cjk() {}
  
  public cjk(float paramFloat1, float paramFloat2, float paramFloat3) {
    b(paramFloat1, paramFloat2, paramFloat3);
  }
  
  public cjk(cjk paramcjk) {
    d(paramcjk);
  }
  
  public cjk(float[] paramArrayOffloat) {
    b(paramArrayOffloat[0], paramArrayOffloat[1], paramArrayOffloat[2]);
  }
  
  public final float a() {
    return (float)Math.sqrt(b());
  }
  
  public final void a(float paramFloat) {
    this.a *= paramFloat;
    this.b *= paramFloat;
    this.c *= paramFloat;
  }
  
  public final void a(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.a += paramFloat1;
    this.b += paramFloat2;
    this.c += paramFloat3;
  }
  
  public final void a(cjk paramcjk) {
    this.a += paramcjk.a;
    this.b += paramcjk.b;
    this.c += paramcjk.c;
  }
  
  public final void a(cjk paramcjk, float paramFloat) {
    this.a -= paramcjk.a * paramFloat;
    this.b -= paramcjk.b * paramFloat;
    this.c -= paramcjk.c * paramFloat;
  }
  
  public final float b() {
    return this.a * this.a + this.b * this.b + this.c * this.c;
  }
  
  public final void b(float paramFloat) {
    if (paramFloat != 0.0F) {
      this.a /= paramFloat;
      this.b /= paramFloat;
      this.c /= paramFloat;
    } 
  }
  
  public final void b(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.c = paramFloat3;
  }
  
  public final void b(cjk paramcjk) {
    this.a -= paramcjk.a;
    this.b -= paramcjk.b;
    this.c -= paramcjk.c;
  }
  
  public final float c() {
    float f = a();
    if (f != 0.0F) {
      this.a /= f;
      this.b /= f;
      this.c /= f;
    } 
    return f;
  }
  
  public final void c(cjk paramcjk) {
    this.a *= paramcjk.a;
    this.b *= paramcjk.b;
    this.c *= paramcjk.c;
  }
  
  public final void d() {
    b(0.0F, 0.0F, 0.0F);
  }
  
  public final void d(cjk paramcjk) {
    this.a = paramcjk.a;
    this.b = paramcjk.b;
    this.c = paramcjk.c;
  }
  
  public final float e(cjk paramcjk) {
    return this.a * paramcjk.a + this.b * paramcjk.b + this.c * paramcjk.c;
  }
  
  public final cjk f(cjk paramcjk) {
    return new cjk(this.b * paramcjk.c - this.c * paramcjk.b, this.c * paramcjk.a - this.a * paramcjk.c, this.a * paramcjk.b - this.b * paramcjk.a);
  }
  
  public final float g(cjk paramcjk) {
    float f1 = this.a - paramcjk.a;
    float f2 = this.b - paramcjk.b;
    float f3 = this.c - paramcjk.c;
    return f1 * f1 + f2 * f2 + f3 * f3;
  }
  
  public final boolean h(cjk paramcjk) {
    return (e(paramcjk) > 0.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */