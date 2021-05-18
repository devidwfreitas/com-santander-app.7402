import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class iqo implements Runnable {
  public iqo(HomeLogadaActivity paramHomeLogadaActivity, RelativeLayout paramRelativeLayout) {}
  
  public void run() {
    AlphaAnimation alphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    alphaAnimation.setDuration(1000L);
    alphaAnimation.setFillAfter(true);
    this.a.startAnimation((Animation)alphaAnimation);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iqo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */