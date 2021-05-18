package android.support.design.widget;

import android.os.Build;

final class ViewUtils$1 implements ValueAnimatorCompat$Creator {
  public ValueAnimatorCompat createAnimator() {
    if (Build.VERSION.SDK_INT >= 12) {
      ValueAnimatorCompatImplHoneycombMr1 valueAnimatorCompatImplHoneycombMr1 = new ValueAnimatorCompatImplHoneycombMr1();
      return new ValueAnimatorCompat(valueAnimatorCompatImplHoneycombMr1);
    } 
    ValueAnimatorCompatImplGingerbread valueAnimatorCompatImplGingerbread = new ValueAnimatorCompatImplGingerbread();
    return new ValueAnimatorCompat(valueAnimatorCompatImplGingerbread);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\ViewUtils$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */