import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.view.View;
import com.santander.app.seguros.ui.widgets.FlipLayout;

public class mbw extends mby {
  public mbw(FlipLayout paramFlipLayout, View paramView1, int paramInt, View paramView2) {
    super(paramFlipLayout, paramView1, paramInt);
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    super.onAnimationEnd(paramAnimator);
    this.b.n = this.a.animate();
    this.b.n.rotationY(0.0F).setDuration((this.b.i / 2)).setInterpolator((TimeInterpolator)this.b.k).setListener(new mby(this.b, this.a, 0));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mbw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */