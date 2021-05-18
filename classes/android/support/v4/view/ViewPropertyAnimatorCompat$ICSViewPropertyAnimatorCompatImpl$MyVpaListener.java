package android.support.v4.view;

import android.os.Build;
import android.view.View;

class ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener implements ViewPropertyAnimatorListener {
  boolean mAnimEndCalled;
  
  ViewPropertyAnimatorCompat mVpa;
  
  ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat) {
    this.mVpa = paramViewPropertyAnimatorCompat;
  }
  
  public void onAnimationCancel(View paramView) {
    Object object = paramView.getTag(2113929216);
    if (object instanceof ViewPropertyAnimatorListener) {
      object = object;
    } else {
      object = null;
    } 
    if (object != null)
      object.onAnimationCancel(paramView); 
  }
  
  public void onAnimationEnd(View paramView) {
    if (this.mVpa.mOldLayerType >= 0) {
      ViewCompat.setLayerType(paramView, this.mVpa.mOldLayerType, null);
      this.mVpa.mOldLayerType = -1;
    } 
    if (Build.VERSION.SDK_INT >= 16 || !this.mAnimEndCalled) {
      if (this.mVpa.mEndAction != null) {
        Runnable runnable = this.mVpa.mEndAction;
        this.mVpa.mEndAction = null;
        runnable.run();
      } 
      Object object = paramView.getTag(2113929216);
      if (object instanceof ViewPropertyAnimatorListener) {
        object = object;
      } else {
        object = null;
      } 
      if (object != null)
        object.onAnimationEnd(paramView); 
      this.mAnimEndCalled = true;
    } 
  }
  
  public void onAnimationStart(View paramView) {
    this.mAnimEndCalled = false;
    if (this.mVpa.mOldLayerType >= 0)
      ViewCompat.setLayerType(paramView, 2, null); 
    if (this.mVpa.mStartAction != null) {
      Runnable runnable = this.mVpa.mStartAction;
      this.mVpa.mStartAction = null;
      runnable.run();
    } 
    Object object = paramView.getTag(2113929216);
    if (object instanceof ViewPropertyAnimatorListener) {
      object = object;
    } else {
      object = null;
    } 
    if (object != null)
      object.onAnimationStart(paramView); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */