import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.github.mikephil.charting.charts.PieRadarChartBase;
import java.util.ArrayList;

public class cji extends cjc<PieRadarChartBase<?>> {
  private cla m = cla.a(0.0F, 0.0F);
  
  private float n = 0.0F;
  
  private ArrayList<cjj> o = new ArrayList<cjj>();
  
  private long p = 0L;
  
  private float q = 0.0F;
  
  public cji(PieRadarChartBase<?> paramPieRadarChartBase) {
    super(paramPieRadarChartBase);
  }
  
  private void c() {
    this.o.clear();
  }
  
  private void c(float paramFloat1, float paramFloat2) {
    long l = AnimationUtils.currentAnimationTimeMillis();
    this.o.add(new cjj(this, l, this.l.b(paramFloat1, paramFloat2)));
    for (int i = this.o.size(); i - 2 > 0 && l - ((cjj)this.o.get(0)).a > 1000L; i--)
      this.o.remove(0); 
  }
  
  private float f() {
    if (this.o.isEmpty())
      return 0.0F; 
    cjj cjj2 = this.o.get(0);
    cjj cjj3 = this.o.get(this.o.size() - 1);
    int i = this.o.size() - 1;
    cjj cjj1 = cjj2;
    while (true) {
      if (i >= 0) {
        cjj1 = this.o.get(i);
        if (cjj1.b == cjj3.b) {
          i--;
          continue;
        } 
      } 
      float f2 = (float)(cjj3.a - cjj2.a) / 1000.0F;
      float f1 = f2;
      if (f2 == 0.0F)
        f1 = 0.1F; 
      if (cjj3.b >= cjj1.b) {
        i = 1;
      } else {
        i = 0;
      } 
      if (Math.abs(cjj3.b - cjj1.b) > 270.0D)
        if (i == 0) {
          i = 1;
        } else {
          i = 0;
        }  
      if ((cjj3.b - cjj2.b) > 180.0D) {
        cjj2.b = (float)(cjj2.b + 360.0D);
      } else if ((cjj2.b - cjj3.b) > 180.0D) {
        cjj3.b = (float)(cjj3.b + 360.0D);
      } 
      f2 = Math.abs((cjj3.b - cjj2.b) / f1);
      f1 = f2;
      return (i == 0) ? -f2 : f1;
    } 
  }
  
  public void a() {
    this.q = 0.0F;
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    this.n = this.l.b(paramFloat1, paramFloat2) - this.l.y();
  }
  
  public void b() {
    if (this.q == 0.0F)
      return; 
    long l = AnimationUtils.currentAnimationTimeMillis();
    float f = this.q;
    this.q = this.l.ac() * f;
    f = (float)(l - this.p) / 1000.0F;
    this.l.setRotationAngle(this.l.z() + f * this.q);
    this.p = l;
    if (Math.abs(this.q) >= 0.001D) {
      clg.a((View)this.l);
      return;
    } 
    a();
  }
  
  public void b(float paramFloat1, float paramFloat2) {
    this.l.setRotationAngle(this.l.b(paramFloat1, paramFloat2) - this.n);
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {
    this.a = cjd.LONG_PRESS;
    cje cje = this.l.af();
    if (cje != null)
      cje.a(paramMotionEvent); 
  }
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent) {
    return true;
  }
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent) {
    this.a = cjd.SINGLE_TAP;
    cje cje = this.l.af();
    if (cje != null)
      cje.c(paramMotionEvent); 
    if (!this.l.X())
      return false; 
    a(this.l.a(paramMotionEvent.getX(), paramMotionEvent.getY()), paramMotionEvent);
    return true;
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    if (!this.k.onTouchEvent(paramMotionEvent) && this.l.A()) {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      switch (paramMotionEvent.getAction()) {
        default:
          return true;
        case 0:
          a(paramMotionEvent);
          a();
          c();
          if (this.l.ab())
            c(f1, f2); 
          a(f1, f2);
          this.m.a = f1;
          this.m.b = f2;
          return true;
        case 2:
          if (this.l.ab())
            c(f1, f2); 
          if (this.i == 0 && a(f1, this.m.a, f2, this.m.b) > clg.a(8.0F)) {
            this.a = cjd.ROTATE;
            this.i = 6;
            this.l.ay();
            b(paramMotionEvent);
            return true;
          } 
          if (this.i == 6) {
            b(f1, f2);
            this.l.invalidate();
          } 
          b(paramMotionEvent);
          return true;
        case 1:
          break;
      } 
      if (this.l.ab()) {
        a();
        c(f1, f2);
        this.q = f();
        if (this.q != 0.0F) {
          this.p = AnimationUtils.currentAnimationTimeMillis();
          clg.a((View)this.l);
        } 
      } 
      this.l.az();
      this.i = 0;
      b(paramMotionEvent);
      return true;
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cji.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */