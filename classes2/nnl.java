import android.view.animation.Interpolator;
import me.relex.circleindicator.CircleIndicator;

public class nnl implements Interpolator {
  private nnl(CircleIndicator paramCircleIndicator) {}
  
  public float getInterpolation(float paramFloat) {
    return Math.abs(1.0F - paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nnl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */