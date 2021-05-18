import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearSmoothScroller;
import com.santander.app.seguros.utils.SmoothScrollerLinearLayoutManager;

public class mhx extends LinearSmoothScroller {
  public mhx(SmoothScrollerLinearLayoutManager paramSmoothScrollerLinearLayoutManager, Context paramContext) {
    super(paramContext);
  }
  
  public PointF computeScrollVectorForPosition(int paramInt) {
    return this.a.computeScrollVectorForPosition(paramInt);
  }
  
  protected int getVerticalSnapPreference() {
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */