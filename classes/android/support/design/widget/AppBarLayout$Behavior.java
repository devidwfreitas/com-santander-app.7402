package android.support.design.widget;

import android.content.Context;
import android.os.Build;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.List;

public class AppBarLayout$Behavior extends HeaderBehavior<AppBarLayout> {
  private static final int INVALID_POSITION = -1;
  
  private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
  
  private WeakReference<View> mLastNestedScrollingChildRef;
  
  private ValueAnimatorCompat mOffsetAnimator;
  
  private int mOffsetDelta;
  
  private int mOffsetToChildIndexOnLayout = -1;
  
  private boolean mOffsetToChildIndexOnLayoutIsMinHeight;
  
  private float mOffsetToChildIndexOnLayoutPerc;
  
  private AppBarLayout$Behavior$DragCallback mOnDragCallback;
  
  private boolean mSkipNestedPreScroll;
  
  private boolean mWasNestedFlung;
  
  public AppBarLayout$Behavior() {}
  
  public AppBarLayout$Behavior(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  private void animateOffsetTo(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt, float paramFloat) {
    int i = Math.abs(getTopBottomOffsetForScrollingSibling() - paramInt);
    paramFloat = Math.abs(paramFloat);
    if (paramFloat > 0.0F) {
      i = Math.round(i / paramFloat * 1000.0F) * 3;
    } else {
      i = (int)((i / paramAppBarLayout.getHeight() + 1.0F) * 150.0F);
    } 
    animateOffsetWithDuration(paramCoordinatorLayout, paramAppBarLayout, paramInt, i);
  }
  
  private void animateOffsetWithDuration(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2) {
    int i = getTopBottomOffsetForScrollingSibling();
    if (i == paramInt1) {
      if (this.mOffsetAnimator != null && this.mOffsetAnimator.isRunning())
        this.mOffsetAnimator.cancel(); 
      return;
    } 
    if (this.mOffsetAnimator == null) {
      this.mOffsetAnimator = ViewUtils.createAnimator();
      this.mOffsetAnimator.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
      this.mOffsetAnimator.addUpdateListener(new AppBarLayout$Behavior$1(this, paramCoordinatorLayout, paramAppBarLayout));
    } else {
      this.mOffsetAnimator.cancel();
    } 
    this.mOffsetAnimator.setDuration(Math.min(paramInt2, 600));
    this.mOffsetAnimator.setIntValues(i, paramInt1);
    this.mOffsetAnimator.start();
  }
  
  private static boolean checkFlag(int paramInt1, int paramInt2) {
    return ((paramInt1 & paramInt2) == paramInt2);
  }
  
  private static View getAppBarChildOnOffset(AppBarLayout paramAppBarLayout, int paramInt) {
    int i = Math.abs(paramInt);
    int j = paramAppBarLayout.getChildCount();
    for (paramInt = 0; paramInt < j; paramInt++) {
      View view = paramAppBarLayout.getChildAt(paramInt);
      if (i >= view.getTop() && i <= view.getBottom())
        return view; 
    } 
    return null;
  }
  
  private int getChildIndexOnOffset(AppBarLayout paramAppBarLayout, int paramInt) {
    int i = 0;
    int j = paramAppBarLayout.getChildCount();
    while (i < j) {
      View view = paramAppBarLayout.getChildAt(i);
      if (view.getTop() <= -paramInt && view.getBottom() >= -paramInt)
        return i; 
      i++;
    } 
    return -1;
  }
  
  private int interpolateOffset(AppBarLayout paramAppBarLayout, int paramInt) {
    int j = Math.abs(paramInt);
    int k = paramAppBarLayout.getChildCount();
    for (int i = 0;; i++) {
      int m = paramInt;
      if (i < k) {
        View view = paramAppBarLayout.getChildAt(i);
        AppBarLayout$LayoutParams appBarLayout$LayoutParams = (AppBarLayout$LayoutParams)view.getLayoutParams();
        Interpolator interpolator = appBarLayout$LayoutParams.getScrollInterpolator();
        if (j >= view.getTop() && j <= view.getBottom()) {
          m = paramInt;
          if (interpolator != null) {
            k = appBarLayout$LayoutParams.getScrollFlags();
            if ((k & 0x1) != 0) {
              m = view.getHeight();
              i = appBarLayout$LayoutParams.topMargin;
              i = appBarLayout$LayoutParams.bottomMargin + m + i + 0;
              m = i;
              if ((k & 0x2) != 0)
                m = i - ViewCompat.getMinimumHeight(view); 
            } else {
              m = 0;
            } 
            i = m;
            if (ViewCompat.getFitsSystemWindows(view))
              i = m - paramAppBarLayout.getTopInset(); 
            m = paramInt;
            if (i > 0) {
              m = view.getTop();
              float f = i;
              m = Math.round(interpolator.getInterpolation((j - m) / i) * f);
              m = Integer.signum(paramInt) * (m + view.getTop());
            } 
          } 
          return m;
        } 
      } else {
        return m;
      } 
    } 
  }
  
  private boolean shouldJumpElevationState(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout) {
    List<View> list = paramCoordinatorLayout.getDependents((View)paramAppBarLayout);
    int j = list.size();
    for (int i = 0; i < j; i++) {
      CoordinatorLayout$Behavior coordinatorLayout$Behavior = ((CoordinatorLayout$LayoutParams)((View)list.get(i)).getLayoutParams()).getBehavior();
      if (coordinatorLayout$Behavior instanceof AppBarLayout$ScrollingViewBehavior)
        return (((AppBarLayout$ScrollingViewBehavior)coordinatorLayout$Behavior).getOverlayTop() != 0); 
    } 
    return false;
  }
  
  private void snapToChildIfNeeded(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout) {
    int i = getTopBottomOffsetForScrollingSibling();
    int j = getChildIndexOnOffset(paramAppBarLayout, i);
    if (j >= 0) {
      View view = paramAppBarLayout.getChildAt(j);
      int k = ((AppBarLayout$LayoutParams)view.getLayoutParams()).getScrollFlags();
      if ((k & 0x11) == 17) {
        int i1 = -view.getTop();
        int m = -view.getBottom();
        int n = m;
        if (j == paramAppBarLayout.getChildCount() - 1)
          n = m + paramAppBarLayout.getTopInset(); 
        if (checkFlag(k, 2)) {
          n += ViewCompat.getMinimumHeight(view);
          m = i1;
        } else if (checkFlag(k, 5)) {
          k = ViewCompat.getMinimumHeight(view) + n;
          m = k;
          if (i >= k) {
            n = k;
            m = i1;
          } 
        } else {
          m = i1;
        } 
        if (i >= (n + m) / 2)
          n = m; 
        animateOffsetTo(paramCoordinatorLayout, paramAppBarLayout, MathUtils.constrain(n, -paramAppBarLayout.getTotalScrollRange(), 0), 0.0F);
      } 
    } 
  }
  
  private void updateAppBarLayoutDrawableState(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, boolean paramBoolean) {
    boolean bool1 = true;
    boolean bool2 = false;
    View view = getAppBarChildOnOffset(paramAppBarLayout, paramInt1);
    if (view != null) {
      int i = ((AppBarLayout$LayoutParams)view.getLayoutParams()).getScrollFlags();
      boolean bool = bool2;
      if ((i & 0x1) != 0) {
        int j = ViewCompat.getMinimumHeight(view);
        if (paramInt2 > 0 && (i & 0xC) != 0) {
          if (-paramInt1 >= view.getBottom() - j - paramAppBarLayout.getTopInset()) {
            bool = true;
          } else {
            bool = false;
          } 
        } else {
          bool = bool2;
          if ((i & 0x2) != 0)
            if (-paramInt1 >= view.getBottom() - j - paramAppBarLayout.getTopInset()) {
              bool = bool1;
            } else {
              bool = false;
            }  
        } 
      } 
      bool = paramAppBarLayout.setCollapsedState(bool);
      if (Build.VERSION.SDK_INT >= 11 && (paramBoolean || (bool && shouldJumpElevationState(paramCoordinatorLayout, paramAppBarLayout))))
        paramAppBarLayout.jumpDrawablesToCurrentState(); 
    } 
  }
  
  boolean canDragView(AppBarLayout paramAppBarLayout) {
    if (this.mOnDragCallback != null)
      return this.mOnDragCallback.canDrag(paramAppBarLayout); 
    if (this.mLastNestedScrollingChildRef != null) {
      View view = this.mLastNestedScrollingChildRef.get();
      return (view != null && view.isShown() && !ViewCompat.canScrollVertically(view, -1));
    } 
    return true;
  }
  
  int getMaxDragOffset(AppBarLayout paramAppBarLayout) {
    return -paramAppBarLayout.getDownNestedScrollRange();
  }
  
  int getScrollRangeForDragFling(AppBarLayout paramAppBarLayout) {
    return paramAppBarLayout.getTotalScrollRange();
  }
  
  int getTopBottomOffsetForScrollingSibling() {
    return getTopAndBottomOffset() + this.mOffsetDelta;
  }
  
  @VisibleForTesting
  boolean isOffsetAnimatorRunning() {
    return (this.mOffsetAnimator != null && this.mOffsetAnimator.isRunning());
  }
  
  void onFlingFinished(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout) {
    snapToChildIfNeeded(paramCoordinatorLayout, paramAppBarLayout);
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt) {
    boolean bool = super.onLayoutChild(paramCoordinatorLayout, paramAppBarLayout, paramInt);
    int i = paramAppBarLayout.getPendingAction();
    if (this.mOffsetToChildIndexOnLayout >= 0 && (i & 0x8) == 0) {
      View view = paramAppBarLayout.getChildAt(this.mOffsetToChildIndexOnLayout);
      paramInt = -view.getBottom();
      if (this.mOffsetToChildIndexOnLayoutIsMinHeight) {
        paramInt = ViewCompat.getMinimumHeight(view) + paramAppBarLayout.getTopInset() + paramInt;
      } else {
        paramInt = Math.round(view.getHeight() * this.mOffsetToChildIndexOnLayoutPerc) + paramInt;
      } 
      setHeaderTopBottomOffset(paramCoordinatorLayout, paramAppBarLayout, paramInt);
      paramAppBarLayout.resetPendingAction();
      this.mOffsetToChildIndexOnLayout = -1;
      setTopAndBottomOffset(MathUtils.constrain(getTopAndBottomOffset(), -paramAppBarLayout.getTotalScrollRange(), 0));
      updateAppBarLayoutDrawableState(paramCoordinatorLayout, paramAppBarLayout, getTopAndBottomOffset(), 0, true);
      paramAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
      return bool;
    } 
    if (i != 0) {
      if ((i & 0x4) != 0) {
        paramInt = 1;
      } else {
        paramInt = 0;
      } 
      if ((i & 0x2) != 0) {
        i = -paramAppBarLayout.getUpNestedPreScrollRange();
        if (paramInt != 0) {
          animateOffsetTo(paramCoordinatorLayout, paramAppBarLayout, i, 0.0F);
          paramAppBarLayout.resetPendingAction();
          this.mOffsetToChildIndexOnLayout = -1;
          setTopAndBottomOffset(MathUtils.constrain(getTopAndBottomOffset(), -paramAppBarLayout.getTotalScrollRange(), 0));
          updateAppBarLayoutDrawableState(paramCoordinatorLayout, paramAppBarLayout, getTopAndBottomOffset(), 0, true);
          paramAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
          return bool;
        } 
        setHeaderTopBottomOffset(paramCoordinatorLayout, paramAppBarLayout, i);
        paramAppBarLayout.resetPendingAction();
        this.mOffsetToChildIndexOnLayout = -1;
        setTopAndBottomOffset(MathUtils.constrain(getTopAndBottomOffset(), -paramAppBarLayout.getTotalScrollRange(), 0));
        updateAppBarLayoutDrawableState(paramCoordinatorLayout, paramAppBarLayout, getTopAndBottomOffset(), 0, true);
        paramAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
        return bool;
      } 
      if ((i & 0x1) != 0) {
        if (paramInt != 0) {
          animateOffsetTo(paramCoordinatorLayout, paramAppBarLayout, 0, 0.0F);
          paramAppBarLayout.resetPendingAction();
          this.mOffsetToChildIndexOnLayout = -1;
          setTopAndBottomOffset(MathUtils.constrain(getTopAndBottomOffset(), -paramAppBarLayout.getTotalScrollRange(), 0));
          updateAppBarLayoutDrawableState(paramCoordinatorLayout, paramAppBarLayout, getTopAndBottomOffset(), 0, true);
          paramAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
          return bool;
        } 
        setHeaderTopBottomOffset(paramCoordinatorLayout, paramAppBarLayout, 0);
      } 
    } 
    paramAppBarLayout.resetPendingAction();
    this.mOffsetToChildIndexOnLayout = -1;
    setTopAndBottomOffset(MathUtils.constrain(getTopAndBottomOffset(), -paramAppBarLayout.getTotalScrollRange(), 0));
    updateAppBarLayoutDrawableState(paramCoordinatorLayout, paramAppBarLayout, getTopAndBottomOffset(), 0, true);
    paramAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
    return bool;
  }
  
  public boolean onMeasureChild(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (((CoordinatorLayout$LayoutParams)paramAppBarLayout.getLayoutParams()).height == -2) {
      paramCoordinatorLayout.onMeasureChild((View)paramAppBarLayout, paramInt1, paramInt2, View.MeasureSpec.makeMeasureSpec(0, 0), paramInt4);
      return true;
    } 
    return super.onMeasureChild(paramCoordinatorLayout, paramAppBarLayout, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onNestedFling(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    boolean bool = false;
    if (!paramBoolean) {
      paramBoolean = fling(paramCoordinatorLayout, paramAppBarLayout, -paramAppBarLayout.getTotalScrollRange(), 0, -paramFloat2);
      this.mWasNestedFlung = paramBoolean;
      return paramBoolean;
    } 
    if (paramFloat2 < 0.0F) {
      int j = -paramAppBarLayout.getTotalScrollRange() + paramAppBarLayout.getDownNestedPreScrollRange();
      paramBoolean = bool;
      if (getTopBottomOffsetForScrollingSibling() < j) {
        animateOffsetTo(paramCoordinatorLayout, paramAppBarLayout, j, paramFloat2);
        paramBoolean = true;
      } 
      this.mWasNestedFlung = paramBoolean;
      return paramBoolean;
    } 
    int i = -paramAppBarLayout.getUpNestedPreScrollRange();
    paramBoolean = bool;
    if (getTopBottomOffsetForScrollingSibling() > i) {
      animateOffsetTo(paramCoordinatorLayout, paramAppBarLayout, i, paramFloat2);
      paramBoolean = true;
    } 
    this.mWasNestedFlung = paramBoolean;
    return paramBoolean;
  }
  
  public void onNestedPreScroll(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint) {
    if (paramInt2 != 0 && !this.mSkipNestedPreScroll) {
      boolean bool;
      if (paramInt2 < 0) {
        paramInt1 = -paramAppBarLayout.getTotalScrollRange();
        bool = paramInt1 + paramAppBarLayout.getDownNestedPreScrollRange();
      } else {
        paramInt1 = -paramAppBarLayout.getUpNestedPreScrollRange();
        bool = false;
      } 
      paramArrayOfint[1] = scroll(paramCoordinatorLayout, paramAppBarLayout, paramInt2, paramInt1, bool);
    } 
  }
  
  public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (paramInt4 < 0) {
      scroll(paramCoordinatorLayout, paramAppBarLayout, paramInt4, -paramAppBarLayout.getDownNestedScrollRange(), 0);
      this.mSkipNestedPreScroll = true;
      return;
    } 
    this.mSkipNestedPreScroll = false;
  }
  
  public void onRestoreInstanceState(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, Parcelable paramParcelable) {
    AppBarLayout$Behavior$SavedState appBarLayout$Behavior$SavedState;
    if (paramParcelable instanceof AppBarLayout$Behavior$SavedState) {
      appBarLayout$Behavior$SavedState = (AppBarLayout$Behavior$SavedState)paramParcelable;
      super.onRestoreInstanceState(paramCoordinatorLayout, paramAppBarLayout, appBarLayout$Behavior$SavedState.getSuperState());
      this.mOffsetToChildIndexOnLayout = appBarLayout$Behavior$SavedState.firstVisibleChildIndex;
      this.mOffsetToChildIndexOnLayoutPerc = appBarLayout$Behavior$SavedState.firstVisibleChildPercentageShown;
      this.mOffsetToChildIndexOnLayoutIsMinHeight = appBarLayout$Behavior$SavedState.firstVisibleChildAtMinimumHeight;
      return;
    } 
    super.onRestoreInstanceState(paramCoordinatorLayout, paramAppBarLayout, (Parcelable)appBarLayout$Behavior$SavedState);
    this.mOffsetToChildIndexOnLayout = -1;
  }
  
  public Parcelable onSaveInstanceState(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout) {
    AppBarLayout$Behavior$SavedState appBarLayout$Behavior$SavedState;
    boolean bool = false;
    Parcelable parcelable = super.onSaveInstanceState(paramCoordinatorLayout, paramAppBarLayout);
    int j = getTopAndBottomOffset();
    int k = paramAppBarLayout.getChildCount();
    for (int i = 0; i < k; i++) {
      View view = paramAppBarLayout.getChildAt(i);
      int m = view.getBottom() + j;
      if (view.getTop() + j <= 0 && m >= 0) {
        appBarLayout$Behavior$SavedState = new AppBarLayout$Behavior$SavedState(parcelable);
        appBarLayout$Behavior$SavedState.firstVisibleChildIndex = i;
        if (m == ViewCompat.getMinimumHeight(view) + paramAppBarLayout.getTopInset())
          bool = true; 
        appBarLayout$Behavior$SavedState.firstVisibleChildAtMinimumHeight = bool;
        appBarLayout$Behavior$SavedState.firstVisibleChildPercentageShown = m / view.getHeight();
        return (Parcelable)appBarLayout$Behavior$SavedState;
      } 
    } 
    return (Parcelable)appBarLayout$Behavior$SavedState;
  }
  
  public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView1, View paramView2, int paramInt) {
    boolean bool;
    if ((paramInt & 0x2) != 0 && paramAppBarLayout.hasScrollableChildren() && paramCoordinatorLayout.getHeight() - paramView1.getHeight() <= paramAppBarLayout.getHeight()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool && this.mOffsetAnimator != null)
      this.mOffsetAnimator.cancel(); 
    this.mLastNestedScrollingChildRef = null;
    return bool;
  }
  
  public void onStopNestedScroll(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView) {
    if (!this.mWasNestedFlung)
      snapToChildIfNeeded(paramCoordinatorLayout, paramAppBarLayout); 
    this.mSkipNestedPreScroll = false;
    this.mWasNestedFlung = false;
    this.mLastNestedScrollingChildRef = new WeakReference<View>(paramView);
  }
  
  public void setDragCallback(@Nullable AppBarLayout$Behavior$DragCallback paramAppBarLayout$Behavior$DragCallback) {
    this.mOnDragCallback = paramAppBarLayout$Behavior$DragCallback;
  }
  
  int setHeaderTopBottomOffset(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, int paramInt3) {
    boolean bool = false;
    int i = getTopBottomOffsetForScrollingSibling();
    if (paramInt2 != 0 && i >= paramInt2 && i <= paramInt3) {
      paramInt2 = MathUtils.constrain(paramInt1, paramInt2, paramInt3);
      paramInt1 = bool;
      if (i != paramInt2) {
        if (paramAppBarLayout.hasChildWithInterpolator()) {
          paramInt1 = interpolateOffset(paramAppBarLayout, paramInt2);
        } else {
          paramInt1 = paramInt2;
        } 
        boolean bool1 = setTopAndBottomOffset(paramInt1);
        this.mOffsetDelta = paramInt2 - paramInt1;
        if (!bool1 && paramAppBarLayout.hasChildWithInterpolator())
          paramCoordinatorLayout.dispatchDependentViewsChanged((View)paramAppBarLayout); 
        paramAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
        if (paramInt2 < i) {
          paramInt1 = -1;
        } else {
          paramInt1 = 1;
        } 
        updateAppBarLayoutDrawableState(paramCoordinatorLayout, paramAppBarLayout, paramInt2, paramInt1, false);
        paramInt1 = i - paramInt2;
      } 
      return paramInt1;
    } 
    this.mOffsetDelta = 0;
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\AppBarLayout$Behavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */