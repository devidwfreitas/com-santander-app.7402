import android.view.animation.Animation;
import com.santander.app.components.view.CheckCardView;

public class gou extends gox {
  public gou(CheckCardView paramCheckCardView) {
    super(paramCheckCardView, null);
  }
  
  public void onAnimationEnd(Animation paramAnimation) {
    CheckCardView.a(this.a, CheckCardView.h(this.a), new gov(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */