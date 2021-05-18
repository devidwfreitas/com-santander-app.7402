import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class mhp extends Animation {
  mhp(View paramView, int paramInt) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation) {
    if (paramFloat == 1.0F) {
      this.a.setVisibility(8);
      return;
    } 
    (this.a.getLayoutParams()).height = this.b - (int)(this.b * paramFloat);
    this.a.requestLayout();
  }
  
  public boolean willChangeBounds() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */