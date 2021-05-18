import android.animation.Animator;
import com.santander.app.widget.BottomExapandableView;

public class nev implements Animator.AnimatorListener {
  public nev(BottomExapandableView paramBottomExapandableView, boolean paramBoolean) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    if (!this.a)
      BottomExapandableView.c(this.b).setVisibility(8); 
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {
    BottomExapandableView.c(this.b).setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */