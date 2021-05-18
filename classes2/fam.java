public final class fam extends eqo {
  private final float a;
  
  private final int b;
  
  fam(float paramFloat1, float paramFloat2, float paramFloat3) {
    this(paramFloat1, paramFloat2, paramFloat3, 1);
  }
  
  private fam(float paramFloat1, float paramFloat2, float paramFloat3, int paramInt) {
    super(paramFloat1, paramFloat2);
    this.a = paramFloat3;
    this.b = paramInt;
  }
  
  boolean a(float paramFloat1, float paramFloat2, float paramFloat3) {
    boolean bool = false;
    null = bool;
    if (Math.abs(paramFloat2 - b()) <= paramFloat1) {
      null = bool;
      if (Math.abs(paramFloat3 - a()) <= paramFloat1) {
        paramFloat1 = Math.abs(paramFloat1 - this.a);
        if (paramFloat1 > 1.0F) {
          null = bool;
          return (paramFloat1 <= this.a) ? true : null;
        } 
      } else {
        return null;
      } 
    } else {
      return null;
    } 
    return true;
  }
  
  fam b(float paramFloat1, float paramFloat2, float paramFloat3) {
    int i = this.b + 1;
    return new fam((this.b * a() + paramFloat2) / i, (this.b * b() + paramFloat1) / i, (this.b * this.a + paramFloat3) / i, i);
  }
  
  public float c() {
    return this.a;
  }
  
  int d() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fam.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */