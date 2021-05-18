import android.graphics.RectF;
import android.view.View;
import android.view.ViewTreeObserver;

class abi implements ViewTreeObserver.OnGlobalLayoutListener {
  abi(abb paramabb) {}
  
  public void onGlobalLayout() {
    float f1;
    float f2;
    byte b = -1;
    abl.a((View)abb.i(this.a), this);
    RectF rectF1 = abl.a(abb.b(this.a));
    RectF rectF2 = abl.a((View)abb.i(this.a));
    if (abb.l(this.a) == 80 || abb.l(this.a) == 48) {
      f2 = abb.i(this.a).getPaddingLeft() + abl.b(2.0F);
      float f = rectF2.width() / 2.0F - abb.m(this.a).getWidth() / 2.0F - rectF2.centerX() - rectF1.centerX();
      if (f > f2) {
        f1 = f;
        if (abb.m(this.a).getWidth() + f + f2 > rectF2.width())
          f1 = rectF2.width() - abb.m(this.a).getWidth() - f2; 
      } else {
        f1 = f2;
      } 
      f2 = abb.m(this.a).getTop();
      if (abb.l(this.a) == 48) {
        b = -1;
      } else {
        b = 1;
      } 
      f = b;
      f += f2;
      f2 = f1;
      f1 = f;
    } else {
      f2 = abb.i(this.a).getPaddingTop() + abl.b(2.0F);
      float f = rectF2.height() / 2.0F - abb.m(this.a).getHeight() / 2.0F - rectF2.centerY() - rectF1.centerY();
      if (f > f2) {
        f1 = f;
        if (abb.m(this.a).getHeight() + f + f2 > rectF2.height())
          f1 = rectF2.height() - abb.m(this.a).getHeight() - f2; 
      } else {
        f1 = f2;
      } 
      f2 = abb.m(this.a).getLeft();
      if (abb.l(this.a) != 8388611)
        b = 1; 
      f2 += b;
    } 
    abb.m(this.a).setX(f2);
    abb.m(this.a).setY(f1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\abi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */