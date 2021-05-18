package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class CollapsingToolbarLayout$OffsetUpdateListener implements AppBarLayout$OnOffsetChangedListener {
  public void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt) {
    byte b;
    CollapsingToolbarLayout.this.mCurrentOffset = paramInt;
    if (CollapsingToolbarLayout.this.mLastInsets != null) {
      b = CollapsingToolbarLayout.this.mLastInsets.getSystemWindowInsetTop();
    } else {
      b = 0;
    } 
    int j = CollapsingToolbarLayout.this.getChildCount();
    int i = 0;
    while (i < j) {
      float f;
      View view = CollapsingToolbarLayout.this.getChildAt(i);
      CollapsingToolbarLayout$LayoutParams collapsingToolbarLayout$LayoutParams = (CollapsingToolbarLayout$LayoutParams)view.getLayoutParams();
      ViewOffsetHelper viewOffsetHelper = CollapsingToolbarLayout.getViewOffsetHelper(view);
      switch (collapsingToolbarLayout$LayoutParams.mCollapseMode) {
        case 1:
          viewOffsetHelper.setTopAndBottomOffset(MathUtils.constrain(-paramInt, 0, CollapsingToolbarLayout.this.getMaxOffsetForPinChild(view)));
          i++;
          break;
        case 2:
          f = -paramInt;
          viewOffsetHelper.setTopAndBottomOffset(Math.round(collapsingToolbarLayout$LayoutParams.mParallaxMult * f));
          i++;
          break;
      } 
    } 
    CollapsingToolbarLayout.this.updateScrimVisibility();
    if (CollapsingToolbarLayout.this.mStatusBarScrim != null && b)
      ViewCompat.postInvalidateOnAnimation((View)CollapsingToolbarLayout.this); 
    i = CollapsingToolbarLayout.this.getHeight();
    j = ViewCompat.getMinimumHeight((View)CollapsingToolbarLayout.this);
    CollapsingToolbarLayout.this.mCollapsingTextHelper.setExpansionFraction(Math.abs(paramInt) / (i - j - b));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CollapsingToolbarLayout$OffsetUpdateListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */