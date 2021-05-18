import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import com.santander.app.components.view.cardLayout.CardLayout;

public class gsy extends AnimatorListenerAdapter {
  public gsy(CardLayout paramCardLayout) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    super.onAnimationEnd(paramAnimator);
    Log.v("CardLayout", "cardViewSwipeLeftAnimatorListenerAdapter");
    if (CardLayout.b(this.a) != null)
      CardLayout.b(this.a).a(CardLayout.c(this.a)); 
    this.a.b(CardLayout.c(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */