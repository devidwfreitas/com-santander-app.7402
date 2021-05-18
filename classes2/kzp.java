import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;

public class kzp {
  public static void a(View paramView) {
    TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
    translateAnimation.setDuration(400L);
    translateAnimation.setFillAfter(true);
    translateAnimation.setFillEnabled(true);
    paramView.startAnimation((Animation)translateAnimation);
    translateAnimation.setAnimationListener(new kzq());
  }
  
  public static void a(View paramView, kzs paramkzs) {
    TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 1.0F);
    translateAnimation.setDuration(400L);
    translateAnimation.setFillAfter(true);
    translateAnimation.setFillEnabled(true);
    paramView.startAnimation((Animation)translateAnimation);
    translateAnimation.setAnimationListener(new kzr(paramkzs));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */