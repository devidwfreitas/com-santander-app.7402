import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.support.annotation.Nullable;
import android.support.v4.util.LongSparseArray;

public class ayk extends ayb {
  private static final int b = 32;
  
  private final String c;
  
  private final LongSparseArray<LinearGradient> d = new LongSparseArray();
  
  private final LongSparseArray<RadialGradient> e = new LongSparseArray();
  
  private final RectF f = new RectF();
  
  private final bcl g;
  
  private final int h;
  
  private final ayy<bce, bce> i;
  
  private final ayy<PointF, PointF> j;
  
  private final ayy<PointF, PointF> k;
  
  public ayk(awu paramawu, bdy parambdy, bci parambci) {
    super(paramawu, parambdy, parambci.h().toPaintCap(), parambci.i().toPaintJoin(), parambci.d(), parambci.g(), parambci.j(), parambci.k());
    this.c = parambci.a();
    this.g = parambci.b();
    this.h = (int)(paramawu.s().d() / 32L);
    this.i = parambci.c().a();
    this.i.a(this);
    parambdy.a(this.i);
    this.j = parambci.e().a();
    this.j.a(this);
    parambdy.a(this.j);
    this.k = parambci.f().a();
    this.k.a(this);
    parambdy.a(this.k);
  }
  
  private LinearGradient c() {
    int i = e();
    LinearGradient linearGradient2 = (LinearGradient)this.d.get(i);
    if (linearGradient2 != null)
      return linearGradient2; 
    PointF pointF1 = this.j.b();
    PointF pointF2 = this.k.b();
    bce bce = this.i.b();
    int[] arrayOfInt = bce.b();
    float[] arrayOfFloat = bce.a();
    int j = (int)(this.f.left + this.f.width() / 2.0F + pointF1.x);
    float f1 = this.f.top;
    float f2 = this.f.height() / 2.0F;
    int k = (int)(pointF1.y + f1 + f2);
    int m = (int)(this.f.left + this.f.width() / 2.0F + pointF2.x);
    int n = (int)(this.f.top + this.f.height() / 2.0F + pointF2.y);
    LinearGradient linearGradient1 = new LinearGradient(j, k, m, n, arrayOfInt, arrayOfFloat, Shader.TileMode.CLAMP);
    this.d.put(i, linearGradient1);
    return linearGradient1;
  }
  
  private RadialGradient d() {
    int i = e();
    RadialGradient radialGradient2 = (RadialGradient)this.e.get(i);
    if (radialGradient2 != null)
      return radialGradient2; 
    PointF pointF1 = this.j.b();
    PointF pointF2 = this.k.b();
    bce bce = this.i.b();
    int[] arrayOfInt = bce.b();
    float[] arrayOfFloat = bce.a();
    int j = (int)(this.f.left + this.f.width() / 2.0F + pointF1.x);
    float f1 = this.f.top;
    float f2 = this.f.height() / 2.0F;
    int k = (int)(pointF1.y + f1 + f2);
    int m = (int)(this.f.left + this.f.width() / 2.0F + pointF2.x);
    f1 = this.f.top;
    f2 = this.f.height() / 2.0F;
    int n = (int)(pointF2.y + f1 + f2);
    f1 = (float)Math.hypot((m - j), (n - k));
    RadialGradient radialGradient1 = new RadialGradient(j, k, f1, arrayOfInt, arrayOfFloat, Shader.TileMode.CLAMP);
    this.e.put(i, radialGradient1);
    return radialGradient1;
  }
  
  private int e() {
    int j = Math.round(this.j.c() * this.h);
    int m = Math.round(this.k.c() * this.h);
    int k = Math.round(this.i.c() * this.h);
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
  
  public void a(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    a(this.f, paramMatrix);
    if (this.g == bcl.Linear) {
      this.a.setShader((Shader)c());
    } else {
      this.a.setShader((Shader)d());
    } 
    super.a(paramCanvas, paramMatrix, paramInt);
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {}
  
  public String b() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */