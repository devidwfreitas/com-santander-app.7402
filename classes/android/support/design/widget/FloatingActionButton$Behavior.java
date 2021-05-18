package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class FloatingActionButton$Behavior extends CoordinatorLayout$Behavior<FloatingActionButton> {
  private static final boolean AUTO_HIDE_DEFAULT = true;
  
  private boolean mAutoHideEnabled;
  
  private FloatingActionButton$OnVisibilityChangedListener mInternalAutoHideListener;
  
  private Rect mTmpRect;
  
  public FloatingActionButton$Behavior() {
    this.mAutoHideEnabled = true;
  }
  
  public FloatingActionButton$Behavior(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
    this.mAutoHideEnabled = typedArray.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
    typedArray.recycle();
  }
  
  private static boolean isBottomSheet(@NonNull View paramView) {
    ViewGroup.LayoutParams layoutParams = paramView.getLayoutParams();
    return (layoutParams instanceof CoordinatorLayout$LayoutParams) ? (((CoordinatorLayout$LayoutParams)layoutParams).getBehavior() instanceof BottomSheetBehavior) : false;
  }
  
  private void offsetIfNeeded(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton) {
    int i = 0;
    Rect rect = paramFloatingActionButton.mShadowPadding;
    if (rect != null && rect.centerX() > 0 && rect.centerY() > 0) {
      boolean bool;
      CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramFloatingActionButton.getLayoutParams();
      if (paramFloatingActionButton.getRight() >= paramCoordinatorLayout.getWidth() - coordinatorLayout$LayoutParams.rightMargin) {
        bool = rect.right;
      } else if (paramFloatingActionButton.getLeft() <= coordinatorLayout$LayoutParams.leftMargin) {
        bool = -rect.left;
      } else {
        bool = false;
      } 
      if (paramFloatingActionButton.getBottom() >= paramCoordinatorLayout.getHeight() - coordinatorLayout$LayoutParams.bottomMargin) {
        i = rect.bottom;
      } else if (paramFloatingActionButton.getTop() <= coordinatorLayout$LayoutParams.topMargin) {
        i = -rect.top;
      } 
      if (i != 0)
        ViewCompat.offsetTopAndBottom((View)paramFloatingActionButton, i); 
      if (bool)
        ViewCompat.offsetLeftAndRight((View)paramFloatingActionButton, bool); 
    } 
  }
  
  private boolean shouldUpdateVisibility(View paramView, FloatingActionButton paramFloatingActionButton) {
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramFloatingActionButton.getLayoutParams();
    return !this.mAutoHideEnabled ? false : ((coordinatorLayout$LayoutParams.getAnchorId() != paramView.getId()) ? false : (!(paramFloatingActionButton.getUserSetVisibility() != 0)));
  }
  
  private boolean updateFabVisibilityForAppBarLayout(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton) {
    if (!shouldUpdateVisibility((View)paramAppBarLayout, paramFloatingActionButton))
      return false; 
    if (this.mTmpRect == null)
      this.mTmpRect = new Rect(); 
    Rect rect = this.mTmpRect;
    ViewGroupUtils.getDescendantRect(paramCoordinatorLayout, (View)paramAppBarLayout, rect);
    if (rect.bottom <= paramAppBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
      paramFloatingActionButton.hide(this.mInternalAutoHideListener, false);
      return true;
    } 
    paramFloatingActionButton.show(this.mInternalAutoHideListener, false);
    return true;
  }
  
  private boolean updateFabVisibilityForBottomSheet(View paramView, FloatingActionButton paramFloatingActionButton) {
    if (!shouldUpdateVisibility(paramView, paramFloatingActionButton))
      return false; 
    CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)paramFloatingActionButton.getLayoutParams();
    int i = paramView.getTop();
    int j = paramFloatingActionButton.getHeight() / 2;
    if (i < coordinatorLayout$LayoutParams.topMargin + j) {
      paramFloatingActionButton.hide(this.mInternalAutoHideListener, false);
      return true;
    } 
    paramFloatingActionButton.show(this.mInternalAutoHideListener, false);
    return true;
  }
  
  public boolean getInsetDodgeRect(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull FloatingActionButton paramFloatingActionButton, @NonNull Rect paramRect) {
    Rect rect = paramFloatingActionButton.mShadowPadding;
    paramRect.set(paramFloatingActionButton.getLeft() + rect.left, paramFloatingActionButton.getTop() + rect.top, paramFloatingActionButton.getRight() - rect.right, paramFloatingActionButton.getBottom() - rect.bottom);
    return true;
  }
  
  public boolean isAutoHideEnabled() {
    return this.mAutoHideEnabled;
  }
  
  public void onAttachedToLayoutParams(@NonNull CoordinatorLayout$LayoutParams paramCoordinatorLayout$LayoutParams) {
    if (paramCoordinatorLayout$LayoutParams.dodgeInsetEdges == 0)
      paramCoordinatorLayout$LayoutParams.dodgeInsetEdges = 80; 
  }
  
  public boolean onDependentViewChanged(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView) {
    if (paramView instanceof AppBarLayout) {
      updateFabVisibilityForAppBarLayout(paramCoordinatorLayout, (AppBarLayout)paramView, paramFloatingActionButton);
      return false;
    } 
    if (isBottomSheet(paramView))
      updateFabVisibilityForBottomSheet(paramView, paramFloatingActionButton); 
    return false;
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, int paramInt) {
    List<View> list = paramCoordinatorLayout.getDependencies((View)paramFloatingActionButton);
    int j = list.size();
    int i = 0;
    while (true) {
      if (i < j) {
        View view = list.get(i);
        if ((view instanceof AppBarLayout) ? updateFabVisibilityForAppBarLayout(paramCoordinatorLayout, (AppBarLayout)view, paramFloatingActionButton) : (isBottomSheet(view) && updateFabVisibilityForBottomSheet(view, paramFloatingActionButton))) {
          i++;
          continue;
        } 
      } 
      paramCoordinatorLayout.onLayoutChild((View)paramFloatingActionButton, paramInt);
      offsetIfNeeded(paramCoordinatorLayout, paramFloatingActionButton);
      return true;
    } 
  }
  
  public void setAutoHideEnabled(boolean paramBoolean) {
    this.mAutoHideEnabled = paramBoolean;
  }
  
  @VisibleForTesting
  void setInternalAutoHideListener(FloatingActionButton$OnVisibilityChangedListener paramFloatingActionButton$OnVisibilityChangedListener) {
    this.mInternalAutoHideListener = paramFloatingActionButton$OnVisibilityChangedListener;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButton$Behavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */