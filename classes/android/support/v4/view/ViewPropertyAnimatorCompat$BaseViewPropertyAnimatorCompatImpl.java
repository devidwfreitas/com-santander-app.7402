package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl implements ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl {
  WeakHashMap<View, Runnable> mStarterMap = null;
  
  private void postStartMessage(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    Runnable runnable1 = null;
    if (this.mStarterMap != null)
      runnable1 = this.mStarterMap.get(paramView); 
    Runnable runnable2 = runnable1;
    if (runnable1 == null) {
      runnable2 = new ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter(this, paramViewPropertyAnimatorCompat, paramView);
      if (this.mStarterMap == null)
        this.mStarterMap = new WeakHashMap<View, Runnable>(); 
      this.mStarterMap.put(paramView, runnable2);
    } 
    paramView.removeCallbacks(runnable2);
    paramView.post(runnable2);
  }
  
  private void removeStartMessage(View paramView) {
    if (this.mStarterMap != null) {
      Runnable runnable = this.mStarterMap.get(paramView);
      if (runnable != null)
        paramView.removeCallbacks(runnable); 
    } 
  }
  
  public void alpha(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void alphaBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void cancel(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public long getDuration(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    return 0L;
  }
  
  public Interpolator getInterpolator(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    return null;
  }
  
  public long getStartDelay(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    return 0L;
  }
  
  public void rotation(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void scaleX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void scaleXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void scaleY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void scaleYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void setDuration(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, long paramLong) {}
  
  public void setInterpolator(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Interpolator paramInterpolator) {}
  
  public void setListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener) {
    paramView.setTag(2113929216, paramViewPropertyAnimatorListener);
  }
  
  public void setStartDelay(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, long paramLong) {}
  
  public void setUpdateListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorUpdateListener paramViewPropertyAnimatorUpdateListener) {}
  
  public void start(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    removeStartMessage(paramView);
    startAnimation(paramViewPropertyAnimatorCompat, paramView);
  }
  
  void startAnimation(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    Object object = paramView.getTag(2113929216);
    if (object instanceof ViewPropertyAnimatorListener) {
      object = object;
    } else {
      object = null;
    } 
    Runnable runnable1 = paramViewPropertyAnimatorCompat.mStartAction;
    Runnable runnable2 = paramViewPropertyAnimatorCompat.mEndAction;
    paramViewPropertyAnimatorCompat.mStartAction = null;
    paramViewPropertyAnimatorCompat.mEndAction = null;
    if (runnable1 != null)
      runnable1.run(); 
    if (object != null) {
      object.onAnimationStart(paramView);
      object.onAnimationEnd(paramView);
    } 
    if (runnable2 != null)
      runnable2.run(); 
    if (this.mStarterMap != null)
      this.mStarterMap.remove(paramView); 
  }
  
  public void translationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void translationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void translationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void translationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void translationZ(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {}
  
  public void translationZBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {}
  
  public void withEndAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable) {
    paramViewPropertyAnimatorCompat.mEndAction = paramRunnable;
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void withLayer(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {}
  
  public void withStartAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable) {
    paramViewPropertyAnimatorCompat.mStartAction = paramRunnable;
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void x(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void xBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void y(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void yBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void z(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {}
  
  public void zBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */