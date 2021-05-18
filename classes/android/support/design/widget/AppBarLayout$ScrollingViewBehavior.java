package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.design.R;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

public class AppBarLayout$ScrollingViewBehavior extends HeaderScrollingViewBehavior {
  public AppBarLayout$ScrollingViewBehavior() {}
  
  public AppBarLayout$ScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ScrollingViewBehavior_Layout);
    setOverlayTop(typedArray.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
    typedArray.recycle();
  }
  
  private static int getAppBarLayoutOffset(AppBarLayout paramAppBarLayout) {
    CoordinatorLayout$Behavior coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)paramAppBarLayout.getLayoutParams()).getBehavior();
    return (coordinatorLayout$Behavior instanceof AppBarLayout$Behavior) ? ((AppBarLayout$Behavior)coordinatorLayout$Behavior).getTopBottomOffsetForScrollingSibling() : 0;
  }
  
  private void offsetChildAsNeeded(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2) {
    CoordinatorLayout$Behavior coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)paramView2.getLayoutParams()).getBehavior();
    if (coordinatorLayout$Behavior instanceof AppBarLayout$Behavior) {
      coordinatorLayout$Behavior = coordinatorLayout$Behavior;
      int i = paramView2.getBottom();
      int j = paramView1.getTop();
      ViewCompat.offsetTopAndBottom(paramView1, AppBarLayout$Behavior.access$000((AppBarLayout$Behavior)coordinatorLayout$Behavior) + i - j + getVerticalLayoutGap() - getOverlapPixelsForOffset(paramView2));
    } 
  }
  
  AppBarLayout findFirstDependency(List<View> paramList) {
    int j = paramList.size();
    for (int i = 0; i < j; i++) {
      View view = paramList.get(i);
      if (view instanceof AppBarLayout)
        return (AppBarLayout)view; 
    } 
    return null;
  }
  
  float getOverlapRatioForOffset(View paramView) {
    if (paramView instanceof AppBarLayout) {
      AppBarLayout appBarLayout = (AppBarLayout)paramView;
      int j = appBarLayout.getTotalScrollRange();
      int k = appBarLayout.getDownNestedPreScrollRange();
      int i = getAppBarLayoutOffset(appBarLayout);
      if (k == 0 || j + i > k) {
        j -= k;
        if (j != 0)
          return 1.0F + i / j; 
      } 
    } 
    return 0.0F;
  }
  
  int getScrollRange(View paramView) {
    return (paramView instanceof AppBarLayout) ? ((AppBarLayout)paramView).getTotalScrollRange() : super.getScrollRange(paramView);
  }
  
  public boolean layoutDependsOn(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2) {
    return paramView2 instanceof AppBarLayout;
  }
  
  public boolean onDependentViewChanged(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2) {
    offsetChildAsNeeded(paramCoordinatorLayout, paramView1, paramView2);
    return false;
  }
  
  public boolean onRequestChildRectangleOnScreen(CoordinatorLayout paramCoordinatorLayout, View paramView, Rect paramRect, boolean paramBoolean) {
    AppBarLayout appBarLayout = findFirstDependency(paramCoordinatorLayout.getDependencies(paramView));
    if (appBarLayout != null) {
      paramRect.offset(paramView.getLeft(), paramView.getTop());
      Rect rect = this.mTempRect1;
      rect.set(0, 0, paramCoordinatorLayout.getWidth(), paramCoordinatorLayout.getHeight());
      if (!rect.contains(paramRect)) {
        if (!paramBoolean) {
          paramBoolean = true;
          appBarLayout.setExpanded(false, paramBoolean);
          return true;
        } 
        paramBoolean = false;
        appBarLayout.setExpanded(false, paramBoolean);
        return true;
      } 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\AppBarLayout$ScrollingViewBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */