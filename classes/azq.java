import android.graphics.Matrix;
import android.graphics.PointF;
import android.support.annotation.Nullable;

public class azq {
  private final Matrix a = new Matrix();
  
  private final ayy<PointF, PointF> b;
  
  private final ayy<?, PointF> c;
  
  private final ayy<baj, baj> d;
  
  private final ayy<Float, Float> e;
  
  private final ayy<Integer, Integer> f;
  
  @Nullable
  private final ayy<?, Float> g;
  
  @Nullable
  private final ayy<?, Float> h;
  
  public azq(bbr parambbr) {
    this.b = parambbr.a().a();
    this.c = parambbr.b().a();
    this.d = parambbr.c().a();
    this.e = parambbr.d().a();
    this.f = parambbr.e().a();
    if (parambbr.f() != null) {
      this.g = parambbr.f().a();
    } else {
      this.g = null;
    } 
    if (parambbr.g() != null) {
      this.h = parambbr.g().a();
      return;
    } 
    this.h = null;
  }
  
  public Matrix a(float paramFloat) {
    PointF pointF1 = this.c.b();
    PointF pointF2 = this.b.b();
    baj baj = this.d.b();
    float f = ((Float)this.e.b()).floatValue();
    this.a.reset();
    this.a.preTranslate(pointF1.x * paramFloat, pointF1.y * paramFloat);
    this.a.preScale((float)Math.pow(baj.a(), paramFloat), (float)Math.pow(baj.b(), paramFloat));
    this.a.preRotate(f * paramFloat, pointF2.x, pointF2.y);
    return this.a;
  }
  
  public ayy<?, Integer> a() {
    return this.f;
  }
  
  public void a(ayz paramayz) {
    this.b.a(paramayz);
    this.c.a(paramayz);
    this.d.a(paramayz);
    this.e.a(paramayz);
    this.f.a(paramayz);
    if (this.g != null)
      this.g.a(paramayz); 
    if (this.h != null)
      this.h.a(paramayz); 
  }
  
  public void a(bdy parambdy) {
    parambdy.a(this.b);
    parambdy.a(this.c);
    parambdy.a(this.d);
    parambdy.a(this.e);
    parambdy.a(this.f);
    if (this.g != null)
      parambdy.a(this.g); 
    if (this.h != null)
      parambdy.a(this.h); 
  }
  
  @Nullable
  public ayy<?, Float> b() {
    return this.g;
  }
  
  @Nullable
  public ayy<?, Float> c() {
    return this.h;
  }
  
  public Matrix d() {
    this.a.reset();
    PointF pointF2 = this.c.b();
    if (pointF2.x != 0.0F || pointF2.y != 0.0F)
      this.a.preTranslate(pointF2.x, pointF2.y); 
    float f = ((Float)this.e.b()).floatValue();
    if (f != 0.0F)
      this.a.preRotate(f); 
    baj baj = this.d.b();
    if (baj.a() != 1.0F || baj.b() != 1.0F)
      this.a.preScale(baj.a(), baj.b()); 
    PointF pointF1 = this.b.b();
    if (pointF1.x != 0.0F || pointF1.y != 0.0F)
      this.a.preTranslate(-pointF1.x, -pointF1.y); 
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */