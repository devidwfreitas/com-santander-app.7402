public class drr implements dsi {
  private int a;
  
  private int b;
  
  private final int c;
  
  private final float d;
  
  public drr() {
    this(2500, 1, 1.0F);
  }
  
  public drr(int paramInt1, int paramInt2, float paramFloat) {
    this.a = paramInt1;
    this.c = paramInt2;
    this.d = paramFloat;
  }
  
  public int a() {
    return this.a;
  }
  
  public void a(dsl paramdsl) {
    this.b++;
    this.a = (int)(this.a + this.a * this.d);
    if (!c())
      throw paramdsl; 
  }
  
  public int b() {
    return this.b;
  }
  
  protected boolean c() {
    return (this.b <= this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */