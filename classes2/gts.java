import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.santander.app.components.view.dropuplist.ListDropUp;

public class gts implements ValueAnimator.AnimatorUpdateListener {
  public gts(ListDropUp paramListDropUp, View paramView) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    int i = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
    ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
    layoutParams.height = i;
    this.a.setLayoutParams(layoutParams);
    float f2 = (float)(layoutParams.height / 1000.0D);
    LinearLayout linearLayout = ListDropUp.d(this.b);
    float f1 = f2;
    if (f2 < 0.2D)
      f1 = 0.0F; 
    linearLayout.setAlpha(f1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gts.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */