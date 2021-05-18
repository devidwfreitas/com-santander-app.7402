import android.annotation.SuppressLint;
import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public class mhh extends Scroller {
  private double a = 1.0D;
  
  public mhh(Context paramContext) {
    super(paramContext);
  }
  
  public mhh(Context paramContext, Interpolator paramInterpolator) {
    super(paramContext, paramInterpolator);
  }
  
  @SuppressLint({"NewApi"})
  public mhh(Context paramContext, Interpolator paramInterpolator, boolean paramBoolean) {
    super(paramContext, paramInterpolator, paramBoolean);
  }
  
  public void a(double paramDouble) {
    this.a = paramDouble;
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    super.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, (int)(paramInt5 * this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */