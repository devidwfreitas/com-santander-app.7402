public final class cib {
  public float a;
  
  public float b;
  
  public cib(float paramFloat1, float paramFloat2) {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }
  
  public boolean a(float paramFloat) {
    return (paramFloat > this.a && paramFloat <= this.b);
  }
  
  public boolean b(float paramFloat) {
    return (paramFloat > this.b);
  }
  
  public boolean c(float paramFloat) {
    return (paramFloat < this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cib.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */