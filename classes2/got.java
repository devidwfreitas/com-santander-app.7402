import android.view.animation.Animation;
import com.santander.app.components.view.CheckCardView;

public class got extends gox {
  public got(CheckCardView paramCheckCardView) {
    super(paramCheckCardView, null);
  }
  
  public void onAnimationEnd(Animation paramAnimation) {
    CheckCardView.f(this.a);
    CheckCardView.g(this.a);
    CheckCardView.a(this.a, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\got.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */