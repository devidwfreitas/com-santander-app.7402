public class bew {
  private float a;
  
  private int b;
  
  public float a() {
    return (this.b == 0) ? 0.0F : (this.a / this.b);
  }
  
  public void a(float paramFloat) {
    this.a += paramFloat;
    this.b++;
    if (this.b == Integer.MAX_VALUE) {
      this.a /= 2.0F;
      this.b /= 2;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */