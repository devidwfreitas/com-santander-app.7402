import android.animation.ValueAnimator;
import com.airbnb.lottie.LottieAnimationView;

final class fxb implements ValueAnimator.AnimatorUpdateListener {
  fxb(LottieAnimationView paramLottieAnimationView) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    this.a.setProgress(((Float)paramValueAnimator.getAnimatedValue()).floatValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */