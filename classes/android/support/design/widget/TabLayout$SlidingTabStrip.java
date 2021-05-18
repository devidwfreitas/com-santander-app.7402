package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.widget.LinearLayout;

class TabLayout$SlidingTabStrip extends LinearLayout {
  private ValueAnimatorCompat mIndicatorAnimator;
  
  private int mIndicatorLeft = -1;
  
  private int mIndicatorRight = -1;
  
  private int mSelectedIndicatorHeight;
  
  private final Paint mSelectedIndicatorPaint;
  
  int mSelectedPosition = -1;
  
  float mSelectionOffset;
  
  TabLayout$SlidingTabStrip(Context paramContext) {
    super(paramContext);
    setWillNotDraw(false);
    this.mSelectedIndicatorPaint = new Paint();
  }
  
  private void updateIndicatorPosition() {
    byte b1;
    byte b2;
    View view = getChildAt(this.mSelectedPosition);
    if (view != null && view.getWidth() > 0) {
      int j = view.getLeft();
      int i = view.getRight();
      b1 = i;
      b2 = j;
      if (this.mSelectionOffset > 0.0F) {
        b1 = i;
        b2 = j;
        if (this.mSelectedPosition < getChildCount() - 1) {
          view = getChildAt(this.mSelectedPosition + 1);
          float f1 = this.mSelectionOffset;
          float f2 = view.getLeft();
          float f3 = this.mSelectionOffset;
          b2 = (int)(j * (1.0F - f3) + f1 * f2);
          f1 = this.mSelectionOffset;
          f2 = view.getRight();
          f3 = this.mSelectionOffset;
          b1 = (int)(i * (1.0F - f3) + f2 * f1);
        } 
      } 
    } else {
      b1 = -1;
      b2 = -1;
    } 
    setIndicatorPosition(b2, b1);
  }
  
  void animateIndicatorToPosition(int paramInt1, int paramInt2) {
    int i;
    int j;
    if (this.mIndicatorAnimator != null && this.mIndicatorAnimator.isRunning())
      this.mIndicatorAnimator.cancel(); 
    if (ViewCompat.getLayoutDirection((View)this) == 1) {
      i = 1;
    } else {
      i = 0;
    } 
    View view = getChildAt(paramInt1);
    if (view == null) {
      updateIndicatorPosition();
      return;
    } 
    int k = view.getLeft();
    int m = view.getRight();
    if (Math.abs(paramInt1 - this.mSelectedPosition) <= 1) {
      i = this.mIndicatorLeft;
      j = this.mIndicatorRight;
    } else {
      j = TabLayout.this.dpToPx(24);
      if (paramInt1 < this.mSelectedPosition) {
        if (i != 0) {
          j = k - j;
          i = j;
        } else {
          j = m + j;
          i = j;
        } 
      } else if (i != 0) {
        j = m + j;
        i = j;
      } else {
        j = k - j;
        i = j;
      } 
    } 
    if (i != k || j != m) {
      ValueAnimatorCompat valueAnimatorCompat = ViewUtils.createAnimator();
      this.mIndicatorAnimator = valueAnimatorCompat;
      valueAnimatorCompat.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
      valueAnimatorCompat.setDuration(paramInt2);
      valueAnimatorCompat.setFloatValues(0.0F, 1.0F);
      valueAnimatorCompat.addUpdateListener(new TabLayout$SlidingTabStrip$1(this, i, k, j, m));
      valueAnimatorCompat.addListener(new TabLayout$SlidingTabStrip$2(this, paramInt1));
      valueAnimatorCompat.start();
      return;
    } 
  }
  
  boolean childrenNeedLayout() {
    boolean bool = false;
    int j = getChildCount();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (getChildAt(i).getWidth() <= 0)
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public void draw(Canvas paramCanvas) {
    super.draw(paramCanvas);
    if (this.mIndicatorLeft >= 0 && this.mIndicatorRight > this.mIndicatorLeft)
      paramCanvas.drawRect(this.mIndicatorLeft, (getHeight() - this.mSelectedIndicatorHeight), this.mIndicatorRight, getHeight(), this.mSelectedIndicatorPaint); 
  }
  
  float getIndicatorPosition() {
    return this.mSelectedPosition + this.mSelectionOffset;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mIndicatorAnimator != null && this.mIndicatorAnimator.isRunning()) {
      this.mIndicatorAnimator.cancel();
      long l = this.mIndicatorAnimator.getDuration();
      paramInt1 = this.mSelectedPosition;
      float f = this.mIndicatorAnimator.getAnimatedFraction();
      animateIndicatorToPosition(paramInt1, Math.round((float)l * (1.0F - f)));
      return;
    } 
    updateIndicatorPosition();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int i = 0;
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824 && TabLayout.this.mMode == 1 && TabLayout.this.mTabGravity == 1) {
      int k = getChildCount();
      int j = 0;
      byte b = 0;
      while (true) {
        if (j < k) {
          byte b1;
          View view = getChildAt(j);
          if (view.getVisibility() == 0) {
            b1 = Math.max(b, view.getMeasuredWidth());
          } else {
            b1 = b;
          } 
          j++;
          b = b1;
          continue;
        } 
        if (b) {
          int m = TabLayout.this.dpToPx(16);
          if (b * k <= getMeasuredWidth() - m * 2) {
            j = 0;
            m = i;
            while (true) {
              i = m;
              if (j < k) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)getChildAt(j).getLayoutParams();
                if (layoutParams.width != b || layoutParams.weight != 0.0F) {
                  layoutParams.width = b;
                  layoutParams.weight = 0.0F;
                  m = 1;
                } 
                j++;
                continue;
              } 
              break;
            } 
          } else {
            TabLayout.this.mTabGravity = 0;
            TabLayout.this.updateTabViews(false);
            i = 1;
          } 
          if (i != 0) {
            super.onMeasure(paramInt1, paramInt2);
            return;
          } 
        } 
        return;
      } 
    } 
  }
  
  void setIndicatorPosition(int paramInt1, int paramInt2) {
    if (paramInt1 != this.mIndicatorLeft || paramInt2 != this.mIndicatorRight) {
      this.mIndicatorLeft = paramInt1;
      this.mIndicatorRight = paramInt2;
      ViewCompat.postInvalidateOnAnimation((View)this);
    } 
  }
  
  void setIndicatorPositionFromTabPosition(int paramInt, float paramFloat) {
    if (this.mIndicatorAnimator != null && this.mIndicatorAnimator.isRunning())
      this.mIndicatorAnimator.cancel(); 
    this.mSelectedPosition = paramInt;
    this.mSelectionOffset = paramFloat;
    updateIndicatorPosition();
  }
  
  void setSelectedIndicatorColor(int paramInt) {
    if (this.mSelectedIndicatorPaint.getColor() != paramInt) {
      this.mSelectedIndicatorPaint.setColor(paramInt);
      ViewCompat.postInvalidateOnAnimation((View)this);
    } 
  }
  
  void setSelectedIndicatorHeight(int paramInt) {
    if (this.mSelectedIndicatorHeight != paramInt) {
      this.mSelectedIndicatorHeight = paramInt;
      ViewCompat.postInvalidateOnAnimation((View)this);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$SlidingTabStrip.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */