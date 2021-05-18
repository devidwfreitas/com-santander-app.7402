import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class kzo extends Animation {
  public static final int a = 0;
  
  public static final int b = 0;
  
  private final int c;
  
  private final int d;
  
  private final View e;
  
  private final int f;
  
  public kzo(View paramView, int paramInt1, int paramInt2, int paramInt3) {
    this.e = paramView;
    this.c = paramInt1;
    this.d = paramInt2;
    this.f = paramInt3;
    setDuration(400L);
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation) {
    int i;
    if (this.f == 0) {
      i = (int)(this.c + this.d * paramFloat);
    } else {
      i = (int)(this.d - this.c * paramFloat);
    } 
    (this.e.getLayoutParams()).height = i;
    this.e.requestLayout();
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean willChangeBounds() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */