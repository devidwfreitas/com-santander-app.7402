import android.graphics.PointF;
import android.view.ViewTreeObserver;

class aoh implements ViewTreeObserver.OnGlobalLayoutListener {
  aoh(aoa paramaoa) {}
  
  public void onGlobalLayout() {
    aoa.l(this.a);
    PointF pointF = aoa.m(this.a);
    aoa.f(this.a).setClippingEnabled(true);
    aoa.f(this.a).update((int)pointF.x, (int)pointF.y, aoa.f(this.a).getWidth(), aoa.f(this.a).getHeight(), true);
    if (aoa.n(this.a)) {
      aoa.a(this.a).setVisibility(0);
      return;
    } 
    aoa.a(this.a).setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aoh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */