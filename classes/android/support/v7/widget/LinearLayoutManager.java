package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class LinearLayoutManager extends RecyclerView$LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider, ItemTouchHelper.ViewDropHandler {
  static final boolean DEBUG = false;
  
  public static final int HORIZONTAL = 0;
  
  public static final int INVALID_OFFSET = -2147483648;
  
  private static final float MAX_SCROLL_FACTOR = 0.33333334F;
  
  private static final String TAG = "LinearLayoutManager";
  
  public static final int VERTICAL = 1;
  
  final LinearLayoutManager$AnchorInfo mAnchorInfo = new LinearLayoutManager$AnchorInfo(this);
  
  private int mInitialPrefetchItemCount = 2;
  
  private boolean mLastStackFromEnd;
  
  private final LinearLayoutManager$LayoutChunkResult mLayoutChunkResult = new LinearLayoutManager$LayoutChunkResult();
  
  private LinearLayoutManager$LayoutState mLayoutState;
  
  int mOrientation;
  
  OrientationHelper mOrientationHelper;
  
  LinearLayoutManager$SavedState mPendingSavedState = null;
  
  int mPendingScrollPosition = -1;
  
  int mPendingScrollPositionOffset = Integer.MIN_VALUE;
  
  private boolean mRecycleChildrenOnDetach;
  
  private boolean mReverseLayout = false;
  
  boolean mShouldReverseLayout = false;
  
  private boolean mSmoothScrollbarEnabled = true;
  
  private boolean mStackFromEnd = false;
  
  public LinearLayoutManager(Context paramContext) {
    this(paramContext, 1, false);
  }
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean) {
    setOrientation(paramInt);
    setReverseLayout(paramBoolean);
    setAutoMeasureEnabled(true);
  }
  
  public LinearLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    RecyclerView$LayoutManager$Properties recyclerView$LayoutManager$Properties = getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(recyclerView$LayoutManager$Properties.orientation);
    setReverseLayout(recyclerView$LayoutManager$Properties.reverseLayout);
    setStackFromEnd(recyclerView$LayoutManager$Properties.stackFromEnd);
    setAutoMeasureEnabled(true);
  }
  
  private int computeScrollExtent(RecyclerView$State paramRecyclerView$State) {
    boolean bool2 = false;
    if (getChildCount() == 0)
      return 0; 
    ensureLayoutState();
    OrientationHelper orientationHelper = this.mOrientationHelper;
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    View view = findFirstVisibleChildClosestToStart(bool1, true);
    boolean bool1 = bool2;
    if (!this.mSmoothScrollbarEnabled)
      bool1 = true; 
    return ScrollbarHelper.computeScrollExtent(paramRecyclerView$State, orientationHelper, view, findFirstVisibleChildClosestToEnd(bool1, true), this, this.mSmoothScrollbarEnabled);
  }
  
  private int computeScrollOffset(RecyclerView$State paramRecyclerView$State) {
    boolean bool2 = false;
    if (getChildCount() == 0)
      return 0; 
    ensureLayoutState();
    OrientationHelper orientationHelper = this.mOrientationHelper;
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    View view = findFirstVisibleChildClosestToStart(bool1, true);
    boolean bool1 = bool2;
    if (!this.mSmoothScrollbarEnabled)
      bool1 = true; 
    return ScrollbarHelper.computeScrollOffset(paramRecyclerView$State, orientationHelper, view, findFirstVisibleChildClosestToEnd(bool1, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
  }
  
  private int computeScrollRange(RecyclerView$State paramRecyclerView$State) {
    boolean bool2 = false;
    if (getChildCount() == 0)
      return 0; 
    ensureLayoutState();
    OrientationHelper orientationHelper = this.mOrientationHelper;
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    View view = findFirstVisibleChildClosestToStart(bool1, true);
    boolean bool1 = bool2;
    if (!this.mSmoothScrollbarEnabled)
      bool1 = true; 
    return ScrollbarHelper.computeScrollRange(paramRecyclerView$State, orientationHelper, view, findFirstVisibleChildClosestToEnd(bool1, true), this, this.mSmoothScrollbarEnabled);
  }
  
  private View findFirstPartiallyOrCompletelyInvisibleChild(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
  }
  
  private View findFirstReferenceChild(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return findReferenceChild(paramRecyclerView$Recycler, paramRecyclerView$State, 0, getChildCount(), paramRecyclerView$State.getItemCount());
  }
  
  private View findFirstVisibleChildClosestToEnd(boolean paramBoolean1, boolean paramBoolean2) {
    return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), paramBoolean1, paramBoolean2) : findOneVisibleChild(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
  }
  
  private View findFirstVisibleChildClosestToStart(boolean paramBoolean1, boolean paramBoolean2) {
    return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, paramBoolean1, paramBoolean2) : findOneVisibleChild(0, getChildCount(), paramBoolean1, paramBoolean2);
  }
  
  private View findLastPartiallyOrCompletelyInvisibleChild(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
  }
  
  private View findLastReferenceChild(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return findReferenceChild(paramRecyclerView$Recycler, paramRecyclerView$State, getChildCount() - 1, -1, paramRecyclerView$State.getItemCount());
  }
  
  private View findPartiallyOrCompletelyInvisibleChildClosestToEnd(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild(paramRecyclerView$Recycler, paramRecyclerView$State) : findLastPartiallyOrCompletelyInvisibleChild(paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  private View findPartiallyOrCompletelyInvisibleChildClosestToStart(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild(paramRecyclerView$Recycler, paramRecyclerView$State) : findFirstPartiallyOrCompletelyInvisibleChild(paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  private View findReferenceChildClosestToEnd(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return this.mShouldReverseLayout ? findFirstReferenceChild(paramRecyclerView$Recycler, paramRecyclerView$State) : findLastReferenceChild(paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  private View findReferenceChildClosestToStart(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return this.mShouldReverseLayout ? findLastReferenceChild(paramRecyclerView$Recycler, paramRecyclerView$State) : findFirstReferenceChild(paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  private int fixLayoutEndGap(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, boolean paramBoolean) {
    int i = this.mOrientationHelper.getEndAfterPadding() - paramInt;
    if (i > 0) {
      int j = -scrollBy(-i, paramRecyclerView$Recycler, paramRecyclerView$State);
      i = j;
      if (paramBoolean) {
        paramInt = this.mOrientationHelper.getEndAfterPadding() - paramInt + j;
        i = j;
        if (paramInt > 0) {
          this.mOrientationHelper.offsetChildren(paramInt);
          i = j + paramInt;
        } 
      } 
      return i;
    } 
    return 0;
  }
  
  private int fixLayoutStartGap(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, boolean paramBoolean) {
    int i = paramInt - this.mOrientationHelper.getStartAfterPadding();
    if (i > 0) {
      int j = -scrollBy(i, paramRecyclerView$Recycler, paramRecyclerView$State);
      i = j;
      if (paramBoolean) {
        paramInt = paramInt + j - this.mOrientationHelper.getStartAfterPadding();
        i = j;
        if (paramInt > 0) {
          this.mOrientationHelper.offsetChildren(-paramInt);
          i = j - paramInt;
        } 
      } 
      return i;
    } 
    return 0;
  }
  
  private View getChildClosestToEnd() {
    if (this.mShouldReverseLayout) {
      boolean bool = false;
      return getChildAt(bool);
    } 
    int i = getChildCount() - 1;
    return getChildAt(i);
  }
  
  private View getChildClosestToStart() {
    if (this.mShouldReverseLayout) {
      int i = getChildCount() - 1;
      return getChildAt(i);
    } 
    boolean bool = false;
    return getChildAt(bool);
  }
  
  private void layoutForPredictiveAnimations(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt1, int paramInt2) {
    if (!paramRecyclerView$State.willRunPredictiveAnimations() || getChildCount() == 0 || paramRecyclerView$State.isPreLayout() || !supportsPredictiveItemAnimations())
      return; 
    int i = 0;
    int j = 0;
    List<RecyclerView$ViewHolder> list = paramRecyclerView$Recycler.getScrapList();
    int m = list.size();
    int n = getPosition(getChildAt(0));
    for (int k = 0; k < m; k = i1) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = list.get(k);
      if (recyclerView$ViewHolder.isRemoved()) {
        int i2 = j;
        j = i;
        i = i2;
      } else {
        int i2;
        boolean bool;
        if (recyclerView$ViewHolder.getLayoutPosition() < n) {
          bool = true;
        } else {
          bool = false;
        } 
        if (bool != this.mShouldReverseLayout) {
          i2 = -1;
        } else {
          i2 = 1;
        } 
        if (i2 == -1) {
          i2 = this.mOrientationHelper.getDecoratedMeasurement(recyclerView$ViewHolder.itemView) + i;
          i = j;
          j = i2;
        } else {
          i2 = this.mOrientationHelper.getDecoratedMeasurement(recyclerView$ViewHolder.itemView) + j;
          j = i;
          i = i2;
        } 
      } 
      int i1 = k + 1;
      k = j;
      j = i;
      i = k;
    } 
    this.mLayoutState.mScrapList = list;
    if (i > 0) {
      updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), paramInt1);
      this.mLayoutState.mExtra = i;
      this.mLayoutState.mAvailable = 0;
      this.mLayoutState.assignPositionFromScrapList();
      fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
    } 
    if (j > 0) {
      updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), paramInt2);
      this.mLayoutState.mExtra = j;
      this.mLayoutState.mAvailable = 0;
      this.mLayoutState.assignPositionFromScrapList();
      fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
    } 
    this.mLayoutState.mScrapList = null;
  }
  
  private void logChildren() {
    Log.d("LinearLayoutManager", "internal representation of views on the screen");
    for (int i = 0; i < getChildCount(); i++) {
      View view = getChildAt(i);
      Log.d("LinearLayoutManager", "item " + getPosition(view) + ", coord:" + this.mOrientationHelper.getDecoratedStart(view));
    } 
    Log.d("LinearLayoutManager", "==============");
  }
  
  private void recycleByLayoutState(RecyclerView$Recycler paramRecyclerView$Recycler, LinearLayoutManager$LayoutState paramLinearLayoutManager$LayoutState) {
    if (!paramLinearLayoutManager$LayoutState.mRecycle || paramLinearLayoutManager$LayoutState.mInfinite)
      return; 
    if (paramLinearLayoutManager$LayoutState.mLayoutDirection == -1) {
      recycleViewsFromEnd(paramRecyclerView$Recycler, paramLinearLayoutManager$LayoutState.mScrollingOffset);
      return;
    } 
    recycleViewsFromStart(paramRecyclerView$Recycler, paramLinearLayoutManager$LayoutState.mScrollingOffset);
  }
  
  private void recycleChildren(RecyclerView$Recycler paramRecyclerView$Recycler, int paramInt1, int paramInt2) {
    if (paramInt1 != paramInt2) {
      int i = paramInt1;
      if (paramInt2 > paramInt1) {
        paramInt2--;
        while (true) {
          if (paramInt2 >= paramInt1) {
            removeAndRecycleViewAt(paramInt2, paramRecyclerView$Recycler);
            paramInt2--;
            continue;
          } 
          return;
        } 
      } 
      while (true) {
        if (i > paramInt2) {
          removeAndRecycleViewAt(i, paramRecyclerView$Recycler);
          i--;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void recycleViewsFromEnd(RecyclerView$Recycler paramRecyclerView$Recycler, int paramInt) {
    int i = getChildCount();
    if (paramInt >= 0) {
      int j = this.mOrientationHelper.getEnd() - paramInt;
      if (this.mShouldReverseLayout) {
        paramInt = 0;
        while (true) {
          if (paramInt < i) {
            View view = getChildAt(paramInt);
            if (this.mOrientationHelper.getDecoratedStart(view) < j || this.mOrientationHelper.getTransformedStartWithDecoration(view) < j) {
              recycleChildren(paramRecyclerView$Recycler, 0, paramInt);
              return;
            } 
            paramInt++;
            continue;
          } 
          return;
        } 
      } 
      paramInt = i - 1;
      while (true) {
        if (paramInt >= 0) {
          View view = getChildAt(paramInt);
          if (this.mOrientationHelper.getDecoratedStart(view) < j || this.mOrientationHelper.getTransformedStartWithDecoration(view) < j) {
            recycleChildren(paramRecyclerView$Recycler, i - 1, paramInt);
            return;
          } 
          paramInt--;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void recycleViewsFromStart(RecyclerView$Recycler paramRecyclerView$Recycler, int paramInt) {
    if (paramInt >= 0) {
      int j = getChildCount();
      if (this.mShouldReverseLayout) {
        int k = j - 1;
        while (true) {
          if (k >= 0) {
            View view = getChildAt(k);
            if (this.mOrientationHelper.getDecoratedEnd(view) > paramInt || this.mOrientationHelper.getTransformedEndWithDecoration(view) > paramInt) {
              recycleChildren(paramRecyclerView$Recycler, j - 1, k);
              return;
            } 
            k--;
            continue;
          } 
          return;
        } 
      } 
      int i = 0;
      while (true) {
        if (i < j) {
          View view = getChildAt(i);
          if (this.mOrientationHelper.getDecoratedEnd(view) > paramInt || this.mOrientationHelper.getTransformedEndWithDecoration(view) > paramInt) {
            recycleChildren(paramRecyclerView$Recycler, 0, i);
            return;
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void resolveShouldLayoutReverse() {
    boolean bool = true;
    if (this.mOrientation == 1 || !isLayoutRTL()) {
      this.mShouldReverseLayout = this.mReverseLayout;
      return;
    } 
    if (this.mReverseLayout)
      bool = false; 
    this.mShouldReverseLayout = bool;
  }
  
  private boolean updateAnchorFromChildren(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, LinearLayoutManager$AnchorInfo paramLinearLayoutManager$AnchorInfo) {
    int i = 0;
    if (getChildCount() != 0) {
      View view = getFocusedChild();
      if (view != null && paramLinearLayoutManager$AnchorInfo.isViewValidAsAnchor(view, paramRecyclerView$State)) {
        paramLinearLayoutManager$AnchorInfo.assignFromViewAndKeepVisibleRect(view);
        return true;
      } 
      if (this.mLastStackFromEnd == this.mStackFromEnd) {
        View view1;
        if (paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd) {
          view1 = findReferenceChildClosestToEnd(paramRecyclerView$Recycler, paramRecyclerView$State);
        } else {
          view1 = findReferenceChildClosestToStart((RecyclerView$Recycler)view1, paramRecyclerView$State);
        } 
        if (view1 != null) {
          paramLinearLayoutManager$AnchorInfo.assignFromView(view1);
          if (!paramRecyclerView$State.isPreLayout() && supportsPredictiveItemAnimations()) {
            if (this.mOrientationHelper.getDecoratedStart(view1) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(view1) < this.mOrientationHelper.getStartAfterPadding())
              i = 1; 
            if (i) {
              if (paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd) {
                i = this.mOrientationHelper.getEndAfterPadding();
              } else {
                i = this.mOrientationHelper.getStartAfterPadding();
              } 
              paramLinearLayoutManager$AnchorInfo.mCoordinate = i;
            } 
          } 
          return true;
        } 
      } 
    } 
    return false;
  }
  
  private boolean updateAnchorFromPendingData(RecyclerView$State paramRecyclerView$State, LinearLayoutManager$AnchorInfo paramLinearLayoutManager$AnchorInfo) {
    boolean bool = false;
    if (paramRecyclerView$State.isPreLayout() || this.mPendingScrollPosition == -1)
      return false; 
    if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= paramRecyclerView$State.getItemCount()) {
      this.mPendingScrollPosition = -1;
      this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
      return false;
    } 
    paramLinearLayoutManager$AnchorInfo.mPosition = this.mPendingScrollPosition;
    if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
      paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
      if (paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd) {
        paramLinearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
        return true;
      } 
      paramLinearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
      return true;
    } 
    if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
      View view = findViewByPosition(this.mPendingScrollPosition);
      if (view != null) {
        if (this.mOrientationHelper.getDecoratedMeasurement(view) > this.mOrientationHelper.getTotalSpace()) {
          paramLinearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
          return true;
        } 
        if (this.mOrientationHelper.getDecoratedStart(view) - this.mOrientationHelper.getStartAfterPadding() < 0) {
          paramLinearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding();
          paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd = false;
          return true;
        } 
        if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view) < 0) {
          paramLinearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
          paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd = true;
          return true;
        } 
        if (paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd) {
          int j = this.mOrientationHelper.getDecoratedEnd(view) + this.mOrientationHelper.getTotalSpaceChange();
          paramLinearLayoutManager$AnchorInfo.mCoordinate = j;
          return true;
        } 
        int i = this.mOrientationHelper.getDecoratedStart(view);
        paramLinearLayoutManager$AnchorInfo.mCoordinate = i;
        return true;
      } 
      if (getChildCount() > 0) {
        boolean bool1;
        int i = getPosition(getChildAt(0));
        if (this.mPendingScrollPosition < i) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        if (bool1 == this.mShouldReverseLayout)
          bool = true; 
        paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd = bool;
      } 
      paramLinearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
      return true;
    } 
    paramLinearLayoutManager$AnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
    if (this.mShouldReverseLayout) {
      paramLinearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset;
      return true;
    } 
    paramLinearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
    return true;
  }
  
  private void updateAnchorInfoForLayout(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, LinearLayoutManager$AnchorInfo paramLinearLayoutManager$AnchorInfo) {
    if (!updateAnchorFromPendingData(paramRecyclerView$State, paramLinearLayoutManager$AnchorInfo) && !updateAnchorFromChildren(paramRecyclerView$Recycler, paramRecyclerView$State, paramLinearLayoutManager$AnchorInfo)) {
      boolean bool;
      paramLinearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
      if (this.mStackFromEnd) {
        bool = paramRecyclerView$State.getItemCount() - 1;
      } else {
        bool = false;
      } 
      paramLinearLayoutManager$AnchorInfo.mPosition = bool;
      return;
    } 
  }
  
  private void updateLayoutState(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView$State paramRecyclerView$State) {
    byte b = -1;
    boolean bool = true;
    this.mLayoutState.mInfinite = resolveIsInfinite();
    this.mLayoutState.mExtra = getExtraLayoutSpace(paramRecyclerView$State);
    this.mLayoutState.mLayoutDirection = paramInt1;
    if (paramInt1 == 1) {
      LinearLayoutManager$LayoutState linearLayoutManager$LayoutState1 = this.mLayoutState;
      linearLayoutManager$LayoutState1.mExtra += this.mOrientationHelper.getEndPadding();
      View view = getChildClosestToEnd();
      LinearLayoutManager$LayoutState linearLayoutManager$LayoutState2 = this.mLayoutState;
      if (this.mShouldReverseLayout) {
        paramInt1 = b;
      } else {
        paramInt1 = 1;
      } 
      linearLayoutManager$LayoutState2.mItemDirection = paramInt1;
      this.mLayoutState.mCurrentPosition = getPosition(view) + this.mLayoutState.mItemDirection;
      this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(view);
      paramInt1 = this.mOrientationHelper.getDecoratedEnd(view) - this.mOrientationHelper.getEndAfterPadding();
    } else {
      View view = getChildClosestToStart();
      LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
      linearLayoutManager$LayoutState.mExtra += this.mOrientationHelper.getStartAfterPadding();
      linearLayoutManager$LayoutState = this.mLayoutState;
      if (this.mShouldReverseLayout) {
        paramInt1 = bool;
      } else {
        paramInt1 = -1;
      } 
      linearLayoutManager$LayoutState.mItemDirection = paramInt1;
      this.mLayoutState.mCurrentPosition = getPosition(view) + this.mLayoutState.mItemDirection;
      this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(view);
      paramInt1 = -this.mOrientationHelper.getDecoratedStart(view) + this.mOrientationHelper.getStartAfterPadding();
    } 
    this.mLayoutState.mAvailable = paramInt2;
    if (paramBoolean) {
      LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
      linearLayoutManager$LayoutState.mAvailable -= paramInt1;
    } 
    this.mLayoutState.mScrollingOffset = paramInt1;
  }
  
  private void updateLayoutStateToFillEnd(int paramInt1, int paramInt2) {
    boolean bool;
    this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - paramInt2;
    LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
    if (this.mShouldReverseLayout) {
      bool = true;
    } else {
      bool = true;
    } 
    linearLayoutManager$LayoutState.mItemDirection = bool;
    this.mLayoutState.mCurrentPosition = paramInt1;
    this.mLayoutState.mLayoutDirection = 1;
    this.mLayoutState.mOffset = paramInt2;
    this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
  }
  
  private void updateLayoutStateToFillEnd(LinearLayoutManager$AnchorInfo paramLinearLayoutManager$AnchorInfo) {
    updateLayoutStateToFillEnd(paramLinearLayoutManager$AnchorInfo.mPosition, paramLinearLayoutManager$AnchorInfo.mCoordinate);
  }
  
  private void updateLayoutStateToFillStart(int paramInt1, int paramInt2) {
    this.mLayoutState.mAvailable = paramInt2 - this.mOrientationHelper.getStartAfterPadding();
    this.mLayoutState.mCurrentPosition = paramInt1;
    LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
    if (this.mShouldReverseLayout) {
      paramInt1 = 1;
    } else {
      paramInt1 = -1;
    } 
    linearLayoutManager$LayoutState.mItemDirection = paramInt1;
    this.mLayoutState.mLayoutDirection = -1;
    this.mLayoutState.mOffset = paramInt2;
    this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
  }
  
  private void updateLayoutStateToFillStart(LinearLayoutManager$AnchorInfo paramLinearLayoutManager$AnchorInfo) {
    updateLayoutStateToFillStart(paramLinearLayoutManager$AnchorInfo.mPosition, paramLinearLayoutManager$AnchorInfo.mCoordinate);
  }
  
  public void assertNotInLayoutOrScroll(String paramString) {
    if (this.mPendingSavedState == null)
      super.assertNotInLayoutOrScroll(paramString); 
  }
  
  public boolean canScrollHorizontally() {
    return (this.mOrientation == 0);
  }
  
  public boolean canScrollVertically() {
    return (this.mOrientation == 1);
  }
  
  public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView$State paramRecyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry paramRecyclerView$LayoutManager$LayoutPrefetchRegistry) {
    if (this.mOrientation != 0)
      paramInt1 = paramInt2; 
    if (getChildCount() == 0 || paramInt1 == 0)
      return; 
    if (paramInt1 > 0) {
      paramInt2 = 1;
    } else {
      paramInt2 = -1;
    } 
    updateLayoutState(paramInt2, Math.abs(paramInt1), true, paramRecyclerView$State);
    collectPrefetchPositionsForLayoutState(paramRecyclerView$State, this.mLayoutState, paramRecyclerView$LayoutManager$LayoutPrefetchRegistry);
  }
  
  public void collectInitialPrefetchPositions(int paramInt, RecyclerView$LayoutManager$LayoutPrefetchRegistry paramRecyclerView$LayoutManager$LayoutPrefetchRegistry) {
    byte b;
    boolean bool1;
    if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
      bool1 = this.mPendingSavedState.mAnchorLayoutFromEnd;
      i = this.mPendingSavedState.mAnchorPosition;
    } else {
      resolveShouldLayoutReverse();
      bool1 = this.mShouldReverseLayout;
      if (this.mPendingScrollPosition == -1) {
        if (bool1) {
          i = paramInt - 1;
        } else {
          i = 0;
        } 
      } else {
        i = this.mPendingScrollPosition;
      } 
    } 
    if (bool1) {
      b = -1;
    } else {
      b = 1;
    } 
    boolean bool = false;
    int j = i;
    int i;
    for (i = bool; i < this.mInitialPrefetchItemCount && j >= 0 && j < paramInt; i++) {
      paramRecyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(j, 0);
      j += b;
    } 
  }
  
  void collectPrefetchPositionsForLayoutState(RecyclerView$State paramRecyclerView$State, LinearLayoutManager$LayoutState paramLinearLayoutManager$LayoutState, RecyclerView$LayoutManager$LayoutPrefetchRegistry paramRecyclerView$LayoutManager$LayoutPrefetchRegistry) {
    int i = paramLinearLayoutManager$LayoutState.mCurrentPosition;
    if (i >= 0 && i < paramRecyclerView$State.getItemCount())
      paramRecyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(i, Math.max(0, paramLinearLayoutManager$LayoutState.mScrollingOffset)); 
  }
  
  public int computeHorizontalScrollExtent(RecyclerView$State paramRecyclerView$State) {
    return computeScrollExtent(paramRecyclerView$State);
  }
  
  public int computeHorizontalScrollOffset(RecyclerView$State paramRecyclerView$State) {
    return computeScrollOffset(paramRecyclerView$State);
  }
  
  public int computeHorizontalScrollRange(RecyclerView$State paramRecyclerView$State) {
    return computeScrollRange(paramRecyclerView$State);
  }
  
  public PointF computeScrollVectorForPosition(int paramInt) {
    boolean bool = true;
    boolean bool1 = false;
    if (getChildCount() == 0)
      return null; 
    if (paramInt < getPosition(getChildAt(0)))
      bool1 = true; 
    paramInt = bool;
    if (bool1 != this.mShouldReverseLayout)
      paramInt = -1; 
    return (this.mOrientation == 0) ? new PointF(paramInt, 0.0F) : new PointF(0.0F, paramInt);
  }
  
  public int computeVerticalScrollExtent(RecyclerView$State paramRecyclerView$State) {
    return computeScrollExtent(paramRecyclerView$State);
  }
  
  public int computeVerticalScrollOffset(RecyclerView$State paramRecyclerView$State) {
    return computeScrollOffset(paramRecyclerView$State);
  }
  
  public int computeVerticalScrollRange(RecyclerView$State paramRecyclerView$State) {
    return computeScrollRange(paramRecyclerView$State);
  }
  
  int convertFocusDirectionToLayoutDirection(int paramInt) {
    byte b = -1;
    int i = Integer.MIN_VALUE;
    boolean bool = true;
    switch (paramInt) {
      default:
        return Integer.MIN_VALUE;
      case 1:
        paramInt = b;
        if (this.mOrientation != 1) {
          paramInt = b;
          if (isLayoutRTL())
            return 1; 
        } 
        return paramInt;
      case 2:
        if (this.mOrientation == 1)
          return 1; 
        paramInt = b;
        return !isLayoutRTL() ? 1 : paramInt;
      case 33:
        paramInt = b;
        return (this.mOrientation != 1) ? Integer.MIN_VALUE : paramInt;
      case 130:
        paramInt = i;
        if (this.mOrientation == 1)
          paramInt = 1; 
        return paramInt;
      case 17:
        paramInt = b;
        return (this.mOrientation != 0) ? Integer.MIN_VALUE : paramInt;
      case 66:
        break;
    } 
    return (this.mOrientation == 0) ? bool : Integer.MIN_VALUE;
  }
  
  LinearLayoutManager$LayoutState createLayoutState() {
    return new LinearLayoutManager$LayoutState();
  }
  
  void ensureLayoutState() {
    if (this.mLayoutState == null)
      this.mLayoutState = createLayoutState(); 
    if (this.mOrientationHelper == null)
      this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, this.mOrientation); 
  }
  
  int fill(RecyclerView$Recycler paramRecyclerView$Recycler, LinearLayoutManager$LayoutState paramLinearLayoutManager$LayoutState, RecyclerView$State paramRecyclerView$State, boolean paramBoolean) {
    int j = paramLinearLayoutManager$LayoutState.mAvailable;
    if (paramLinearLayoutManager$LayoutState.mScrollingOffset != Integer.MIN_VALUE) {
      if (paramLinearLayoutManager$LayoutState.mAvailable < 0)
        paramLinearLayoutManager$LayoutState.mScrollingOffset += paramLinearLayoutManager$LayoutState.mAvailable; 
      recycleByLayoutState(paramRecyclerView$Recycler, paramLinearLayoutManager$LayoutState);
    } 
    int i = paramLinearLayoutManager$LayoutState.mAvailable + paramLinearLayoutManager$LayoutState.mExtra;
    LinearLayoutManager$LayoutChunkResult linearLayoutManager$LayoutChunkResult = this.mLayoutChunkResult;
    while (true) {
      while (true)
        break; 
      if (paramBoolean) {
        Object object = SYNTHETIC_LOCAL_VARIABLE_6;
        if (linearLayoutManager$LayoutChunkResult.mFocusable)
          return j - paramLinearLayoutManager$LayoutState.mAvailable; 
      } 
    } 
  }
  
  public int findFirstCompletelyVisibleItemPosition() {
    View view = findOneVisibleChild(0, getChildCount(), true, false);
    return (view == null) ? -1 : getPosition(view);
  }
  
  public int findFirstVisibleItemPosition() {
    View view = findOneVisibleChild(0, getChildCount(), false, true);
    return (view == null) ? -1 : getPosition(view);
  }
  
  public int findLastCompletelyVisibleItemPosition() {
    View view = findOneVisibleChild(getChildCount() - 1, -1, true, false);
    return (view == null) ? -1 : getPosition(view);
  }
  
  public int findLastVisibleItemPosition() {
    View view = findOneVisibleChild(getChildCount() - 1, -1, false, true);
    return (view == null) ? -1 : getPosition(view);
  }
  
  View findOnePartiallyOrCompletelyInvisibleChild(int paramInt1, int paramInt2) {
    char c1;
    char c2;
    ensureLayoutState();
    if (paramInt2 > paramInt1) {
      c1 = '\001';
    } else if (paramInt2 < paramInt1) {
      c1 = '￿';
    } else {
      c1 = Character.MIN_VALUE;
    } 
    if (!c1)
      return getChildAt(paramInt1); 
    if (this.mOrientationHelper.getDecoratedStart(getChildAt(paramInt1)) < this.mOrientationHelper.getStartAfterPadding()) {
      c2 = '䄄';
      c1 = '䀄';
    } else {
      c2 = '၁';
      c1 = 'ခ';
    } 
    return (this.mOrientation == 0) ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(paramInt1, paramInt2, c2, c1) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(paramInt1, paramInt2, c2, c1);
  }
  
  View findOneVisibleChild(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2) {
    char c1;
    char c2 = 'ŀ';
    ensureLayoutState();
    if (paramBoolean1) {
      c1 = '怃';
    } else {
      c1 = 'ŀ';
    } 
    if (!paramBoolean2)
      c2 = Character.MIN_VALUE; 
    return (this.mOrientation == 0) ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(paramInt1, paramInt2, c1, c2) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(paramInt1, paramInt2, c1, c2);
  }
  
  View findReferenceChild(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt1, int paramInt2, int paramInt3) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual ensureLayoutState : ()V
    //   6: aload_0
    //   7: getfield mOrientationHelper : Landroid/support/v7/widget/OrientationHelper;
    //   10: invokevirtual getStartAfterPadding : ()I
    //   13: istore #7
    //   15: aload_0
    //   16: getfield mOrientationHelper : Landroid/support/v7/widget/OrientationHelper;
    //   19: invokevirtual getEndAfterPadding : ()I
    //   22: istore #8
    //   24: iload #4
    //   26: iload_3
    //   27: if_icmple -> 107
    //   30: iconst_1
    //   31: istore #6
    //   33: aconst_null
    //   34: astore_1
    //   35: iload_3
    //   36: iload #4
    //   38: if_icmpeq -> 157
    //   41: aload_0
    //   42: iload_3
    //   43: invokevirtual getChildAt : (I)Landroid/view/View;
    //   46: astore #10
    //   48: aload_0
    //   49: aload #10
    //   51: invokevirtual getPosition : (Landroid/view/View;)I
    //   54: istore #9
    //   56: iload #9
    //   58: iflt -> 172
    //   61: iload #9
    //   63: iload #5
    //   65: if_icmpge -> 172
    //   68: aload #10
    //   70: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   73: checkcast android/support/v7/widget/RecyclerView$LayoutParams
    //   76: invokevirtual isItemRemoved : ()Z
    //   79: ifeq -> 113
    //   82: aload_1
    //   83: ifnonnull -> 172
    //   86: aload_2
    //   87: astore_1
    //   88: aload #10
    //   90: astore_2
    //   91: iload_3
    //   92: iload #6
    //   94: iadd
    //   95: istore_3
    //   96: aload_2
    //   97: astore #10
    //   99: aload_1
    //   100: astore_2
    //   101: aload #10
    //   103: astore_1
    //   104: goto -> 35
    //   107: iconst_m1
    //   108: istore #6
    //   110: goto -> 33
    //   113: aload_0
    //   114: getfield mOrientationHelper : Landroid/support/v7/widget/OrientationHelper;
    //   117: aload #10
    //   119: invokevirtual getDecoratedStart : (Landroid/view/View;)I
    //   122: iload #8
    //   124: if_icmpge -> 145
    //   127: aload #10
    //   129: astore #11
    //   131: aload_0
    //   132: getfield mOrientationHelper : Landroid/support/v7/widget/OrientationHelper;
    //   135: aload #10
    //   137: invokevirtual getDecoratedEnd : (Landroid/view/View;)I
    //   140: iload #7
    //   142: if_icmpge -> 164
    //   145: aload_2
    //   146: ifnonnull -> 172
    //   149: aload_1
    //   150: astore_2
    //   151: aload #10
    //   153: astore_1
    //   154: goto -> 91
    //   157: aload_2
    //   158: ifnull -> 167
    //   161: aload_2
    //   162: astore #11
    //   164: aload #11
    //   166: areturn
    //   167: aload_1
    //   168: astore_2
    //   169: goto -> 161
    //   172: aload_1
    //   173: astore #10
    //   175: aload_2
    //   176: astore_1
    //   177: aload #10
    //   179: astore_2
    //   180: goto -> 91
  }
  
  public View findViewByPosition(int paramInt) {
    int i = getChildCount();
    if (i == 0)
      return null; 
    int j = paramInt - getPosition(getChildAt(0));
    if (j >= 0 && j < i) {
      View view2 = getChildAt(j);
      View view1 = view2;
      return (getPosition(view2) != paramInt) ? super.findViewByPosition(paramInt) : view1;
    } 
    return super.findViewByPosition(paramInt);
  }
  
  public RecyclerView$LayoutParams generateDefaultLayoutParams() {
    return new RecyclerView$LayoutParams(-2, -2);
  }
  
  protected int getExtraLayoutSpace(RecyclerView$State paramRecyclerView$State) {
    return paramRecyclerView$State.hasTargetScrollPosition() ? this.mOrientationHelper.getTotalSpace() : 0;
  }
  
  @Deprecated
  public int getInitialItemPrefetchCount() {
    return getInitialPrefetchItemCount();
  }
  
  public int getInitialPrefetchItemCount() {
    return this.mInitialPrefetchItemCount;
  }
  
  public int getOrientation() {
    return this.mOrientation;
  }
  
  public boolean getRecycleChildrenOnDetach() {
    return this.mRecycleChildrenOnDetach;
  }
  
  public boolean getReverseLayout() {
    return this.mReverseLayout;
  }
  
  public boolean getStackFromEnd() {
    return this.mStackFromEnd;
  }
  
  protected boolean isLayoutRTL() {
    return (getLayoutDirection() == 1);
  }
  
  public boolean isSmoothScrollbarEnabled() {
    return this.mSmoothScrollbarEnabled;
  }
  
  void layoutChunk(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, LinearLayoutManager$LayoutState paramLinearLayoutManager$LayoutState, LinearLayoutManager$LayoutChunkResult paramLinearLayoutManager$LayoutChunkResult) {
    int i;
    int j;
    int k;
    int m;
    View view = paramLinearLayoutManager$LayoutState.next(paramRecyclerView$Recycler);
    if (view == null) {
      paramLinearLayoutManager$LayoutChunkResult.mFinished = true;
      return;
    } 
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)view.getLayoutParams();
    if (paramLinearLayoutManager$LayoutState.mScrapList == null) {
      boolean bool1;
      boolean bool2 = this.mShouldReverseLayout;
      if (paramLinearLayoutManager$LayoutState.mLayoutDirection == -1) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (bool2 == bool1) {
        addView(view);
      } else {
        addView(view, 0);
      } 
    } else {
      boolean bool1;
      boolean bool2 = this.mShouldReverseLayout;
      if (paramLinearLayoutManager$LayoutState.mLayoutDirection == -1) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (bool2 == bool1) {
        addDisappearingView(view);
      } else {
        addDisappearingView(view, 0);
      } 
    } 
    measureChildWithMargins(view, 0, 0);
    paramLinearLayoutManager$LayoutChunkResult.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(view);
    if (this.mOrientation == 1) {
      if (isLayoutRTL()) {
        i = getWidth() - getPaddingRight();
        j = i - this.mOrientationHelper.getDecoratedMeasurementInOther(view);
      } else {
        j = getPaddingLeft();
        i = this.mOrientationHelper.getDecoratedMeasurementInOther(view) + j;
      } 
      if (paramLinearLayoutManager$LayoutState.mLayoutDirection == -1) {
        m = paramLinearLayoutManager$LayoutState.mOffset;
        k = paramLinearLayoutManager$LayoutState.mOffset - paramLinearLayoutManager$LayoutChunkResult.mConsumed;
      } else {
        k = paramLinearLayoutManager$LayoutState.mOffset;
        m = paramLinearLayoutManager$LayoutState.mOffset;
        m = paramLinearLayoutManager$LayoutChunkResult.mConsumed + m;
      } 
    } else {
      k = getPaddingTop();
      m = k + this.mOrientationHelper.getDecoratedMeasurementInOther(view);
      if (paramLinearLayoutManager$LayoutState.mLayoutDirection == -1) {
        i = paramLinearLayoutManager$LayoutState.mOffset;
        j = paramLinearLayoutManager$LayoutState.mOffset - paramLinearLayoutManager$LayoutChunkResult.mConsumed;
      } else {
        j = paramLinearLayoutManager$LayoutState.mOffset;
        i = paramLinearLayoutManager$LayoutState.mOffset + paramLinearLayoutManager$LayoutChunkResult.mConsumed;
      } 
    } 
    layoutDecoratedWithMargins(view, j, k, i, m);
    if (recyclerView$LayoutParams.isItemRemoved() || recyclerView$LayoutParams.isItemChanged())
      paramLinearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true; 
    paramLinearLayoutManager$LayoutChunkResult.mFocusable = view.hasFocusable();
  }
  
  void onAnchorReady(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, LinearLayoutManager$AnchorInfo paramLinearLayoutManager$AnchorInfo, int paramInt) {}
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView$Recycler paramRecyclerView$Recycler) {
    super.onDetachedFromWindow(paramRecyclerView, paramRecyclerView$Recycler);
    if (this.mRecycleChildrenOnDetach) {
      removeAndRecycleAllViews(paramRecyclerView$Recycler);
      paramRecyclerView$Recycler.clear();
    } 
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    View view;
    resolveShouldLayoutReverse();
    if (getChildCount() == 0)
      return null; 
    paramInt = convertFocusDirectionToLayoutDirection(paramInt);
    if (paramInt == Integer.MIN_VALUE)
      return null; 
    ensureLayoutState();
    ensureLayoutState();
    updateLayoutState(paramInt, (int)(0.33333334F * this.mOrientationHelper.getTotalSpace()), false, paramRecyclerView$State);
    this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
    this.mLayoutState.mRecycle = false;
    fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, true);
    if (paramInt == -1) {
      view = findPartiallyOrCompletelyInvisibleChildClosestToStart(paramRecyclerView$Recycler, paramRecyclerView$State);
    } else {
      view = findPartiallyOrCompletelyInvisibleChildClosestToEnd((RecyclerView$Recycler)view, paramRecyclerView$State);
    } 
    if (paramInt == -1) {
      paramView = getChildClosestToStart();
    } else {
      paramView = getChildClosestToEnd();
    } 
    return paramView.hasFocusable() ? ((view == null) ? null : paramView) : view;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0) {
      AccessibilityRecordCompat accessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      accessibilityRecordCompat.setFromIndex(findFirstVisibleItemPosition());
      accessibilityRecordCompat.setToIndex(findLastVisibleItemPosition());
    } 
  }
  
  public void onLayoutChildren(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    int k = -1;
    if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && paramRecyclerView$State.getItemCount() == 0) {
      removeAndRecycleAllViews(paramRecyclerView$Recycler);
      return;
    } 
    if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor())
      this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition; 
    ensureLayoutState();
    this.mLayoutState.mRecycle = false;
    resolveShouldLayoutReverse();
    if (!this.mAnchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
      this.mAnchorInfo.reset();
      this.mAnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
      updateAnchorInfoForLayout(paramRecyclerView$Recycler, paramRecyclerView$State, this.mAnchorInfo);
      this.mAnchorInfo.mValid = true;
    } 
    int i = getExtraLayoutSpace(paramRecyclerView$State);
    if (this.mLayoutState.mLastScrollDelta >= 0) {
      j = 0;
    } else {
      j = i;
      i = 0;
    } 
    int m = j + this.mOrientationHelper.getStartAfterPadding();
    int n = i + this.mOrientationHelper.getEndPadding();
    i = n;
    int j = m;
    if (paramRecyclerView$State.isPreLayout()) {
      i = n;
      j = m;
      if (this.mPendingScrollPosition != -1) {
        i = n;
        j = m;
        if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
          View view = findViewByPosition(this.mPendingScrollPosition);
          i = n;
          j = m;
          if (view != null) {
            if (this.mShouldReverseLayout) {
              i = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view) - this.mPendingScrollPositionOffset;
            } else {
              i = this.mOrientationHelper.getDecoratedStart(view);
              j = this.mOrientationHelper.getStartAfterPadding();
              i = this.mPendingScrollPositionOffset - i - j;
            } 
            if (i > 0) {
              j = m + i;
              i = n;
            } else {
              i = n - i;
              j = m;
            } 
          } 
        } 
      } 
    } 
    if (this.mAnchorInfo.mLayoutFromEnd) {
      if (this.mShouldReverseLayout)
        k = 1; 
    } else if (!this.mShouldReverseLayout) {
      k = 1;
    } 
    onAnchorReady(paramRecyclerView$Recycler, paramRecyclerView$State, this.mAnchorInfo, k);
    detachAndScrapAttachedViews(paramRecyclerView$Recycler);
    this.mLayoutState.mInfinite = resolveIsInfinite();
    this.mLayoutState.mIsPreLayout = paramRecyclerView$State.isPreLayout();
    if (this.mAnchorInfo.mLayoutFromEnd) {
      updateLayoutStateToFillStart(this.mAnchorInfo);
      this.mLayoutState.mExtra = j;
      fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
      m = this.mLayoutState.mOffset;
      n = this.mLayoutState.mCurrentPosition;
      j = i;
      if (this.mLayoutState.mAvailable > 0)
        j = i + this.mLayoutState.mAvailable; 
      updateLayoutStateToFillEnd(this.mAnchorInfo);
      this.mLayoutState.mExtra = j;
      LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
      linearLayoutManager$LayoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
      fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
      k = this.mLayoutState.mOffset;
      if (this.mLayoutState.mAvailable > 0) {
        i = this.mLayoutState.mAvailable;
        updateLayoutStateToFillStart(n, m);
        this.mLayoutState.mExtra = i;
        fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
        i = this.mLayoutState.mOffset;
      } else {
        i = m;
      } 
      j = i;
      i = k;
    } else {
      updateLayoutStateToFillEnd(this.mAnchorInfo);
      this.mLayoutState.mExtra = i;
      fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
      k = this.mLayoutState.mOffset;
      n = this.mLayoutState.mCurrentPosition;
      i = j;
      if (this.mLayoutState.mAvailable > 0)
        i = j + this.mLayoutState.mAvailable; 
      updateLayoutStateToFillStart(this.mAnchorInfo);
      this.mLayoutState.mExtra = i;
      LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
      linearLayoutManager$LayoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
      fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
      m = this.mLayoutState.mOffset;
      i = k;
      j = m;
      if (this.mLayoutState.mAvailable > 0) {
        i = this.mLayoutState.mAvailable;
        updateLayoutStateToFillEnd(n, k);
        this.mLayoutState.mExtra = i;
        fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
        i = this.mLayoutState.mOffset;
        j = m;
      } 
    } 
    k = i;
    m = j;
    if (getChildCount() > 0)
      if ((this.mShouldReverseLayout ^ this.mStackFromEnd) != 0) {
        k = fixLayoutEndGap(i, paramRecyclerView$Recycler, paramRecyclerView$State, true);
        m = j + k;
        j = fixLayoutStartGap(m, paramRecyclerView$Recycler, paramRecyclerView$State, false);
        m += j;
        k = i + k + j;
      } else {
        k = fixLayoutStartGap(j, paramRecyclerView$Recycler, paramRecyclerView$State, true);
        i += k;
        n = fixLayoutEndGap(i, paramRecyclerView$Recycler, paramRecyclerView$State, false);
        m = j + k + n;
        k = i + n;
      }  
    layoutForPredictiveAnimations(paramRecyclerView$Recycler, paramRecyclerView$State, m, k);
    if (!paramRecyclerView$State.isPreLayout()) {
      this.mOrientationHelper.onLayoutComplete();
    } else {
      this.mAnchorInfo.reset();
    } 
    this.mLastStackFromEnd = this.mStackFromEnd;
  }
  
  public void onLayoutCompleted(RecyclerView$State paramRecyclerView$State) {
    super.onLayoutCompleted(paramRecyclerView$State);
    this.mPendingSavedState = null;
    this.mPendingScrollPosition = -1;
    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
    this.mAnchorInfo.reset();
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    if (paramParcelable instanceof LinearLayoutManager$SavedState) {
      this.mPendingSavedState = (LinearLayoutManager$SavedState)paramParcelable;
      requestLayout();
    } 
  }
  
  public Parcelable onSaveInstanceState() {
    if (this.mPendingSavedState != null)
      return new LinearLayoutManager$SavedState(this.mPendingSavedState); 
    LinearLayoutManager$SavedState linearLayoutManager$SavedState = new LinearLayoutManager$SavedState();
    if (getChildCount() > 0) {
      ensureLayoutState();
      int i = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
      linearLayoutManager$SavedState.mAnchorLayoutFromEnd = i;
      if (i != 0) {
        View view1 = getChildClosestToEnd();
        linearLayoutManager$SavedState.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view1);
        linearLayoutManager$SavedState.mAnchorPosition = getPosition(view1);
        return linearLayoutManager$SavedState;
      } 
      View view = getChildClosestToStart();
      linearLayoutManager$SavedState.mAnchorPosition = getPosition(view);
      linearLayoutManager$SavedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(view) - this.mOrientationHelper.getStartAfterPadding();
      return linearLayoutManager$SavedState;
    } 
    linearLayoutManager$SavedState.invalidateAnchor();
    return linearLayoutManager$SavedState;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void prepareForDrop(View paramView1, View paramView2, int paramInt1, int paramInt2) {
    assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
    ensureLayoutState();
    resolveShouldLayoutReverse();
    paramInt1 = getPosition(paramView1);
    paramInt2 = getPosition(paramView2);
    if (paramInt1 < paramInt2) {
      paramInt1 = 1;
    } else {
      paramInt1 = -1;
    } 
    if (this.mShouldReverseLayout) {
      if (paramInt1 == 1) {
        scrollToPositionWithOffset(paramInt2, this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedStart(paramView2) + this.mOrientationHelper.getDecoratedMeasurement(paramView1));
        return;
      } 
      scrollToPositionWithOffset(paramInt2, this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(paramView2));
      return;
    } 
    if (paramInt1 == -1) {
      scrollToPositionWithOffset(paramInt2, this.mOrientationHelper.getDecoratedStart(paramView2));
      return;
    } 
    scrollToPositionWithOffset(paramInt2, this.mOrientationHelper.getDecoratedEnd(paramView2) - this.mOrientationHelper.getDecoratedMeasurement(paramView1));
  }
  
  boolean resolveIsInfinite() {
    return (this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0);
  }
  
  int scrollBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    byte b;
    if (getChildCount() == 0 || paramInt == 0)
      return 0; 
    this.mLayoutState.mRecycle = true;
    ensureLayoutState();
    if (paramInt > 0) {
      b = 1;
    } else {
      b = -1;
    } 
    int i = Math.abs(paramInt);
    updateLayoutState(b, i, true, paramRecyclerView$State);
    int j = this.mLayoutState.mScrollingOffset + fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State, false);
    if (j < 0)
      return 0; 
    if (i > j)
      paramInt = b * j; 
    this.mOrientationHelper.offsetChildren(-paramInt);
    this.mLayoutState.mLastScrollDelta = paramInt;
    return paramInt;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return (this.mOrientation == 1) ? 0 : scrollBy(paramInt, paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  public void scrollToPosition(int paramInt) {
    this.mPendingScrollPosition = paramInt;
    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
    if (this.mPendingSavedState != null)
      this.mPendingSavedState.invalidateAnchor(); 
    requestLayout();
  }
  
  public void scrollToPositionWithOffset(int paramInt1, int paramInt2) {
    this.mPendingScrollPosition = paramInt1;
    this.mPendingScrollPositionOffset = paramInt2;
    if (this.mPendingSavedState != null)
      this.mPendingSavedState.invalidateAnchor(); 
    requestLayout();
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return (this.mOrientation == 0) ? 0 : scrollBy(paramInt, paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  public void setInitialPrefetchItemCount(int paramInt) {
    this.mInitialPrefetchItemCount = paramInt;
  }
  
  public void setOrientation(int paramInt) {
    if (paramInt != 0 && paramInt != 1)
      throw new IllegalArgumentException("invalid orientation:" + paramInt); 
    assertNotInLayoutOrScroll((String)null);
    if (paramInt == this.mOrientation)
      return; 
    this.mOrientation = paramInt;
    this.mOrientationHelper = null;
    requestLayout();
  }
  
  public void setRecycleChildrenOnDetach(boolean paramBoolean) {
    this.mRecycleChildrenOnDetach = paramBoolean;
  }
  
  public void setReverseLayout(boolean paramBoolean) {
    assertNotInLayoutOrScroll((String)null);
    if (paramBoolean == this.mReverseLayout)
      return; 
    this.mReverseLayout = paramBoolean;
    requestLayout();
  }
  
  public void setSmoothScrollbarEnabled(boolean paramBoolean) {
    this.mSmoothScrollbarEnabled = paramBoolean;
  }
  
  public void setStackFromEnd(boolean paramBoolean) {
    assertNotInLayoutOrScroll((String)null);
    if (this.mStackFromEnd == paramBoolean)
      return; 
    this.mStackFromEnd = paramBoolean;
    requestLayout();
  }
  
  boolean shouldMeasureTwice() {
    return (getHeightMode() != 1073741824 && getWidthMode() != 1073741824 && hasFlexibleChildInBothOrientations());
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State, int paramInt) {
    LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(paramRecyclerView.getContext());
    linearSmoothScroller.setTargetPosition(paramInt);
    startSmoothScroll(linearSmoothScroller);
  }
  
  public boolean supportsPredictiveItemAnimations() {
    return (this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd);
  }
  
  void validateChildOrder() {
    boolean bool2 = true;
    boolean bool1 = true;
    Log.d("LinearLayoutManager", "validating child count " + getChildCount());
    if (getChildCount() >= 1) {
      int j = getPosition(getChildAt(0));
      int k = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
      if (this.mShouldReverseLayout) {
        int m = 1;
        while (true) {
          if (m < getChildCount()) {
            View view = getChildAt(m);
            int n = getPosition(view);
            int i1 = this.mOrientationHelper.getDecoratedStart(view);
            if (n < j) {
              logChildren();
              StringBuilder stringBuilder = (new StringBuilder()).append("detected invalid position. loc invalid? ");
              if (i1 >= k)
                bool1 = false; 
              throw new RuntimeException(stringBuilder.append(bool1).toString());
            } 
            if (i1 > k) {
              logChildren();
              throw new RuntimeException("detected invalid location");
            } 
            m++;
            continue;
          } 
          return;
        } 
      } 
      int i = 1;
      while (true) {
        if (i < getChildCount()) {
          View view = getChildAt(i);
          int m = getPosition(view);
          int n = this.mOrientationHelper.getDecoratedStart(view);
          if (m < j) {
            logChildren();
            StringBuilder stringBuilder = (new StringBuilder()).append("detected invalid position. loc invalid? ");
            if (n < k) {
              bool1 = bool2;
              throw new RuntimeException(stringBuilder.append(bool1).toString());
            } 
            bool1 = false;
            throw new RuntimeException(stringBuilder.append(bool1).toString());
          } 
          if (n < k) {
            logChildren();
            throw new RuntimeException("detected invalid location");
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\LinearLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */