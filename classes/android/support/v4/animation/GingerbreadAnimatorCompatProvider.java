package android.support.v4.animation;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;

@TargetApi(9)
@RequiresApi(9)
class GingerbreadAnimatorCompatProvider implements AnimatorProvider {
  public void clearInterpolator(View paramView) {}
  
  public ValueAnimatorCompat emptyValueAnimator() {
    return new GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\animation\GingerbreadAnimatorCompatProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */