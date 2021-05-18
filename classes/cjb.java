import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.data.Entry;

public class cjb extends cjc<BarLineChartBase<? extends cgg<? extends cil<? extends Entry>>>> {
  private Matrix m = new Matrix();
  
  private Matrix n = new Matrix();
  
  private cla o = cla.a(0.0F, 0.0F);
  
  private cla p = cla.a(0.0F, 0.0F);
  
  private float q = 1.0F;
  
  private float r = 1.0F;
  
  private float s = 1.0F;
  
  private cio t;
  
  private VelocityTracker u;
  
  private long v = 0L;
  
  private cla w = cla.a(0.0F, 0.0F);
  
  private cla x = cla.a(0.0F, 0.0F);
  
  private float y;
  
  private float z;
  
  public cjb(BarLineChartBase<? extends cgg<? extends cil<? extends Entry>>> paramBarLineChartBase, Matrix paramMatrix, float paramFloat) {
    super(paramBarLineChartBase);
    this.m = paramMatrix;
    this.y = clg.a(paramFloat);
    this.z = clg.a(3.5F);
  }
  
  private static void a(cla paramcla, MotionEvent paramMotionEvent) {
    float f1 = paramMotionEvent.getX(0);
    float f2 = paramMotionEvent.getX(1);
    float f3 = paramMotionEvent.getY(0);
    float f4 = paramMotionEvent.getY(1);
    paramcla.a = (f1 + f2) / 2.0F;
    paramcla.b = (f3 + f4) / 2.0F;
  }
  
  private void c(MotionEvent paramMotionEvent) {
    this.n.set(this.m);
    this.o.a = paramMotionEvent.getX();
    this.o.b = paramMotionEvent.getY();
    this.t = this.l.d(paramMotionEvent.getX(), paramMotionEvent.getY());
  }
  
  private void d(MotionEvent paramMotionEvent) {
    float f1;
    float f2;
    this.a = cjd.DRAG;
    this.m.set(this.n);
    cje cje = this.l.af();
    if (f()) {
      if (this.l instanceof com.github.mikephil.charting.charts.HorizontalBarChart) {
        f2 = -(paramMotionEvent.getX() - this.o.a);
        f1 = paramMotionEvent.getY() - this.o.b;
      } else {
        f2 = paramMotionEvent.getX() - this.o.a;
        f1 = -(paramMotionEvent.getY() - this.o.b);
      } 
    } else {
      f2 = paramMotionEvent.getX() - this.o.a;
      f1 = paramMotionEvent.getY() - this.o.b;
    } 
    this.m.postTranslate(f2, f1);
    if (cje != null)
      cje.b(paramMotionEvent, f2, f1); 
  }
  
  private void e(MotionEvent paramMotionEvent) {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramMotionEvent.getPointerCount() >= 2) {
      cje cje = this.l.af();
      float f = g(paramMotionEvent);
      if (f > this.z) {
        cla cla1 = a(this.p.a, this.p.b);
        clh clh = this.l.aD();
        if (this.i == 4) {
          float f1;
          boolean bool3;
          boolean bool4;
          this.a = cjd.PINCH_ZOOM;
          f /= this.s;
          if (f >= 1.0F)
            bool1 = false; 
          if (bool1) {
            bool3 = clh.E();
          } else {
            bool3 = clh.F();
          } 
          if (bool1) {
            bool4 = clh.G();
          } else {
            bool4 = clh.H();
          } 
          if (this.l.v()) {
            f1 = f;
          } else {
            f1 = 1.0F;
          } 
          if (!this.l.w())
            f = 1.0F; 
          if (bool4 || bool3) {
            this.m.set(this.n);
            this.m.postScale(f1, f, cla1.a, cla1.b);
            if (cje != null)
              cje.a(paramMotionEvent, f1, f); 
          } 
        } else if (this.i == 2 && this.l.v()) {
          boolean bool;
          this.a = cjd.X_ZOOM;
          f = h(paramMotionEvent) / this.q;
          if (f < 1.0F) {
            bool1 = bool2;
          } else {
            bool1 = false;
          } 
          if (bool1) {
            bool = clh.E();
          } else {
            bool = clh.F();
          } 
          if (bool) {
            this.m.set(this.n);
            this.m.postScale(f, 1.0F, cla1.a, cla1.b);
            if (cje != null)
              cje.a(paramMotionEvent, f, 1.0F); 
          } 
        } else if (this.i == 3 && this.l.w()) {
          boolean bool;
          this.a = cjd.Y_ZOOM;
          f = i(paramMotionEvent) / this.r;
          if (f < 1.0F) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          if (bool1) {
            bool = clh.G();
          } else {
            bool = clh.H();
          } 
          if (bool) {
            this.m.set(this.n);
            this.m.postScale(1.0F, f, cla1.a, cla1.b);
            if (cje != null)
              cje.a(paramMotionEvent, 1.0F, f); 
          } 
        } 
        cla.a(cla1);
      } 
    } 
  }
  
  private void f(MotionEvent paramMotionEvent) {
    chv chv = this.l.a(paramMotionEvent.getX(), paramMotionEvent.getY());
    if (chv != null && !chv.a(this.j)) {
      this.j = chv;
      this.l.a(chv, true);
    } 
  }
  
  private boolean f() {
    return ((this.t == null && this.l.P()) || (this.t != null && this.l.d(this.t.C())));
  }
  
  private static float g(MotionEvent paramMotionEvent) {
    float f1 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
    float f2 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
    return (float)Math.sqrt((f1 * f1 + f2 * f2));
  }
  
  private static float h(MotionEvent paramMotionEvent) {
    return Math.abs(paramMotionEvent.getX(0) - paramMotionEvent.getX(1));
  }
  
  private static float i(MotionEvent paramMotionEvent) {
    return Math.abs(paramMotionEvent.getY(0) - paramMotionEvent.getY(1));
  }
  
  public Matrix a() {
    return this.m;
  }
  
  public cla a(float paramFloat1, float paramFloat2) {
    clh clh = this.l.aD();
    float f = clh.b();
    if (f()) {
      paramFloat2 = -(paramFloat2 - clh.d());
      return cla.a(paramFloat1 - f, paramFloat2);
    } 
    paramFloat2 = -(this.l.getMeasuredHeight() - paramFloat2 - clh.e());
    return cla.a(paramFloat1 - f, paramFloat2);
  }
  
  public void a(float paramFloat) {
    this.y = clg.a(paramFloat);
  }
  
  public void b() {
    this.x.a = 0.0F;
    this.x.b = 0.0F;
  }
  
  public void c() {
    if (this.x.a == 0.0F && this.x.b == 0.0F)
      return; 
    long l = AnimationUtils.currentAnimationTimeMillis();
    cla cla1 = this.x;
    float f1 = cla1.a;
    cla1.a = this.l.ac() * f1;
    cla1 = this.x;
    f1 = cla1.b;
    cla1.b = this.l.ac() * f1;
    f1 = (float)(l - this.v) / 1000.0F;
    float f2 = this.x.a;
    float f3 = this.x.b;
    cla1 = this.w;
    cla1.a = f2 * f1 + cla1.a;
    cla1 = this.w;
    cla1.b = f1 * f3 + cla1.b;
    MotionEvent motionEvent = MotionEvent.obtain(l, l, 2, this.w.a, this.w.b, 0);
    d(motionEvent);
    motionEvent.recycle();
    this.m = this.l.aD().a(this.m, (View)this.l, false);
    this.v = l;
    if (Math.abs(this.x.a) >= 0.01D || Math.abs(this.x.b) >= 0.01D) {
      clg.a((View)this.l);
      return;
    } 
    this.l.l();
    this.l.postInvalidate();
    b();
  }
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent) {
    float f = 1.4F;
    this.a = cjd.DOUBLE_TAP;
    cje cje = this.l.af();
    if (cje != null)
      cje.b(paramMotionEvent); 
    if (this.l.x() && ((cgg)this.l.aC()).n() > 0) {
      float f1;
      cla cla1 = a(paramMotionEvent.getX(), paramMotionEvent.getY());
      BarLineChartBase<? extends cgg<? extends cil<? extends Entry>>> barLineChartBase = this.l;
      if (this.l.v()) {
        f1 = 1.4F;
      } else {
        f1 = 1.0F;
      } 
      if (!this.l.w())
        f = 1.0F; 
      barLineChartBase.a(f1, f, cla1.a, cla1.b);
      if (this.l.ar())
        Log.i("BarlineChartTouch", "Double-Tap, Zooming In, x: " + cla1.a + ", y: " + cla1.b); 
      cla.a(cla1);
    } 
    return super.onDoubleTap(paramMotionEvent);
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2) {
    this.a = cjd.FLING;
    cje cje = this.l.af();
    if (cje != null)
      cje.a(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2); 
    return super.onFling(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {
    this.a = cjd.LONG_PRESS;
    cje cje = this.l.af();
    if (cje != null)
      cje.a(paramMotionEvent); 
  }
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent) {
    this.a = cjd.SINGLE_TAP;
    cje cje = this.l.af();
    if (cje != null)
      cje.c(paramMotionEvent); 
    if (!this.l.X())
      return false; 
    a(this.l.a(paramMotionEvent.getX(), paramMotionEvent.getY()), paramMotionEvent);
    return super.onSingleTapUp(paramMotionEvent);
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    VelocityTracker velocityTracker;
    float f1;
    float f2;
    int i = 2;
    if (this.u == null)
      this.u = VelocityTracker.obtain(); 
    this.u.addMovement(paramMotionEvent);
    if (paramMotionEvent.getActionMasked() == 3 && this.u != null) {
      this.u.recycle();
      this.u = null;
    } 
    if (this.i == 0)
      this.k.onTouchEvent(paramMotionEvent); 
    if (!this.l.u() && !this.l.v() && !this.l.w())
      return true; 
    switch (paramMotionEvent.getAction() & 0xFF) {
      default:
        this.m = this.l.aD().a(this.m, (View)this.l, true);
        return true;
      case 0:
        a(paramMotionEvent);
        b();
        c(paramMotionEvent);
      case 5:
        if (paramMotionEvent.getPointerCount() >= 2) {
          this.l.ay();
          c(paramMotionEvent);
          this.q = h(paramMotionEvent);
          this.r = i(paramMotionEvent);
          this.s = g(paramMotionEvent);
          if (this.s > 10.0F)
            if (this.l.I()) {
              this.i = 4;
            } else if (this.l.v() != this.l.w()) {
              if (this.l.v()) {
                i = 2;
              } else {
                i = 3;
              } 
              this.i = i;
            } else {
              if (this.q <= this.r)
                i = 3; 
              this.i = i;
            }  
          a(this.p, paramMotionEvent);
        } 
      case 2:
        if (this.i == 1) {
          this.l.ay();
          d(paramMotionEvent);
        } 
        if (this.i == 2 || this.i == 3 || this.i == 4) {
          this.l.ay();
          if (this.l.v() || this.l.w())
            e(paramMotionEvent); 
        } 
        if (this.i == 0 && Math.abs(a(paramMotionEvent.getX(), this.o.a, paramMotionEvent.getY(), this.o.b)) > this.y) {
          if (this.l.J()) {
            if (!this.l.F() && this.l.u())
              this.i = 1; 
            this.a = cjd.DRAG;
            if (this.l.t())
              f(paramMotionEvent); 
          } 
          if (this.l.u()) {
            this.a = cjd.DRAG;
            this.i = 1;
          } 
        } 
      case 1:
        velocityTracker = this.u;
        i = paramMotionEvent.getPointerId(0);
        velocityTracker.computeCurrentVelocity(1000, clg.c());
        f1 = velocityTracker.getYVelocity(i);
        f2 = velocityTracker.getXVelocity(i);
        if ((Math.abs(f2) > clg.b() || Math.abs(f1) > clg.b()) && this.i == 1 && this.l.ab()) {
          b();
          this.v = AnimationUtils.currentAnimationTimeMillis();
          this.w.a = paramMotionEvent.getX();
          this.w.b = paramMotionEvent.getY();
          this.x.a = f2;
          this.x.b = f1;
          clg.a((View)this.l);
        } 
        if (this.i == 2 || this.i == 3 || this.i == 4 || this.i == 5) {
          this.l.l();
          this.l.postInvalidate();
        } 
        this.i = 0;
        this.l.az();
        if (this.u != null) {
          this.u.recycle();
          this.u = null;
        } 
        b(paramMotionEvent);
      case 6:
        clg.a(paramMotionEvent, this.u);
        this.i = 5;
      case 3:
        break;
    } 
    this.i = 0;
    b(paramMotionEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */