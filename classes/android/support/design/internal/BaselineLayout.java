package android.support.design.internal;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.ViewUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class BaselineLayout extends ViewGroup {
  private int mBaseline = -1;
  
  public BaselineLayout(Context paramContext) {
    super(paramContext, null, 0);
  }
  
  public BaselineLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet, 0);
  }
  
  public BaselineLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public int getBaseline() {
    return this.mBaseline;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int j = getChildCount();
    int k = getPaddingLeft();
    int m = getPaddingRight();
    int i = getPaddingTop();
    for (paramInt2 = 0; paramInt2 < j; paramInt2++) {
      View view = getChildAt(paramInt2);
      if (view.getVisibility() != 8) {
        int n = view.getMeasuredWidth();
        int i1 = view.getMeasuredHeight();
        int i2 = k + (paramInt3 - paramInt1 - m - k - n) / 2;
        if (this.mBaseline != -1 && view.getBaseline() != -1) {
          paramInt4 = this.mBaseline + i - view.getBaseline();
        } else {
          paramInt4 = i;
        } 
        view.layout(i2, paramInt4, n + i2, i1 + paramInt4);
      } 
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int i3 = getChildCount();
    int i1 = 0;
    int k = 0;
    int j = -1;
    int m = 0;
    int i2 = 0;
    int i = -1;
    while (i1 < i3) {
      View view = getChildAt(i1);
      if (view.getVisibility() == 8) {
        int i5 = k;
        k = i;
        i = i5;
      } else {
        measureChild(view, paramInt1, paramInt2);
        int i7 = view.getBaseline();
        int i5 = i;
        int i6 = j;
        if (i7 != -1) {
          i6 = Math.max(j, i7);
          i5 = Math.max(i, view.getMeasuredHeight() - i7);
        } 
        i2 = Math.max(i2, view.getMeasuredWidth());
        m = Math.max(m, view.getMeasuredHeight());
        i = ViewUtils.combineMeasuredStates(k, ViewCompat.getMeasuredState(view));
        j = i6;
        k = i5;
      } 
      i1++;
      int i4 = i;
      i = k;
      k = i4;
    } 
    int n = m;
    if (j != -1) {
      n = Math.max(m, Math.max(i, getPaddingBottom()) + j);
      this.mBaseline = j;
    } 
    i = Math.max(n, getSuggestedMinimumHeight());
    setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(i2, getSuggestedMinimumWidth()), paramInt1, k), ViewCompat.resolveSizeAndState(i, paramInt2, k << 16));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\BaselineLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */