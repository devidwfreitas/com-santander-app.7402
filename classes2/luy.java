import android.animation.Animator;
import android.os.Handler;

class luy implements Animator.AnimatorListener {
  luy(luw paramluw) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    lvd.h(this.a.a).setClickable(true);
    if (luv.c(this.a.c) >= 0 || luv.d(this.a.c) >= 0)
      this.a.c.notifyDataSetChanged(); 
    (new Handler()).postDelayed(new luz(this), (luv.a(this.a.c) + luv.f(this.a.c)));
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\luy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */