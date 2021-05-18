public abstract class cey<T> {
  protected int a = 0;
  
  public final float[] b;
  
  protected float c = 1.0F;
  
  protected float d = 1.0F;
  
  protected int e = 0;
  
  protected int f = 0;
  
  public cey(int paramInt) {
    this.a = 0;
    this.b = new float[paramInt];
  }
  
  public void a() {
    this.a = 0;
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    this.c = paramFloat1;
    this.d = paramFloat2;
  }
  
  public void a(int paramInt) {
    int i = paramInt;
    if (paramInt < 0)
      i = 0; 
    this.e = i;
  }
  
  public abstract void a(T paramT);
  
  public int b() {
    return this.b.length;
  }
  
  public void b(int paramInt) {
    int i = paramInt;
    if (paramInt < 0)
      i = 0; 
    this.f = i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */