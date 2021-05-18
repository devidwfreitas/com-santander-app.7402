import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
import com.github.mikephil.charting.charts.BarLineChartBase;

@SuppressLint({"NewApi"})
public class cix extends ciw implements Animator.AnimatorListener {
  private static clc<cix> t = clc.a(8, new cix(null, null, null, null, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0L));
  
  protected float e;
  
  protected float f;
  
  protected float g;
  
  protected float h;
  
  protected cgb i;
  
  protected float j;
  
  protected Matrix k = new Matrix();
  
  @SuppressLint({"NewApi"})
  public cix(clh paramclh, View paramView, cle paramcle, cgb paramcgb, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, long paramLong) {
    super(paramclh, paramFloat2, paramFloat3, paramcle, paramView, paramFloat4, paramFloat5, paramLong);
    this.g = paramFloat6;
    this.h = paramFloat7;
    this.e = paramFloat8;
    this.f = paramFloat9;
    this.a.addListener(this);
    this.i = paramcgb;
    this.j = paramFloat1;
  }
  
  public static cix a(clh paramclh, View paramView, cle paramcle, cgb paramcgb, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, long paramLong) {
    cix cix1 = t.c();
    cix1.m = paramclh;
    cix1.n = paramFloat2;
    cix1.o = paramFloat3;
    cix1.p = paramcle;
    cix1.q = paramView;
    cix1.c = paramFloat4;
    cix1.d = paramFloat5;
    cix1.f();
    cix1.a.setDuration(paramLong);
    return cix1;
  }
  
  public void a() {}
  
  protected cld b() {
    return new cix(null, null, null, null, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0L);
  }
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    ((BarLineChartBase)this.q).l();
    this.q.postInvalidate();
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    float f1 = this.c;
    float f2 = this.n;
    float f3 = this.c;
    float f4 = this.b;
    float f5 = this.d;
    float f6 = this.o;
    float f7 = this.d;
    float f8 = this.b;
    Matrix matrix = this.k;
    this.m.d(f1 + (f2 - f3) * f4, f5 + (f6 - f7) * f8, matrix);
    this.m.a(matrix, this.q, false);
    f1 = this.i.u / this.m.t();
    f2 = this.j / this.m.s();
    float[] arrayOfFloat = this.l;
    f3 = this.e;
    arrayOfFloat[0] = (this.g - f2 / 2.0F - this.e) * this.b + f3;
    arrayOfFloat = this.l;
    f2 = this.f;
    f3 = this.h;
    arrayOfFloat[1] = (f1 / 2.0F + f3 - this.f) * this.b + f2;
    this.p.a(this.l);
    this.m.a(this.l, matrix);
    this.m.a(matrix, this.q, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */