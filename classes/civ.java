import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;

@SuppressLint({"NewApi"})
public class civ extends ciw {
  private static clc<civ> e = clc.a(4, new civ(null, 0.0F, 0.0F, null, null, 0.0F, 0.0F, 0L));
  
  static {
    e.a(0.5F);
  }
  
  public civ(clh paramclh, float paramFloat1, float paramFloat2, cle paramcle, View paramView, float paramFloat3, float paramFloat4, long paramLong) {
    super(paramclh, paramFloat1, paramFloat2, paramcle, paramView, paramFloat3, paramFloat4, paramLong);
  }
  
  public static civ a(clh paramclh, float paramFloat1, float paramFloat2, cle paramcle, View paramView, float paramFloat3, float paramFloat4, long paramLong) {
    civ civ1 = e.c();
    civ1.m = paramclh;
    civ1.n = paramFloat1;
    civ1.o = paramFloat2;
    civ1.p = paramcle;
    civ1.q = paramView;
    civ1.c = paramFloat3;
    civ1.d = paramFloat4;
    civ1.a.setDuration(paramLong);
    return civ1;
  }
  
  public static void a(civ paramciv) {
    e.a(paramciv);
  }
  
  public void a() {
    a(this);
  }
  
  protected cld b() {
    return new civ(null, 0.0F, 0.0F, null, null, 0.0F, 0.0F, 0L);
  }
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    this.l[0] = this.c + (this.n - this.c) * this.b;
    this.l[1] = this.d + (this.o - this.d) * this.b;
    this.p.a(this.l);
    this.m.a(this.l, this.q);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\civ.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */