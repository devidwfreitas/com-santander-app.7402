package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl extends ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl {
  WeakHashMap<View, Integer> mLayerMap = null;
  
  public void alpha(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.alpha(paramView, paramFloat);
  }
  
  public void alphaBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.alphaBy(paramView, paramFloat);
  }
  
  public void cancel(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    ViewPropertyAnimatorCompatICS.cancel(paramView);
  }
  
  public long getDuration(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    return ViewPropertyAnimatorCompatICS.getDuration(paramView);
  }
  
  public long getStartDelay(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    return ViewPropertyAnimatorCompatICS.getStartDelay(paramView);
  }
  
  public void rotation(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.rotation(paramView, paramFloat);
  }
  
  public void rotationBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.rotationBy(paramView, paramFloat);
  }
  
  public void rotationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.rotationX(paramView, paramFloat);
  }
  
  public void rotationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.rotationXBy(paramView, paramFloat);
  }
  
  public void rotationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.rotationY(paramView, paramFloat);
  }
  
  public void rotationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.rotationYBy(paramView, paramFloat);
  }
  
  public void scaleX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.scaleX(paramView, paramFloat);
  }
  
  public void scaleXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.scaleXBy(paramView, paramFloat);
  }
  
  public void scaleY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.scaleY(paramView, paramFloat);
  }
  
  public void scaleYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.scaleYBy(paramView, paramFloat);
  }
  
  public void setDuration(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, long paramLong) {
    ViewPropertyAnimatorCompatICS.setDuration(paramView, paramLong);
  }
  
  public void setInterpolator(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Interpolator paramInterpolator) {
    ViewPropertyAnimatorCompatICS.setInterpolator(paramView, paramInterpolator);
  }
  
  public void setListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener) {
    paramView.setTag(2113929216, paramViewPropertyAnimatorListener);
    ViewPropertyAnimatorCompatICS.setListener(paramView, new ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener(paramViewPropertyAnimatorCompat));
  }
  
  public void setStartDelay(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, long paramLong) {
    ViewPropertyAnimatorCompatICS.setStartDelay(paramView, paramLong);
  }
  
  public void start(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    ViewPropertyAnimatorCompatICS.start(paramView);
  }
  
  public void translationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.translationX(paramView, paramFloat);
  }
  
  public void translationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.translationXBy(paramView, paramFloat);
  }
  
  public void translationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.translationY(paramView, paramFloat);
  }
  
  public void translationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.translationYBy(paramView, paramFloat);
  }
  
  public void withEndAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable) {
    ViewPropertyAnimatorCompatICS.setListener(paramView, new ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener(paramViewPropertyAnimatorCompat));
    paramViewPropertyAnimatorCompat.mEndAction = paramRunnable;
  }
  
  public void withLayer(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    paramViewPropertyAnimatorCompat.mOldLayerType = ViewCompat.getLayerType(paramView);
    ViewPropertyAnimatorCompatICS.setListener(paramView, new ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener(paramViewPropertyAnimatorCompat));
  }
  
  public void withStartAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable) {
    ViewPropertyAnimatorCompatICS.setListener(paramView, new ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener(paramViewPropertyAnimatorCompat));
    paramViewPropertyAnimatorCompat.mStartAction = paramRunnable;
  }
  
  public void x(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.x(paramView, paramFloat);
  }
  
  public void xBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.xBy(paramView, paramFloat);
  }
  
  public void y(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.y(paramView, paramFloat);
  }
  
  public void yBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    ViewPropertyAnimatorCompatICS.yBy(paramView, paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */