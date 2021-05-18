package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ConfigurationHelper;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ButtonBarLayout extends LinearLayout {
  private static final int ALLOW_STACKING_MIN_HEIGHT_DP = 320;
  
  private static final int PEEK_BUTTON_DP = 16;
  
  private boolean mAllowStacking;
  
  private int mLastWidthSize;
  
  public ButtonBarLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    boolean bool;
    this.mLastWidthSize = -1;
    if (ConfigurationHelper.getScreenHeightDp(getResources()) >= 320) {
      bool = true;
    } else {
      bool = false;
    } 
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ButtonBarLayout);
    this.mAllowStacking = typedArray.getBoolean(R.styleable.ButtonBarLayout_allowStacking, bool);
    typedArray.recycle();
  }
  
  private int getNextVisibleChildIndex(int paramInt) {
    int i = getChildCount();
    while (paramInt < i) {
      if (getChildAt(paramInt).getVisibility() == 0)
        return paramInt; 
      paramInt++;
    } 
    return -1;
  }
  
  private boolean isStacked() {
    return (getOrientation() == 1);
  }
  
  private void setStacked(boolean paramBoolean) {
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    } 
    setOrientation(i);
    if (paramBoolean) {
      i = 5;
    } else {
      i = 80;
    } 
    setGravity(i);
    View view = findViewById(R.id.spacer);
    if (view != null) {
      if (paramBoolean) {
        i = 8;
      } else {
        i = 4;
      } 
      view.setVisibility(i);
    } 
    int i;
    for (i = getChildCount() - 2; i >= 0; i--)
      bringChildToFront(getChildAt(i)); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int i;
    int j;
    int m = View.MeasureSpec.getSize(paramInt1);
    if (this.mAllowStacking) {
      if (m > this.mLastWidthSize && isStacked())
        setStacked(false); 
      this.mLastWidthSize = m;
    } 
    if (!isStacked() && View.MeasureSpec.getMode(paramInt1) == 1073741824) {
      i = View.MeasureSpec.makeMeasureSpec(m, -2147483648);
      j = 1;
    } else {
      i = paramInt1;
      j = 0;
    } 
    super.onMeasure(i, paramInt2);
    int k = j;
    if (this.mAllowStacking) {
      k = j;
      if (!isStacked()) {
        if (Build.VERSION.SDK_INT >= 11) {
          if ((ViewCompat.getMeasuredWidthAndState((View)this) & 0xFF000000) == 16777216) {
            i = 1;
          } else {
            i = 0;
          } 
        } else {
          int n = getChildCount();
          i = 0;
          k = 0;
          while (i < n) {
            k += getChildAt(i).getMeasuredWidth();
            i++;
          } 
          if (getPaddingLeft() + k + getPaddingRight() > m) {
            i = 1;
          } else {
            i = 0;
          } 
        } 
        k = j;
        if (i != 0) {
          setStacked(true);
          k = 1;
        } 
      } 
    } 
    if (k != 0)
      super.onMeasure(paramInt1, paramInt2); 
    paramInt1 = getNextVisibleChildIndex(0);
    if (paramInt1 >= 0) {
      View view = getChildAt(paramInt1);
      LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)view.getLayoutParams();
      paramInt2 = getPaddingTop();
      i = view.getMeasuredHeight();
      j = layoutParams.topMargin;
      paramInt2 = layoutParams.bottomMargin + i + paramInt2 + j + 0;
      if (isStacked()) {
        i = getNextVisibleChildIndex(paramInt1 + 1);
        paramInt1 = paramInt2;
        if (i >= 0)
          paramInt1 = (int)(paramInt2 + getChildAt(i).getPaddingTop() + 16.0F * (getResources().getDisplayMetrics()).density); 
      } else {
        paramInt1 = paramInt2 + getPaddingBottom();
      } 
    } else {
      paramInt1 = 0;
    } 
    if (ViewCompat.getMinimumHeight((View)this) != paramInt1)
      setMinimumHeight(paramInt1); 
  }
  
  public void setAllowStacking(boolean paramBoolean) {
    if (this.mAllowStacking != paramBoolean) {
      this.mAllowStacking = paramBoolean;
      if (!this.mAllowStacking && getOrientation() == 1)
        setStacked(false); 
      requestLayout();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ButtonBarLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */