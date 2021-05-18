import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;

public class amp extends AnimatorListenerAdapter {
  public amp(SantanderDropDownView paramSantanderDropDownView, boolean paramBoolean) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    super.onAnimationEnd(paramAnimator);
    if (this.a)
      SantanderDropDownView.k(this.b).setVisibility(8); 
  }
  
  public void onAnimationStart(Animator paramAnimator) {
    super.onAnimationStart(paramAnimator);
    if (!this.a)
      SantanderDropDownView.k(this.b).setVisibility(0); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */