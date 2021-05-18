import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class mgd extends Animation {
  protected final int a;
  
  protected final View b;
  
  protected float c;
  
  public mgd(View paramView, int paramInt1, int paramInt2) {
    this.b = paramView;
    this.a = paramInt1;
    this.c = (paramInt2 - paramInt1);
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation) {
    (this.b.getLayoutParams()).height = (int)(this.a + this.c * paramFloat);
    this.b.requestLayout();
  }
  
  public boolean willChangeBounds() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */