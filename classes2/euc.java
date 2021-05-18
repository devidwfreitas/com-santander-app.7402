public final class euc {
  private final float a;
  
  private final float b;
  
  private final float c;
  
  private final float d;
  
  private final float e;
  
  private final float f;
  
  private final float g;
  
  private final float h;
  
  private final float i;
  
  private euc(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9) {
    this.a = paramFloat1;
    this.b = paramFloat4;
    this.c = paramFloat7;
    this.d = paramFloat2;
    this.e = paramFloat5;
    this.f = paramFloat8;
    this.g = paramFloat3;
    this.h = paramFloat6;
    this.i = paramFloat9;
  }
  
  public static euc a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8) {
    float f1 = paramFloat1 - paramFloat3 + paramFloat5 - paramFloat7;
    float f2 = paramFloat2 - paramFloat4 + paramFloat6 - paramFloat8;
    if (f1 == 0.0F && f2 == 0.0F)
      return new euc(paramFloat3 - paramFloat1, paramFloat5 - paramFloat3, paramFloat1, paramFloat4 - paramFloat2, paramFloat6 - paramFloat4, paramFloat2, 0.0F, 0.0F, 1.0F); 
    float f3 = paramFloat3 - paramFloat5;
    float f4 = paramFloat7 - paramFloat5;
    paramFloat5 = paramFloat4 - paramFloat6;
    float f5 = paramFloat8 - paramFloat6;
    paramFloat6 = f3 * f5 - f4 * paramFloat5;
    f4 = (f5 * f1 - f4 * f2) / paramFloat6;
    paramFloat5 = (f2 * f3 - f1 * paramFloat5) / paramFloat6;
    return new euc(paramFloat3 - paramFloat1 + f4 * paramFloat3, paramFloat7 - paramFloat1 + paramFloat5 * paramFloat7, paramFloat1, f4 * paramFloat4 + paramFloat4 - paramFloat2, paramFloat5 * paramFloat8 + paramFloat8 - paramFloat2, paramFloat2, f4, paramFloat5, 1.0F);
  }
  
  public static euc a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, float paramFloat10, float paramFloat11, float paramFloat12, float paramFloat13, float paramFloat14, float paramFloat15, float paramFloat16) {
    euc euc1 = b(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8);
    return a(paramFloat9, paramFloat10, paramFloat11, paramFloat12, paramFloat13, paramFloat14, paramFloat15, paramFloat16).a(euc1);
  }
  
  public static euc b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8) {
    return a(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8).a();
  }
  
  euc a() {
    return new euc(this.e * this.i - this.f * this.h, this.f * this.g - this.d * this.i, this.d * this.h - this.e * this.g, this.c * this.h - this.b * this.i, this.a * this.i - this.c * this.g, this.b * this.g - this.a * this.h, this.b * this.f - this.c * this.e, this.c * this.d - this.a * this.f, this.a * this.e - this.b * this.d);
  }
  
  euc a(euc parameuc) {
    return new euc(this.a * parameuc.a + this.d * parameuc.b + this.g * parameuc.c, this.a * parameuc.d + this.d * parameuc.e + this.g * parameuc.f, this.a * parameuc.g + this.d * parameuc.h + this.g * parameuc.i, this.b * parameuc.a + this.e * parameuc.b + this.h * parameuc.c, this.b * parameuc.d + this.e * parameuc.e + this.h * parameuc.f, this.b * parameuc.g + this.e * parameuc.h + this.h * parameuc.i, this.c * parameuc.a + this.f * parameuc.b + this.i * parameuc.c, this.c * parameuc.d + this.f * parameuc.e + this.i * parameuc.f, this.c * parameuc.g + this.f * parameuc.h + this.i * parameuc.i);
  }
  
  public void a(float[] paramArrayOffloat) {
    int j = paramArrayOffloat.length;
    float f1 = this.a;
    float f2 = this.b;
    float f3 = this.c;
    float f4 = this.d;
    float f5 = this.e;
    float f6 = this.f;
    float f7 = this.g;
    float f8 = this.h;
    float f9 = this.i;
    int i;
    for (i = 0; i < j; i += 2) {
      float f10 = paramArrayOffloat[i];
      float f11 = paramArrayOffloat[i + 1];
      float f12 = f3 * f10 + f6 * f11 + f9;
      paramArrayOffloat[i] = (f1 * f10 + f4 * f11 + f7) / f12;
      paramArrayOffloat[i + 1] = (f10 * f2 + f11 * f5 + f8) / f12;
    } 
  }
  
  public void a(float[] paramArrayOffloat1, float[] paramArrayOffloat2) {
    int j = paramArrayOffloat1.length;
    int i;
    for (i = 0; i < j; i++) {
      float f1 = paramArrayOffloat1[i];
      float f2 = paramArrayOffloat2[i];
      float f3 = this.c * f1 + this.f * f2 + this.i;
      paramArrayOffloat1[i] = (this.a * f1 + this.d * f2 + this.g) / f3;
      paramArrayOffloat2[i] = (f1 * this.b + f2 * this.e + this.h) / f3;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */