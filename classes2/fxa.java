import android.animation.ValueAnimator;
import com.airbnb.lottie.LottieAnimationView;

final class fxa implements ValueAnimator.AnimatorUpdateListener {
  fxa(LottieAnimationView paramLottieAnimationView) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    this.a.setProgress(((Float)paramValueAnimator.getAnimatedValue()).floatValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */