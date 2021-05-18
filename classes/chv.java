public class chv {
  private float a = Float.NaN;
  
  private float b = Float.NaN;
  
  private float c;
  
  private float d;
  
  private int e = -1;
  
  private int f;
  
  private int g = -1;
  
  private cgc h;
  
  private float i;
  
  private float j;
  
  public chv(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2, cgc paramcgc) {
    this(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt1, paramcgc);
    this.g = paramInt2;
  }
  
  public chv(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt, cgc paramcgc) {
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.c = paramFloat3;
    this.d = paramFloat4;
    this.f = paramInt;
    this.h = paramcgc;
  }
  
  public chv(float paramFloat1, float paramFloat2, int paramInt) {
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.f = paramInt;
  }
  
  public chv(float paramFloat, int paramInt1, int paramInt2) {
    this(paramFloat, Float.NaN, paramInt1);
    this.g = paramInt2;
  }
  
  public float a() {
    return this.a;
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    this.i = paramFloat1;
    this.j = paramFloat2;
  }
  
  public void a(int paramInt) {
    this.e = paramInt;
  }
  
  public boolean a(chv paramchv) {
    return (paramchv != null && this.f == paramchv.f && this.a == paramchv.a && this.g == paramchv.g && this.e == paramchv.e);
  }
  
  public float b() {
    return this.b;
  }
  
  public float c() {
    return this.c;
  }
  
  public float d() {
    return this.d;
  }
  
  public int e() {
    return this.e;
  }
  
  public int f() {
    return this.f;
  }
  
  public int g() {
    return this.g;
  }
  
  public boolean h() {
    return (this.g >= 0);
  }
  
  public cgc i() {
    return this.h;
  }
  
  public float j() {
    return this.i;
  }
  
  public float k() {
    return this.j;
  }
  
  public String toString() {
    return "Highlight, x: " + this.a + ", y: " + this.b + ", dataSetIndex: " + this.f + ", stackIndex (only stacked barentry): " + this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */