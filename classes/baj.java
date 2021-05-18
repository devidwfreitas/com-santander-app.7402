public class baj {
  private final float a;
  
  private final float b;
  
  public baj() {
    this(1.0F, 1.0F);
  }
  
  public baj(float paramFloat1, float paramFloat2) {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }
  
  public float a() {
    return this.a;
  }
  
  public float b() {
    return this.b;
  }
  
  public String toString() {
    return a() + "x" + b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\baj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */