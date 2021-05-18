import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import java.util.List;

public class ays implements ayp, ayz {
  private final Path a = new Path();
  
  private final RectF b = new RectF();
  
  private final String c;
  
  private final awu d;
  
  private final ayy<?, PointF> e;
  
  private final ayy<?, PointF> f;
  
  private final ayy<?, Float> g;
  
  @Nullable
  private ayw h;
  
  private boolean i;
  
  public ays(awu paramawu, bdy parambdy, bcy parambcy) {
    this.c = parambcy.a();
    this.d = paramawu;
    this.e = parambcy.d().a();
    this.f = parambcy.c().a();
    this.g = parambcy.b().a();
    parambdy.a(this.e);
    parambdy.a(this.f);
    parambdy.a(this.g);
    this.e.a(this);
    this.f.a(this);
    this.g.a(this);
  }
  
  private void c() {
    this.i = false;
    this.d.invalidateSelf();
  }
  
  public void a() {
    c();
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    for (int i = 0; i < paramList1.size(); i++) {
      aye aye = paramList1.get(i);
      if (aye instanceof ayw && ((ayw)aye).c() == bdw.Simultaneously) {
        this.h = (ayw)aye;
        this.h.a(this);
      } 
    } 
  }
  
  public String b() {
    return this.c;
  }
  
  public Path e() {
    float f1;
    if (this.i)
      return this.a; 
    this.a.reset();
    PointF pointF = this.f.b();
    float f3 = pointF.x / 2.0F;
    float f4 = pointF.y / 2.0F;
    if (this.g == null) {
      f1 = 0.0F;
    } else {
      f1 = ((Float)this.g.b()).floatValue();
    } 
    float f2 = Math.min(f3, f4);
    if (f1 > f2)
      f1 = f2; 
    pointF = this.e.b();
    this.a.moveTo(pointF.x + f3, pointF.y - f4 + f1);
    this.a.lineTo(pointF.x + f3, pointF.y + f4 - f1);
    if (f1 > 0.0F) {
      this.b.set(pointF.x + f3 - 2.0F * f1, pointF.y + f4 - 2.0F * f1, pointF.x + f3, pointF.y + f4);
      this.a.arcTo(this.b, 0.0F, 90.0F, false);
    } 
    this.a.lineTo(pointF.x - f3 + f1, pointF.y + f4);
    if (f1 > 0.0F) {
      this.b.set(pointF.x - f3, pointF.y + f4 - 2.0F * f1, pointF.x - f3 + 2.0F * f1, pointF.y + f4);
      this.a.arcTo(this.b, 90.0F, 90.0F, false);
    } 
    this.a.lineTo(pointF.x - f3, pointF.y - f4 + f1);
    if (f1 > 0.0F) {
      this.b.set(pointF.x - f3, pointF.y - f4, pointF.x - f3 + 2.0F * f1, pointF.y - f4 + 2.0F * f1);
      this.a.arcTo(this.b, 180.0F, 90.0F, false);
    } 
    this.a.lineTo(pointF.x + f3 - f1, pointF.y - f4);
    if (f1 > 0.0F) {
      this.b.set(pointF.x + f3 - 2.0F * f1, pointF.y - f4, f3 + pointF.x, pointF.y - f4 + f1 * 2.0F);
      this.a.arcTo(this.b, 270.0F, 90.0F, false);
    } 
    this.a.close();
    bey.a(this.a, this.h);
    this.i = true;
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ays.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */