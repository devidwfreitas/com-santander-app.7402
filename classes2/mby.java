import android.animation.Animator;
import android.os.Build;
import android.view.View;
import com.santander.app.seguros.ui.widgets.FlipLayout;

public class mby implements Animator.AnimatorListener {
  View c;
  
  int d;
  
  public mby(FlipLayout paramFlipLayout, View paramView, int paramInt) {
    this.c = paramView;
    this.d = paramInt;
  }
  
  private void a(View paramView) {
    paramView.setVisibility(this.d);
    paramView.setPivotY((paramView.getHeight() / 2));
    paramView.setPivotX((paramView.getWidth() / 2));
    paramView.setRotation(0.0F);
    paramView.setRotationX(0.0F);
    paramView.setRotationY(0.0F);
    paramView.setTranslationX(0.0F);
    paramView.setTranslationY(0.0F);
    if (Build.VERSION.SDK_INT >= 21)
      paramView.setTranslationZ(0.0F); 
  }
  
  public void onAnimationCancel(Animator paramAnimator) {
    a(this.c);
    this.e.l = false;
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    a(this.c);
    this.e.l = false;
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {
    this.c.setVisibility(0);
    this.e.l = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mby.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */