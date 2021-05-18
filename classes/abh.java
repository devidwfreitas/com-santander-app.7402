import android.graphics.PointF;
import android.view.View;
import android.view.ViewTreeObserver;

class abh implements ViewTreeObserver.OnGlobalLayoutListener {
  abh(abb paramabb) {}
  
  public void onGlobalLayout() {
    abl.a((View)abb.i(this.a), this);
    abb.i(this.a).getViewTreeObserver().addOnGlobalLayoutListener(abb.j(this.a));
    PointF pointF = abb.k(this.a);
    abb.d(this.a).setClippingEnabled(true);
    abb.d(this.a).update((int)pointF.x, (int)pointF.y, abb.d(this.a).getWidth(), abb.d(this.a).getHeight());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */