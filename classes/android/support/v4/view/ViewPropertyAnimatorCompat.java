package android.support.v4.view;

import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public final class ViewPropertyAnimatorCompat {
  static final ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl IMPL = new ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl();
  
  static final int LISTENER_TAG_ID = 2113929216;
  
  private static final String TAG = "ViewAnimatorCompat";
  
  Runnable mEndAction = null;
  
  int mOldLayerType = -1;
  
  Runnable mStartAction = null;
  
  private WeakReference<View> mView;
  
  ViewPropertyAnimatorCompat(View paramView) {
    this.mView = new WeakReference<View>(paramView);
  }
  
  public ViewPropertyAnimatorCompat alpha(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.alpha(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat alphaBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.alphaBy(this, view, paramFloat); 
    return this;
  }
  
  public void cancel() {
    View view = this.mView.get();
    if (view != null)
      IMPL.cancel(this, view); 
  }
  
  public long getDuration() {
    View view = this.mView.get();
    return (view != null) ? IMPL.getDuration(this, view) : 0L;
  }
  
  public Interpolator getInterpolator() {
    View view = this.mView.get();
    return (view != null) ? IMPL.getInterpolator(this, view) : null;
  }
  
  public long getStartDelay() {
    View view = this.mView.get();
    return (view != null) ? IMPL.getStartDelay(this, view) : 0L;
  }
  
  public ViewPropertyAnimatorCompat rotation(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.rotation(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.rotationBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationX(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.rotationX(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationXBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.rotationXBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationY(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.rotationY(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationYBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.rotationYBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat scaleX(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.scaleX(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat scaleXBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.scaleXBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat scaleY(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.scaleY(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat scaleYBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.scaleYBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat setDuration(long paramLong) {
    View view = this.mView.get();
    if (view != null)
      IMPL.setDuration(this, view, paramLong); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat setInterpolator(Interpolator paramInterpolator) {
    View view = this.mView.get();
    if (view != null)
      IMPL.setInterpolator(this, view, paramInterpolator); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener paramViewPropertyAnimatorListener) {
    View view = this.mView.get();
    if (view != null)
      IMPL.setListener(this, view, paramViewPropertyAnimatorListener); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat setStartDelay(long paramLong) {
    View view = this.mView.get();
    if (view != null)
      IMPL.setStartDelay(this, view, paramLong); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat setUpdateListener(ViewPropertyAnimatorUpdateListener paramViewPropertyAnimatorUpdateListener) {
    View view = this.mView.get();
    if (view != null)
      IMPL.setUpdateListener(this, view, paramViewPropertyAnimatorUpdateListener); 
    return this;
  }
  
  public void start() {
    View view = this.mView.get();
    if (view != null)
      IMPL.start(this, view); 
  }
  
  public ViewPropertyAnimatorCompat translationX(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.translationX(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationXBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.translationXBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationY(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.translationY(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationYBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.translationYBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationZ(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.translationZ(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationZBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.translationZBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat withEndAction(Runnable paramRunnable) {
    View view = this.mView.get();
    if (view != null)
      IMPL.withEndAction(this, view, paramRunnable); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat withLayer() {
    View view = this.mView.get();
    if (view != null)
      IMPL.withLayer(this, view); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat withStartAction(Runnable paramRunnable) {
    View view = this.mView.get();
    if (view != null)
      IMPL.withStartAction(this, view, paramRunnable); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat x(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.x(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat xBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.xBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat y(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.y(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat yBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.yBy(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat z(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.z(this, view, paramFloat); 
    return this;
  }
  
  public ViewPropertyAnimatorCompat zBy(float paramFloat) {
    View view = this.mView.get();
    if (view != null)
      IMPL.zBy(this, view, paramFloat); 
    return this;
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21) {
      IMPL = new ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl();
      return;
    } 
    if (i >= 19) {
      IMPL = new ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl();
      return;
    } 
    if (i >= 18) {
      IMPL = new ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl();
      return;
    } 
    if (i >= 16) {
      IMPL = new ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl();
      return;
    } 
    if (i >= 14) {
      IMPL = new ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */