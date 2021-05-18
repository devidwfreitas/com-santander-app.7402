import java.util.List;

public final class ckw extends cld {
  private static clc<ckw> c = clc.a(256, new ckw(0.0F, 0.0F));
  
  public float a;
  
  public float b;
  
  static {
    c.a(0.5F);
  }
  
  public ckw() {}
  
  public ckw(float paramFloat1, float paramFloat2) {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }
  
  public static ckw a(float paramFloat1, float paramFloat2) {
    ckw ckw1 = c.c();
    ckw1.a = paramFloat1;
    ckw1.b = paramFloat2;
    return ckw1;
  }
  
  public static void a(ckw paramckw) {
    c.a(paramckw);
  }
  
  public static void a(List<ckw> paramList) {
    c.a(paramList);
  }
  
  protected cld b() {
    return new ckw(0.0F, 0.0F);
  }
  
  public boolean equals(Object paramObject) {
    boolean bool = true;
    if (paramObject != null) {
      if (this == paramObject)
        return true; 
      if (paramObject instanceof ckw) {
        paramObject = paramObject;
        if (this.a != ((ckw)paramObject).a || this.b != ((ckw)paramObject).b)
          bool = false; 
        return bool;
      } 
    } 
    return false;
  }
  
  public int hashCode() {
    return Float.floatToIntBits(this.a) ^ Float.floatToIntBits(this.b);
  }
  
  public String toString() {
    return this.a + "x" + this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */