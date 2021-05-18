import android.animation.ValueAnimator;
import android.view.View;
import com.airbnb.lottie.LottieAnimationView;

public final class fwz {
  public static void a(View paramView) {
    paramView.setAlpha(0.0F);
    paramView.animate().alpha(1.0F).setStartDelay(1190L).setDuration(1000L).start();
  }
  
  static void a(LottieAnimationView paramLottieAnimationView) {
    a(paramLottieAnimationView, paramLottieAnimationView.q());
  }
  
  static void a(LottieAnimationView paramLottieAnimationView, long paramLong) {
    ValueAnimator valueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F }).setDuration(paramLong);
    valueAnimator.addUpdateListener(new fxa(paramLottieAnimationView));
    valueAnimator.start();
  }
  
  static void b(LottieAnimationView paramLottieAnimationView) {
    b(paramLottieAnimationView, paramLottieAnimationView.q());
  }
  
  static void b(LottieAnimationView paramLottieAnimationView, long paramLong) {
    ValueAnimator valueAnimator = ValueAnimator.ofFloat(new float[] { 1.0F, 0.0F }).setDuration(paramLong);
    valueAnimator.addUpdateListener(new fxb(paramLottieAnimationView));
    valueAnimator.start();
  }
  
  static void c(LottieAnimationView paramLottieAnimationView) {
    paramLottieAnimationView.i();
    b(paramLottieAnimationView, 1L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fwz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */