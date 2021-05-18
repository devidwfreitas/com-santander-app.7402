import com.airbnb.lottie.LottieAnimationView;
import java.lang.ref.WeakReference;

public class awo implements axg {
  public awo(LottieAnimationView paramLottieAnimationView, awp paramawp, String paramString) {}
  
  public void a(awr paramawr) {
    if (this.a == awp.Strong) {
      LottieAnimationView.s().put(this.b, paramawr);
    } else if (this.a == awp.Weak) {
      LottieAnimationView.t().put(this.b, new WeakReference<awr>(paramawr));
    } 
    this.c.setComposition(paramawr);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */