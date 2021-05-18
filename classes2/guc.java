import android.animation.ValueAnimator;
import android.util.Log;
import android.view.ViewGroup;

class guc implements ValueAnimator.AnimatorUpdateListener {
  guc(gtz paramgtz) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    ViewGroup.LayoutParams layoutParams = gtz.f(this.a).getLayoutParams();
    layoutParams.height = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
    gtz.f(this.a).setLayoutParams(layoutParams);
    Log.v("onAnimationUpdate", String.valueOf(paramValueAnimator.getAnimatedValue()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\guc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */