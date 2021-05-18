import android.graphics.Path;
import android.graphics.PointF;
import android.support.annotation.Nullable;
import java.util.List;

public class ayh implements ayp, ayz {
  private static final float a = 0.55228F;
  
  private final Path b = new Path();
  
  private final String c;
  
  private final awu d;
  
  private final ayy<?, PointF> e;
  
  private final ayy<?, PointF> f;
  
  @Nullable
  private ayw g;
  
  private boolean h;
  
  public ayh(awu paramawu, bdy parambdy, bca parambca) {
    this.c = parambca.a();
    this.d = paramawu;
    this.e = parambca.c().a();
    this.f = parambca.b().a();
    parambdy.a(this.e);
    parambdy.a(this.f);
    this.e.a(this);
    this.f.a(this);
  }
  
  private void c() {
    this.h = false;
    this.d.invalidateSelf();
  }
  
  public void a() {
    c();
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    for (int i = 0; i < paramList1.size(); i++) {
      aye aye = paramList1.get(i);
      if (aye instanceof ayw && ((ayw)aye).c() == bdw.Simultaneously) {
        this.g = (ayw)aye;
        this.g.a(this);
      } 
    } 
  }
  
  public String b() {
    return this.c;
  }
  
  public Path e() {
    if (this.h)
      return this.b; 
    this.b.reset();
    PointF pointF = this.e.b();
    float f1 = pointF.x / 2.0F;
    float f2 = pointF.y / 2.0F;
    float f3 = f1 * 0.55228F;
    float f4 = f2 * 0.55228F;
    this.b.reset();
    this.b.moveTo(0.0F, -f2);
    this.b.cubicTo(0.0F + f3, -f2, f1, 0.0F - f4, f1, 0.0F);
    this.b.cubicTo(f1, 0.0F + f4, 0.0F + f3, f2, 0.0F, f2);
    this.b.cubicTo(0.0F - f3, f2, -f1, 0.0F + f4, -f1, 0.0F);
    this.b.cubicTo(-f1, 0.0F - f4, 0.0F - f3, -f2, 0.0F, -f2);
    pointF = this.f.b();
    this.b.offset(pointF.x, pointF.y);
    this.b.close();
    bey.a(this.b, this.g);
    this.h = true;
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */