import android.animation.Animator;
import android.util.Log;

class gud implements Animator.AnimatorListener {
  gud(gtz paramgtz) {}
  
  public void onAnimationCancel(Animator paramAnimator) {
    Log.v("onAnimationCancel", "onAnimationCancel");
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    Log.v("onAnimationEnd", "onAnimationEnd");
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {
    Log.v("onAnimationRepeat", "onAnimationRepeat");
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    Log.v("onAnimationStart", "onAnimationStart");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */