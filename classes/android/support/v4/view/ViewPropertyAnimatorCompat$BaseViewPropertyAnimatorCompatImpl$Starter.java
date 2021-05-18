package android.support.v4.view;

import android.view.View;
import java.lang.ref.WeakReference;

class ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter implements Runnable {
  WeakReference<View> mViewRef;
  
  ViewPropertyAnimatorCompat mVpa;
  
  ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    this.mViewRef = new WeakReference<View>(paramView);
    this.mVpa = paramViewPropertyAnimatorCompat;
  }
  
  public void run() {
    View view = this.mViewRef.get();
    if (view != null)
      ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl.this.startAnimation(this.mVpa, view); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */