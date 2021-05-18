public abstract class cgj {
  private float a = 0.0F;
  
  private Object b = null;
  
  public cgj() {}
  
  public cgj(float paramFloat) {
    this.a = paramFloat;
  }
  
  public cgj(float paramFloat, Object paramObject) {
    this(paramFloat);
    this.b = paramObject;
  }
  
  public void a(float paramFloat) {
    this.a = paramFloat;
  }
  
  public void a(Object paramObject) {
    this.b = paramObject;
  }
  
  public float c() {
    return this.a;
  }
  
  public Object j() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */