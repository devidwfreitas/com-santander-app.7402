import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.support.annotation.Nullable;
import android.support.v4.util.LongSparseArray;
import java.util.ArrayList;
import java.util.List;

public class ayj implements ayg, ayz {
  private static final int a = 32;
  
  private final String b;
  
  private final LongSparseArray<LinearGradient> c = new LongSparseArray();
  
  private final LongSparseArray<RadialGradient> d = new LongSparseArray();
  
  private final Matrix e = new Matrix();
  
  private final Path f = new Path();
  
  private final Paint g = new Paint(1);
  
  private final RectF h = new RectF();
  
  private final List<ayp> i = new ArrayList<ayp>();
  
  private final bcl j;
  
  private final ayy<bce, bce> k;
  
  private final ayy<Integer, Integer> l;
  
  private final ayy<PointF, PointF> m;
  
  private final ayy<PointF, PointF> n;
  
  private final awu o;
  
  private final int p;
  
  public ayj(awu paramawu, bdy parambdy, bcf parambcf) {
    this.b = parambcf.a();
    this.o = paramawu;
    this.j = parambcf.b();
    this.f.setFillType(parambcf.c());
    this.p = (int)(paramawu.s().d() / 32L);
    this.k = parambcf.d().a();
    this.k.a(this);
    parambdy.a(this.k);
    this.l = parambcf.e().a();
    this.l.a(this);
    parambdy.a(this.l);
    this.m = parambcf.f().a();
    this.m.a(this);
    parambdy.a(this.m);
    this.n = parambcf.g().a();
    this.n.a(this);
    parambdy.a(this.n);
  }
  
  private LinearGradient c() {
    int i = e();
    LinearGradient linearGradient2 = (LinearGradient)this.c.get(i);
    if (linearGradient2 != null)
      return linearGradient2; 
    PointF pointF1 = this.m.b();
    PointF pointF2 = this.n.b();
    bce bce = this.k.b();
    int[] arrayOfInt = bce.b();
    float[] arrayOfFloat = bce.a();
    LinearGradient linearGradient1 = new LinearGradient(pointF1.x, pointF1.y, pointF2.x, pointF2.y, arrayOfInt, arrayOfFloat, Shader.TileMode.CLAMP);
    this.c.put(i, linearGradient1);
    return linearGradient1;
  }
  
  private RadialGradient d() {
    int i = e();
    RadialGradient radialGradient2 = (RadialGradient)this.d.get(i);
    if (radialGradient2 != null)
      return radialGradient2; 
    PointF pointF1 = this.m.b();
    PointF pointF2 = this.n.b();
    bce bce = this.k.b();
    int[] arrayOfInt = bce.b();
    float[] arrayOfFloat = bce.a();
    float f1 = pointF1.x;
    float f2 = pointF1.y;
    float f3 = pointF2.x;
    float f4 = pointF2.y;
    RadialGradient radialGradient1 = new RadialGradient(f1, f2, (float)Math.hypot((f3 - f1), (f4 - f2)), arrayOfInt, arrayOfFloat, Shader.TileMode.CLAMP);
    this.d.put(i, radialGradient1);
    return radialGradient1;
  }
  
  private int e() {
    int j = Math.round(this.m.c() * this.p);
    int m = Math.round(this.n.c() * this.p);
    int k = Math.round(this.k.c() * this.p);
    int i = 17;
    if (j != 0)
      i = j * 527; 
    j = i;
    if (m != 0)
      j = i * 31 * m; 
    i = j;
    if (k != 0)
      i = j * 31 * k; 
    return i;
  }
  
  public void a() {
    this.o.invalidateSelf();
  }
  
  public void a(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    RadialGradient radialGradient;
    awm.a("GradientFillContent#draw");
    this.f.reset();
    int i;
    for (i = 0; i < this.i.size(); i++)
      this.f.addPath(((ayp)this.i.get(i)).e(), paramMatrix); 
    this.f.computeBounds(this.h, false);
    if (this.j == bcl.Linear) {
      LinearGradient linearGradient = c();
    } else {
      radialGradient = d();
    } 
    this.e.set(paramMatrix);
    radialGradient.setLocalMatrix(this.e);
    this.g.setShader((Shader)radialGradient);
    float f = paramInt / 255.0F;
    paramInt = (int)(((Integer)this.l.b()).intValue() * f / 100.0F * 255.0F);
    this.g.setAlpha(paramInt);
    paramCanvas.drawPath(this.f, this.g);
    awm.b("GradientFillContent#draw");
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    this.f.reset();
    for (int i = 0; i < this.i.size(); i++)
      this.f.addPath(((ayp)this.i.get(i)).e(), paramMatrix); 
    this.f.computeBounds(paramRectF, false);
    paramRectF.set(paramRectF.left - 1.0F, paramRectF.top - 1.0F, paramRectF.right + 1.0F, paramRectF.bottom + 1.0F);
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {}
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    for (int i = 0; i < paramList2.size(); i++) {
      aye aye = paramList2.get(i);
      if (aye instanceof ayp)
        this.i.add((ayp)aye); 
    } 
  }
  
  public String b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */