import android.animation.Animator;

class itl implements Animator.AnimatorListener {
  itl(itg paramitg) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    boolean bool;
    itg itg1 = this.a;
    if (itg.a(this.a).l() > itg.a(this.a).j() / 5) {
      bool = true;
    } else {
      bool = false;
    } 
    itg.a(itg1, bool);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */