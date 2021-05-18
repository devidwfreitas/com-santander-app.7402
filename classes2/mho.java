import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class mho extends Animation {
  mho(View paramView, int paramInt) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation) {
    int i;
    ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
    if (paramFloat == 1.0F) {
      i = -2;
    } else {
      i = (int)(this.b * paramFloat);
    } 
    layoutParams.height = i;
    this.a.requestLayout();
  }
  
  public boolean willChangeBounds() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */