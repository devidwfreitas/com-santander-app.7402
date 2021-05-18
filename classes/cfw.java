import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;

public class cfw extends cfk {
  private float a = 0.0F;
  
  private float b = 2.0F;
  
  private int c = Color.rgb(237, 91, 91);
  
  private Paint.Style d = Paint.Style.FILL_AND_STROKE;
  
  private String e = "";
  
  private DashPathEffect f = null;
  
  private cfx g = cfx.RIGHT_TOP;
  
  public cfw(float paramFloat) {
    this.a = paramFloat;
  }
  
  public cfw(float paramFloat, String paramString) {
    this.a = paramFloat;
    this.e = paramString;
  }
  
  public float a() {
    return this.a;
  }
  
  public void a(float paramFloat) {
    float f1 = 12.0F;
    float f2 = 0.2F;
    if (paramFloat < 0.2F)
      paramFloat = f2; 
    if (paramFloat > 12.0F)
      paramFloat = f1; 
    this.b = clg.a(paramFloat);
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.f = new DashPathEffect(new float[] { paramFloat1, paramFloat2 }, paramFloat3);
  }
  
  public void a(int paramInt) {
    this.c = paramInt;
  }
  
  public void a(Paint.Style paramStyle) {
    this.d = paramStyle;
  }
  
  public void a(cfx paramcfx) {
    this.g = paramcfx;
  }
  
  public void a(String paramString) {
    this.e = paramString;
  }
  
  public float b() {
    return this.b;
  }
  
  public int c() {
    return this.c;
  }
  
  public void d() {
    this.f = null;
  }
  
  public boolean e() {
    return (this.f != null);
  }
  
  public DashPathEffect f() {
    return this.f;
  }
  
  public Paint.Style g() {
    return this.d;
  }
  
  public cfx h() {
    return this.g;
  }
  
  public String i() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */