package android.support.v4.view;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;

@TargetApi(16)
@RequiresApi(16)
class ViewPropertyAnimatorCompatJB {
  public static void setListener(View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener) {
    if (paramViewPropertyAnimatorListener != null) {
      paramView.animate().setListener((Animator.AnimatorListener)new ViewPropertyAnimatorCompatJB$1(paramViewPropertyAnimatorListener, paramView));
      return;
    } 
    paramView.animate().setListener(null);
  }
  
  public static void withEndAction(View paramView, Runnable paramRunnable) {
    paramView.animate().withEndAction(paramRunnable);
  }
  
  public static void withLayer(View paramView) {
    paramView.animate().withLayer();
  }
  
  public static void withStartAction(View paramView, Runnable paramRunnable) {
    paramView.animate().withStartAction(paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompatJB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */