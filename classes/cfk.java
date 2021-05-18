import android.graphics.Typeface;

public abstract class cfk {
  protected int A = -16777216;
  
  protected boolean v = true;
  
  protected float w = 5.0F;
  
  protected float x = 5.0F;
  
  protected Typeface y = null;
  
  protected float z = 10.0F;
  
  public float F() {
    return this.w;
  }
  
  public float G() {
    return this.x;
  }
  
  public Typeface H() {
    return this.y;
  }
  
  public float I() {
    return this.z;
  }
  
  public int J() {
    return this.A;
  }
  
  public boolean K() {
    return this.v;
  }
  
  public void a(Typeface paramTypeface) {
    this.y = paramTypeface;
  }
  
  public void e(int paramInt) {
    this.A = paramInt;
  }
  
  public void g(boolean paramBoolean) {
    this.v = paramBoolean;
  }
  
  public void j(float paramFloat) {
    this.w = clg.a(paramFloat);
  }
  
  public void k(float paramFloat) {
    this.x = clg.a(paramFloat);
  }
  
  public void l(float paramFloat) {
    float f2 = 24.0F;
    float f1 = 6.0F;
    if (paramFloat > 24.0F)
      paramFloat = f2; 
    if (paramFloat < 6.0F)
      paramFloat = f1; 
    this.z = clg.a(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */