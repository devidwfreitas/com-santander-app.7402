import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import com.santander.app.components.view.cardLayout.CardLayout;

public class gsx extends AnimatorListenerAdapter {
  public gsx(CardLayout paramCardLayout) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    super.onAnimationEnd(paramAnimator);
    if (CardLayout.a(this.a) != null) {
      Log.v("CardLayout", "cardViewSwipeRightAnimatorListenerAdapter");
      if (CardLayout.b(this.a) != null)
        CardLayout.b(this.a).b(CardLayout.c(this.a)); 
      CardLayout.d(this.a);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */