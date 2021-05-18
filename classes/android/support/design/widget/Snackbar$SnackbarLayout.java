package android.support.design.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class Snackbar$SnackbarLayout extends BaseTransientBottomBar$SnackbarBaseLayout {
  public Snackbar$SnackbarLayout(Context paramContext) {
    super(paramContext);
  }
  
  public Snackbar$SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    paramInt2 = getChildCount();
    int i = getMeasuredWidth();
    int j = getPaddingLeft();
    int k = getPaddingRight();
    for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++) {
      View view = getChildAt(paramInt1);
      if ((view.getLayoutParams()).width == -1)
        view.measure(View.MeasureSpec.makeMeasureSpec(i - j - k, 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824)); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\Snackbar$SnackbarLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */