package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.Arrays;
import java.util.BitSet;

public class StaggeredGridLayoutManager extends RecyclerView$LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {
  static final boolean DEBUG = false;
  
  @Deprecated
  public static final int GAP_HANDLING_LAZY = 1;
  
  public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
  
  public static final int GAP_HANDLING_NONE = 0;
  
  public static final int HORIZONTAL = 0;
  
  static final int INVALID_OFFSET = -2147483648;
  
  private static final float MAX_SCROLL_FACTOR = 0.33333334F;
  
  private static final String TAG = "StaggeredGridLayoutManager";
  
  public static final int VERTICAL = 1;
  
  private final StaggeredGridLayoutManager$AnchorInfo mAnchorInfo = new StaggeredGridLayoutManager$AnchorInfo(this);
  
  private final Runnable mCheckForGapsRunnable = new StaggeredGridLayoutManager$1(this);
  
  private int mFullSizeSpec;
  
  private int mGapStrategy = 2;
  
  private boolean mLaidOutInvalidFullSpan = false;
  
  private boolean mLastLayoutFromEnd;
  
  private boolean mLastLayoutRTL;
  
  @NonNull
  private final LayoutState mLayoutState;
  
  StaggeredGridLayoutManager$LazySpanLookup mLazySpanLookup = new StaggeredGridLayoutManager$LazySpanLookup();
  
  private int mOrientation;
  
  private StaggeredGridLayoutManager$SavedState mPendingSavedState;
  
  int mPendingScrollPosition = -1;
  
  int mPendingScrollPositionOffset = Integer.MIN_VALUE;
  
  private int[] mPrefetchDistances;
  
  @NonNull
  OrientationHelper mPrimaryOrientation;
  
  private BitSet mRemainingSpans;
  
  boolean mReverseLayout = false;
  
  @NonNull
  OrientationHelper mSecondaryOrientation;
  
  boolean mShouldReverseLayout = false;
  
  private int mSizePerSpan;
  
  private boolean mSmoothScrollbarEnabled = true;
  
  private int mSpanCount = -1;
  
  StaggeredGridLayoutManager$Span[] mSpans;
  
  private final Rect mTmpRect = new Rect();
  
  public StaggeredGridLayoutManager(int paramInt1, int paramInt2) {
    this.mOrientation = paramInt2;
    setSpanCount(paramInt1);
    if (this.mGapStrategy == 0)
      bool = false; 
    setAutoMeasureEnabled(bool);
    this.mLayoutState = new LayoutState();
    createOrientationHelpers();
  }
  
  public StaggeredGridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    RecyclerView$LayoutManager$Properties recyclerView$LayoutManager$Properties = getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(recyclerView$LayoutManager$Properties.orientation);
    setSpanCount(recyclerView$LayoutManager$Properties.spanCount);
    setReverseLayout(recyclerView$LayoutManager$Properties.reverseLayout);
    if (this.mGapStrategy == 0)
      bool = false; 
    setAutoMeasureEnabled(bool);
    this.mLayoutState = new LayoutState();
    createOrientationHelpers();
  }
  
  private void appendViewToAllSpans(View paramView) {
    for (int i = this.mSpanCount - 1; i >= 0; i--)
      this.mSpans[i].appendToSpan(paramView); 
  }
  
  private void applyPendingSavedState(StaggeredGridLayoutManager$AnchorInfo paramStaggeredGridLayoutManager$AnchorInfo) {
    if (this.mPendingSavedState.mSpanOffsetsSize > 0)
      if (this.mPendingSavedState.mSpanOffsetsSize == this.mSpanCount) {
        for (int i = 0; i < this.mSpanCount; i++) {
          this.mSpans[i].clear();
          int k = this.mPendingSavedState.mSpanOffsets[i];
          int j = k;
          if (k != Integer.MIN_VALUE)
            if (this.mPendingSavedState.mAnchorLayoutFromEnd) {
              j = k + this.mPrimaryOrientation.getEndAfterPadding();
            } else {
              j = k + this.mPrimaryOrientation.getStartAfterPadding();
            }  
          this.mSpans[i].setLine(j);
        } 
      } else {
        this.mPendingSavedState.invalidateSpanInfo();
        this.mPendingSavedState.mAnchorPosition = this.mPendingSavedState.mVisibleAnchorPosition;
      }  
    this.mLastLayoutRTL = this.mPendingSavedState.mLastLayoutRTL;
    setReverseLayout(this.mPendingSavedState.mReverseLayout);
    resolveShouldLayoutReverse();
    if (this.mPendingSavedState.mAnchorPosition != -1) {
      this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
      paramStaggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
    } else {
      paramStaggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
    } 
    if (this.mPendingSavedState.mSpanLookupSize > 1) {
      this.mLazySpanLookup.mData = this.mPendingSavedState.mSpanLookup;
      this.mLazySpanLookup.mFullSpanItems = this.mPendingSavedState.mFullSpanItems;
    } 
  }
  
  private void attachViewToSpans(View paramView, StaggeredGridLayoutManager$LayoutParams paramStaggeredGridLayoutManager$LayoutParams, LayoutState paramLayoutState) {
    if (paramLayoutState.mLayoutDirection == 1) {
      if (paramStaggeredGridLayoutManager$LayoutParams.mFullSpan) {
        appendViewToAllSpans(paramView);
        return;
      } 
      paramStaggeredGridLayoutManager$LayoutParams.mSpan.appendToSpan(paramView);
      return;
    } 
    if (paramStaggeredGridLayoutManager$LayoutParams.mFullSpan) {
      prependViewToAllSpans(paramView);
      return;
    } 
    paramStaggeredGridLayoutManager$LayoutParams.mSpan.prependToSpan(paramView);
  }
  
  private int calculateScrollDirectionForPosition(int paramInt) {
    boolean bool;
    byte b = -1;
    if (getChildCount() == 0)
      return this.mShouldReverseLayout ? 1 : -1; 
    if (paramInt < getFirstChildPosition()) {
      bool = true;
    } else {
      bool = false;
    } 
    return (bool != this.mShouldReverseLayout) ? b : 1;
  }
  
  private boolean checkSpanForGap(StaggeredGridLayoutManager$Span paramStaggeredGridLayoutManager$Span) {
    boolean bool = true;
    if (this.mShouldReverseLayout) {
      if (paramStaggeredGridLayoutManager$Span.getEndLine() < this.mPrimaryOrientation.getEndAfterPadding())
        return !(paramStaggeredGridLayoutManager$Span.getLayoutParams((View)paramStaggeredGridLayoutManager$Span.mViews.get(paramStaggeredGridLayoutManager$Span.mViews.size() - 1))).mFullSpan; 
    } else if (paramStaggeredGridLayoutManager$Span.getStartLine() > this.mPrimaryOrientation.getStartAfterPadding()) {
      if ((paramStaggeredGridLayoutManager$Span.getLayoutParams((View)paramStaggeredGridLayoutManager$Span.mViews.get(0))).mFullSpan)
        bool = false; 
      return bool;
    } 
    return false;
  }
  
  private int computeScrollExtent(RecyclerView$State paramRecyclerView$State) {
    boolean bool2 = true;
    if (getChildCount() == 0)
      return 0; 
    OrientationHelper orientationHelper = this.mPrimaryOrientation;
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    View view = findFirstVisibleItemClosestToStart(bool1);
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = bool2;
      return ScrollbarHelper.computeScrollExtent(paramRecyclerView$State, orientationHelper, view, findFirstVisibleItemClosestToEnd(bool1), this, this.mSmoothScrollbarEnabled);
    } 
    boolean bool1 = false;
    return ScrollbarHelper.computeScrollExtent(paramRecyclerView$State, orientationHelper, view, findFirstVisibleItemClosestToEnd(bool1), this, this.mSmoothScrollbarEnabled);
  }
  
  private int computeScrollOffset(RecyclerView$State paramRecyclerView$State) {
    boolean bool2 = true;
    if (getChildCount() == 0)
      return 0; 
    OrientationHelper orientationHelper = this.mPrimaryOrientation;
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    View view = findFirstVisibleItemClosestToStart(bool1);
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = bool2;
      return ScrollbarHelper.computeScrollOffset(paramRecyclerView$State, orientationHelper, view, findFirstVisibleItemClosestToEnd(bool1), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    } 
    boolean bool1 = false;
    return ScrollbarHelper.computeScrollOffset(paramRecyclerView$State, orientationHelper, view, findFirstVisibleItemClosestToEnd(bool1), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
  }
  
  private int computeScrollRange(RecyclerView$State paramRecyclerView$State) {
    boolean bool2 = true;
    if (getChildCount() == 0)
      return 0; 
    OrientationHelper orientationHelper = this.mPrimaryOrientation;
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    View view = findFirstVisibleItemClosestToStart(bool1);
    if (!this.mSmoothScrollbarEnabled) {
      bool1 = bool2;
      return ScrollbarHelper.computeScrollRange(paramRecyclerView$State, orientationHelper, view, findFirstVisibleItemClosestToEnd(bool1), this, this.mSmoothScrollbarEnabled);
    } 
    boolean bool1 = false;
    return ScrollbarHelper.computeScrollRange(paramRecyclerView$State, orientationHelper, view, findFirstVisibleItemClosestToEnd(bool1), this, this.mSmoothScrollbarEnabled);
  }
  
  private int convertFocusDirectionToLayoutDirection(int paramInt) {
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
  
  private StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem createFullSpanItemFromEnd(int paramInt) {
    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem();
    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan = new int[this.mSpanCount];
    for (int i = 0; i < this.mSpanCount; i++)
      staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan[i] = paramInt - this.mSpans[i].getEndLine(paramInt); 
    return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
  }
  
  private StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem createFullSpanItemFromStart(int paramInt) {
    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem();
    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan = new int[this.mSpanCount];
    for (int i = 0; i < this.mSpanCount; i++)
      staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan[i] = this.mSpans[i].getStartLine(paramInt) - paramInt; 
    return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
  }
  
  private void createOrientationHelpers() {
    this.mPrimaryOrientation = OrientationHelper.createOrientationHelper(this, this.mOrientation);
    this.mSecondaryOrientation = OrientationHelper.createOrientationHelper(this, 1 - this.mOrientation);
  }
  
  private int fill(RecyclerView$Recycler paramRecyclerView$Recycler, LayoutState paramLayoutState, RecyclerView$State paramRecyclerView$State) {
    int i;
    int k;
    this.mRemainingSpans.set(0, this.mSpanCount, true);
    if (this.mLayoutState.mInfinite) {
      if (paramLayoutState.mLayoutDirection == 1) {
        i = Integer.MAX_VALUE;
      } else {
        i = Integer.MIN_VALUE;
      } 
    } else if (paramLayoutState.mLayoutDirection == 1) {
      i = paramLayoutState.mEndLine + paramLayoutState.mAvailable;
    } else {
      i = paramLayoutState.mStartLine - paramLayoutState.mAvailable;
    } 
    updateAllRemainingSpans(paramLayoutState.mLayoutDirection, i);
    if (this.mShouldReverseLayout) {
      k = this.mPrimaryOrientation.getEndAfterPadding();
    } else {
      k = this.mPrimaryOrientation.getStartAfterPadding();
    } 
    int j = 0;
    while (true) {
      if (paramLayoutState.hasMore(paramRecyclerView$State) && (this.mLayoutState.mInfinite || !this.mRemainingSpans.isEmpty())) {
        int m;
        int n;
        int i1;
        StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span;
        View view = paramLayoutState.next(paramRecyclerView$Recycler);
        StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams)view.getLayoutParams();
        int i2 = staggeredGridLayoutManager$LayoutParams.getViewLayoutPosition();
        j = this.mLazySpanLookup.getSpan(i2);
        if (j == -1) {
          i1 = 1;
        } else {
          i1 = 0;
        } 
        if (i1) {
          if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            staggeredGridLayoutManager$Span = this.mSpans[0];
          } else {
            staggeredGridLayoutManager$Span = getNextSpan(paramLayoutState);
          } 
          this.mLazySpanLookup.setSpan(i2, staggeredGridLayoutManager$Span);
        } else {
          staggeredGridLayoutManager$Span = this.mSpans[j];
        } 
        staggeredGridLayoutManager$LayoutParams.mSpan = staggeredGridLayoutManager$Span;
        if (paramLayoutState.mLayoutDirection == 1) {
          addView(view);
        } else {
          addView(view, 0);
        } 
        measureChildWithDecorationsAndMargin(view, staggeredGridLayoutManager$LayoutParams, false);
        if (paramLayoutState.mLayoutDirection == 1) {
          if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            j = getMaxEnd(k);
          } else {
            j = staggeredGridLayoutManager$Span.getEndLine(k);
          } 
          n = j + this.mPrimaryOrientation.getDecoratedMeasurement(view);
          if (i1 && staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = createFullSpanItemFromEnd(j);
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapDir = -1;
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i2;
            this.mLazySpanLookup.addFullSpanItem(staggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
            m = j;
          } else {
            m = j;
          } 
        } else {
          if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            j = getMinStart(k);
          } else {
            j = staggeredGridLayoutManager$Span.getStartLine(k);
          } 
          m = j - this.mPrimaryOrientation.getDecoratedMeasurement(view);
          if (i1 && staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = createFullSpanItemFromStart(j);
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapDir = 1;
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i2;
            this.mLazySpanLookup.addFullSpanItem(staggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
          } 
          n = j;
        } 
        if (staggeredGridLayoutManager$LayoutParams.mFullSpan && paramLayoutState.mItemDirection == -1)
          if (i1) {
            this.mLaidOutInvalidFullSpan = true;
          } else {
            if (paramLayoutState.mLayoutDirection == 1) {
              if (!areAllEndsEqual()) {
                j = 1;
              } else {
                j = 0;
              } 
            } else if (!areAllStartsEqual()) {
              j = 1;
            } else {
              j = 0;
            } 
            if (j != 0) {
              StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mLazySpanLookup.getFullSpanItem(i2);
              if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem != null)
                staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mHasUnwantedGapAfter = true; 
              this.mLaidOutInvalidFullSpan = true;
            } 
          }  
        attachViewToSpans(view, staggeredGridLayoutManager$LayoutParams, paramLayoutState);
        if (isLayoutRTL() && this.mOrientation == 1) {
          if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            j = this.mSecondaryOrientation.getEndAfterPadding();
          } else {
            j = this.mSecondaryOrientation.getEndAfterPadding() - (this.mSpanCount - 1 - staggeredGridLayoutManager$Span.mIndex) * this.mSizePerSpan;
          } 
          i2 = j - this.mSecondaryOrientation.getDecoratedMeasurement(view);
          i1 = j;
          j = i2;
        } else {
          if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            j = this.mSecondaryOrientation.getStartAfterPadding();
          } else {
            j = staggeredGridLayoutManager$Span.mIndex * this.mSizePerSpan + this.mSecondaryOrientation.getStartAfterPadding();
          } 
          i1 = j + this.mSecondaryOrientation.getDecoratedMeasurement(view);
        } 
        if (this.mOrientation == 1) {
          layoutDecoratedWithMargins(view, j, m, i1, n);
        } else {
          layoutDecoratedWithMargins(view, m, j, n, i1);
        } 
        if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
          updateAllRemainingSpans(this.mLayoutState.mLayoutDirection, i);
        } else {
          updateRemainingSpans(staggeredGridLayoutManager$Span, this.mLayoutState.mLayoutDirection, i);
        } 
        recycle(paramRecyclerView$Recycler, this.mLayoutState);
        if (this.mLayoutState.mStopInFocusable && view.hasFocusable())
          if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            this.mRemainingSpans.clear();
          } else {
            this.mRemainingSpans.set(staggeredGridLayoutManager$Span.mIndex, false);
          }  
        j = 1;
        continue;
      } 
      if (j == 0)
        recycle(paramRecyclerView$Recycler, this.mLayoutState); 
      if (this.mLayoutState.mLayoutDirection == -1) {
        i = getMinStart(this.mPrimaryOrientation.getStartAfterPadding());
        i = this.mPrimaryOrientation.getStartAfterPadding() - i;
      } else {
        i = getMaxEnd(this.mPrimaryOrientation.getEndAfterPadding()) - this.mPrimaryOrientation.getEndAfterPadding();
      } 
      return (i > 0) ? Math.min(paramLayoutState.mAvailable, i) : 0;
    } 
  }
  
  private int findFirstReferenceChildPosition(int paramInt) {
    int j = getChildCount();
    for (int i = 0; i < j; i++) {
      int k = getPosition(getChildAt(i));
      if (k >= 0 && k < paramInt)
        return k; 
    } 
    return 0;
  }
  
  private int findLastReferenceChildPosition(int paramInt) {
    for (int i = getChildCount() - 1; i >= 0; i--) {
      int j = getPosition(getChildAt(i));
      if (j >= 0 && j < paramInt)
        return j; 
    } 
    return 0;
  }
  
  private void fixEndGap(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, boolean paramBoolean) {
    int i = getMaxEnd(-2147483648);
    if (i != Integer.MIN_VALUE) {
      i = this.mPrimaryOrientation.getEndAfterPadding() - i;
      if (i > 0) {
        i -= -scrollBy(-i, paramRecyclerView$Recycler, paramRecyclerView$State);
        if (paramBoolean && i > 0) {
          this.mPrimaryOrientation.offsetChildren(i);
          return;
        } 
      } 
    } 
  }
  
  private void fixStartGap(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, boolean paramBoolean) {
    int i = getMinStart(2147483647);
    if (i != Integer.MAX_VALUE) {
      i -= this.mPrimaryOrientation.getStartAfterPadding();
      if (i > 0) {
        i -= scrollBy(i, paramRecyclerView$Recycler, paramRecyclerView$State);
        if (paramBoolean && i > 0) {
          this.mPrimaryOrientation.offsetChildren(-i);
          return;
        } 
      } 
    } 
  }
  
  private int getMaxEnd(int paramInt) {
    int j = this.mSpans[0].getEndLine(paramInt);
    int i = 1;
    while (i < this.mSpanCount) {
      int m = this.mSpans[i].getEndLine(paramInt);
      int k = j;
      if (m > j)
        k = m; 
      i++;
      j = k;
    } 
    return j;
  }
  
  private int getMaxStart(int paramInt) {
    int j = this.mSpans[0].getStartLine(paramInt);
    int i = 1;
    while (i < this.mSpanCount) {
      int m = this.mSpans[i].getStartLine(paramInt);
      int k = j;
      if (m > j)
        k = m; 
      i++;
      j = k;
    } 
    return j;
  }
  
  private int getMinEnd(int paramInt) {
    int j = this.mSpans[0].getEndLine(paramInt);
    int i = 1;
    while (i < this.mSpanCount) {
      int m = this.mSpans[i].getEndLine(paramInt);
      int k = j;
      if (m < j)
        k = m; 
      i++;
      j = k;
    } 
    return j;
  }
  
  private int getMinStart(int paramInt) {
    int j = this.mSpans[0].getStartLine(paramInt);
    int i = 1;
    while (i < this.mSpanCount) {
      int m = this.mSpans[i].getStartLine(paramInt);
      int k = j;
      if (m < j)
        k = m; 
      i++;
      j = k;
    } 
    return j;
  }
  
  private StaggeredGridLayoutManager$Span getNextSpan(LayoutState paramLayoutState) {
    int i;
    int j;
    StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span;
    LayoutState layoutState2 = null;
    LayoutState layoutState1 = null;
    byte b = -1;
    if (preferLastSpan(paramLayoutState.mLayoutDirection)) {
      i = this.mSpanCount - 1;
      j = -1;
    } else {
      j = this.mSpanCount;
      i = 0;
      b = 1;
    } 
    if (paramLayoutState.mLayoutDirection == 1) {
      int n = this.mPrimaryOrientation.getStartAfterPadding();
      int m = Integer.MAX_VALUE;
      int k = i;
      paramLayoutState = layoutState1;
      i = m;
      while (true) {
        layoutState1 = paramLayoutState;
        if (k != j) {
          staggeredGridLayoutManager$Span = this.mSpans[k];
          m = staggeredGridLayoutManager$Span.getEndLine(n);
          if (m < i) {
            StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span1 = staggeredGridLayoutManager$Span;
            i = m;
          } 
          k += b;
          continue;
        } 
        break;
      } 
    } else {
      int n = this.mPrimaryOrientation.getEndAfterPadding();
      int m = Integer.MIN_VALUE;
      int k = i;
      paramLayoutState = layoutState2;
      i = m;
      while (true) {
        layoutState1 = paramLayoutState;
        if (k != j) {
          staggeredGridLayoutManager$Span = this.mSpans[k];
          m = staggeredGridLayoutManager$Span.getStartLine(n);
          if (m > i) {
            StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span1 = staggeredGridLayoutManager$Span;
            i = m;
          } 
          k += b;
          continue;
        } 
        break;
      } 
    } 
    return staggeredGridLayoutManager$Span;
  }
  
  private void handleUpdate(int paramInt1, int paramInt2, int paramInt3) {
    int i;
    int j;
    int k;
    if (this.mShouldReverseLayout) {
      k = getLastChildPosition();
    } else {
      k = getFirstChildPosition();
    } 
    if (paramInt3 == 8) {
      if (paramInt1 < paramInt2) {
        j = paramInt2 + 1;
        i = paramInt1;
      } else {
        j = paramInt1 + 1;
        i = paramInt2;
      } 
    } else {
      j = paramInt1 + paramInt2;
      i = paramInt1;
    } 
    this.mLazySpanLookup.invalidateAfter(i);
    switch (paramInt3) {
      default:
        if (j <= k)
          return; 
        break;
      case 1:
        this.mLazySpanLookup.offsetForAddition(paramInt1, paramInt2);
      case 2:
        this.mLazySpanLookup.offsetForRemoval(paramInt1, paramInt2);
      case 8:
        this.mLazySpanLookup.offsetForRemoval(paramInt1, 1);
        this.mLazySpanLookup.offsetForAddition(paramInt2, 1);
    } 
    if (this.mShouldReverseLayout) {
      paramInt1 = getFirstChildPosition();
    } else {
      paramInt1 = getLastChildPosition();
    } 
    if (i <= paramInt1) {
      requestLayout();
      return;
    } 
  }
  
  private void measureChildWithDecorationsAndMargin(View paramView, int paramInt1, int paramInt2, boolean paramBoolean) {
    calculateItemDecorationsForChild(paramView, this.mTmpRect);
    StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams)paramView.getLayoutParams();
    paramInt1 = updateSpecWithExtra(paramInt1, staggeredGridLayoutManager$LayoutParams.leftMargin + this.mTmpRect.left, staggeredGridLayoutManager$LayoutParams.rightMargin + this.mTmpRect.right);
    paramInt2 = updateSpecWithExtra(paramInt2, staggeredGridLayoutManager$LayoutParams.topMargin + this.mTmpRect.top, staggeredGridLayoutManager$LayoutParams.bottomMargin + this.mTmpRect.bottom);
    if (paramBoolean) {
      paramBoolean = shouldReMeasureChild(paramView, paramInt1, paramInt2, staggeredGridLayoutManager$LayoutParams);
    } else {
      paramBoolean = shouldMeasureChild(paramView, paramInt1, paramInt2, staggeredGridLayoutManager$LayoutParams);
    } 
    if (paramBoolean)
      paramView.measure(paramInt1, paramInt2); 
  }
  
  private void measureChildWithDecorationsAndMargin(View paramView, StaggeredGridLayoutManager$LayoutParams paramStaggeredGridLayoutManager$LayoutParams, boolean paramBoolean) {
    if (paramStaggeredGridLayoutManager$LayoutParams.mFullSpan) {
      if (this.mOrientation == 1) {
        measureChildWithDecorationsAndMargin(paramView, this.mFullSizeSpec, getChildMeasureSpec(getHeight(), getHeightMode(), 0, paramStaggeredGridLayoutManager$LayoutParams.height, true), paramBoolean);
        return;
      } 
      measureChildWithDecorationsAndMargin(paramView, getChildMeasureSpec(getWidth(), getWidthMode(), 0, paramStaggeredGridLayoutManager$LayoutParams.width, true), this.mFullSizeSpec, paramBoolean);
      return;
    } 
    if (this.mOrientation == 1) {
      measureChildWithDecorationsAndMargin(paramView, getChildMeasureSpec(this.mSizePerSpan, getWidthMode(), 0, paramStaggeredGridLayoutManager$LayoutParams.width, false), getChildMeasureSpec(getHeight(), getHeightMode(), 0, paramStaggeredGridLayoutManager$LayoutParams.height, true), paramBoolean);
      return;
    } 
    measureChildWithDecorationsAndMargin(paramView, getChildMeasureSpec(getWidth(), getWidthMode(), 0, paramStaggeredGridLayoutManager$LayoutParams.width, true), getChildMeasureSpec(this.mSizePerSpan, getHeightMode(), 0, paramStaggeredGridLayoutManager$LayoutParams.height, false), paramBoolean);
  }
  
  private void onLayoutChildren(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mAnchorInfo : Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;
    //   4: astore #5
    //   6: aload_0
    //   7: getfield mPendingSavedState : Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    //   10: ifnonnull -> 21
    //   13: aload_0
    //   14: getfield mPendingScrollPosition : I
    //   17: iconst_m1
    //   18: if_icmpeq -> 39
    //   21: aload_2
    //   22: invokevirtual getItemCount : ()I
    //   25: ifne -> 39
    //   28: aload_0
    //   29: aload_1
    //   30: invokevirtual removeAndRecycleAllViews : (Landroid/support/v7/widget/RecyclerView$Recycler;)V
    //   33: aload #5
    //   35: invokevirtual reset : ()V
    //   38: return
    //   39: aload #5
    //   41: getfield mValid : Z
    //   44: ifeq -> 62
    //   47: aload_0
    //   48: getfield mPendingScrollPosition : I
    //   51: iconst_m1
    //   52: if_icmpne -> 62
    //   55: aload_0
    //   56: getfield mPendingSavedState : Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    //   59: ifnull -> 241
    //   62: iconst_1
    //   63: istore #4
    //   65: iload #4
    //   67: ifeq -> 101
    //   70: aload #5
    //   72: invokevirtual reset : ()V
    //   75: aload_0
    //   76: getfield mPendingSavedState : Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    //   79: ifnull -> 247
    //   82: aload_0
    //   83: aload #5
    //   85: invokespecial applyPendingSavedState : (Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    //   88: aload_0
    //   89: aload_2
    //   90: aload #5
    //   92: invokevirtual updateAnchorInfoForLayout : (Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    //   95: aload #5
    //   97: iconst_1
    //   98: putfield mValid : Z
    //   101: aload_0
    //   102: getfield mPendingSavedState : Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    //   105: ifnonnull -> 152
    //   108: aload_0
    //   109: getfield mPendingScrollPosition : I
    //   112: iconst_m1
    //   113: if_icmpne -> 152
    //   116: aload #5
    //   118: getfield mLayoutFromEnd : Z
    //   121: aload_0
    //   122: getfield mLastLayoutFromEnd : Z
    //   125: if_icmpne -> 139
    //   128: aload_0
    //   129: invokevirtual isLayoutRTL : ()Z
    //   132: aload_0
    //   133: getfield mLastLayoutRTL : Z
    //   136: if_icmpeq -> 152
    //   139: aload_0
    //   140: getfield mLazySpanLookup : Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;
    //   143: invokevirtual clear : ()V
    //   146: aload #5
    //   148: iconst_1
    //   149: putfield mInvalidateOffsets : Z
    //   152: aload_0
    //   153: invokevirtual getChildCount : ()I
    //   156: ifle -> 329
    //   159: aload_0
    //   160: getfield mPendingSavedState : Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    //   163: ifnull -> 177
    //   166: aload_0
    //   167: getfield mPendingSavedState : Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    //   170: getfield mSpanOffsetsSize : I
    //   173: iconst_1
    //   174: if_icmpge -> 329
    //   177: aload #5
    //   179: getfield mInvalidateOffsets : Z
    //   182: ifeq -> 263
    //   185: iconst_0
    //   186: istore #4
    //   188: iload #4
    //   190: aload_0
    //   191: getfield mSpanCount : I
    //   194: if_icmpge -> 329
    //   197: aload_0
    //   198: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   201: iload #4
    //   203: aaload
    //   204: invokevirtual clear : ()V
    //   207: aload #5
    //   209: getfield mOffset : I
    //   212: ldc -2147483648
    //   214: if_icmpeq -> 232
    //   217: aload_0
    //   218: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   221: iload #4
    //   223: aaload
    //   224: aload #5
    //   226: getfield mOffset : I
    //   229: invokevirtual setLine : (I)V
    //   232: iload #4
    //   234: iconst_1
    //   235: iadd
    //   236: istore #4
    //   238: goto -> 188
    //   241: iconst_0
    //   242: istore #4
    //   244: goto -> 65
    //   247: aload_0
    //   248: invokespecial resolveShouldLayoutReverse : ()V
    //   251: aload #5
    //   253: aload_0
    //   254: getfield mShouldReverseLayout : Z
    //   257: putfield mLayoutFromEnd : Z
    //   260: goto -> 88
    //   263: iload #4
    //   265: ifne -> 278
    //   268: aload_0
    //   269: getfield mAnchorInfo : Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;
    //   272: getfield mSpanReferenceLines : [I
    //   275: ifnonnull -> 577
    //   278: iconst_0
    //   279: istore #4
    //   281: iload #4
    //   283: aload_0
    //   284: getfield mSpanCount : I
    //   287: if_icmpge -> 318
    //   290: aload_0
    //   291: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   294: iload #4
    //   296: aaload
    //   297: aload_0
    //   298: getfield mShouldReverseLayout : Z
    //   301: aload #5
    //   303: getfield mOffset : I
    //   306: invokevirtual cacheReferenceLineAndClear : (ZI)V
    //   309: iload #4
    //   311: iconst_1
    //   312: iadd
    //   313: istore #4
    //   315: goto -> 281
    //   318: aload_0
    //   319: getfield mAnchorInfo : Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;
    //   322: aload_0
    //   323: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   326: invokevirtual saveSpanReferenceLines : ([Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)V
    //   329: aload_0
    //   330: aload_1
    //   331: invokevirtual detachAndScrapAttachedViews : (Landroid/support/v7/widget/RecyclerView$Recycler;)V
    //   334: aload_0
    //   335: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   338: iconst_0
    //   339: putfield mRecycle : Z
    //   342: aload_0
    //   343: iconst_0
    //   344: putfield mLaidOutInvalidFullSpan : Z
    //   347: aload_0
    //   348: aload_0
    //   349: getfield mSecondaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   352: invokevirtual getTotalSpace : ()I
    //   355: invokevirtual updateMeasureSpecs : (I)V
    //   358: aload_0
    //   359: aload #5
    //   361: getfield mPosition : I
    //   364: aload_2
    //   365: invokespecial updateLayoutState : (ILandroid/support/v7/widget/RecyclerView$State;)V
    //   368: aload #5
    //   370: getfield mLayoutFromEnd : Z
    //   373: ifeq -> 627
    //   376: aload_0
    //   377: iconst_m1
    //   378: invokespecial setLayoutStateDirection : (I)V
    //   381: aload_0
    //   382: aload_1
    //   383: aload_0
    //   384: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   387: aload_2
    //   388: invokespecial fill : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I
    //   391: pop
    //   392: aload_0
    //   393: iconst_1
    //   394: invokespecial setLayoutStateDirection : (I)V
    //   397: aload_0
    //   398: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   401: aload #5
    //   403: getfield mPosition : I
    //   406: aload_0
    //   407: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   410: getfield mItemDirection : I
    //   413: iadd
    //   414: putfield mCurrentPosition : I
    //   417: aload_0
    //   418: aload_1
    //   419: aload_0
    //   420: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   423: aload_2
    //   424: invokespecial fill : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I
    //   427: pop
    //   428: aload_0
    //   429: invokespecial repositionToWrapContentIfNecessary : ()V
    //   432: aload_0
    //   433: invokevirtual getChildCount : ()I
    //   436: ifle -> 460
    //   439: aload_0
    //   440: getfield mShouldReverseLayout : Z
    //   443: ifeq -> 682
    //   446: aload_0
    //   447: aload_1
    //   448: aload_2
    //   449: iconst_1
    //   450: invokespecial fixEndGap : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    //   453: aload_0
    //   454: aload_1
    //   455: aload_2
    //   456: iconst_0
    //   457: invokespecial fixStartGap : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    //   460: iload_3
    //   461: ifeq -> 705
    //   464: aload_2
    //   465: invokevirtual isPreLayout : ()Z
    //   468: ifne -> 705
    //   471: aload_0
    //   472: getfield mGapStrategy : I
    //   475: ifeq -> 699
    //   478: aload_0
    //   479: invokevirtual getChildCount : ()I
    //   482: ifle -> 699
    //   485: aload_0
    //   486: getfield mLaidOutInvalidFullSpan : Z
    //   489: ifne -> 499
    //   492: aload_0
    //   493: invokevirtual hasGapsToFix : ()Landroid/view/View;
    //   496: ifnull -> 699
    //   499: iconst_1
    //   500: istore #4
    //   502: iload #4
    //   504: ifeq -> 705
    //   507: aload_0
    //   508: aload_0
    //   509: getfield mCheckForGapsRunnable : Ljava/lang/Runnable;
    //   512: invokevirtual removeCallbacks : (Ljava/lang/Runnable;)Z
    //   515: pop
    //   516: aload_0
    //   517: invokevirtual checkForGaps : ()Z
    //   520: ifeq -> 705
    //   523: iconst_1
    //   524: istore #4
    //   526: aload_2
    //   527: invokevirtual isPreLayout : ()Z
    //   530: ifeq -> 540
    //   533: aload_0
    //   534: getfield mAnchorInfo : Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;
    //   537: invokevirtual reset : ()V
    //   540: aload_0
    //   541: aload #5
    //   543: getfield mLayoutFromEnd : Z
    //   546: putfield mLastLayoutFromEnd : Z
    //   549: aload_0
    //   550: aload_0
    //   551: invokevirtual isLayoutRTL : ()Z
    //   554: putfield mLastLayoutRTL : Z
    //   557: iload #4
    //   559: ifeq -> 38
    //   562: aload_0
    //   563: getfield mAnchorInfo : Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;
    //   566: invokevirtual reset : ()V
    //   569: aload_0
    //   570: aload_1
    //   571: aload_2
    //   572: iconst_0
    //   573: invokespecial onLayoutChildren : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    //   576: return
    //   577: iconst_0
    //   578: istore #4
    //   580: iload #4
    //   582: aload_0
    //   583: getfield mSpanCount : I
    //   586: if_icmpge -> 329
    //   589: aload_0
    //   590: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   593: iload #4
    //   595: aaload
    //   596: astore #6
    //   598: aload #6
    //   600: invokevirtual clear : ()V
    //   603: aload #6
    //   605: aload_0
    //   606: getfield mAnchorInfo : Landroid/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;
    //   609: getfield mSpanReferenceLines : [I
    //   612: iload #4
    //   614: iaload
    //   615: invokevirtual setLine : (I)V
    //   618: iload #4
    //   620: iconst_1
    //   621: iadd
    //   622: istore #4
    //   624: goto -> 580
    //   627: aload_0
    //   628: iconst_1
    //   629: invokespecial setLayoutStateDirection : (I)V
    //   632: aload_0
    //   633: aload_1
    //   634: aload_0
    //   635: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   638: aload_2
    //   639: invokespecial fill : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I
    //   642: pop
    //   643: aload_0
    //   644: iconst_m1
    //   645: invokespecial setLayoutStateDirection : (I)V
    //   648: aload_0
    //   649: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   652: aload #5
    //   654: getfield mPosition : I
    //   657: aload_0
    //   658: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   661: getfield mItemDirection : I
    //   664: iadd
    //   665: putfield mCurrentPosition : I
    //   668: aload_0
    //   669: aload_1
    //   670: aload_0
    //   671: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   674: aload_2
    //   675: invokespecial fill : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I
    //   678: pop
    //   679: goto -> 428
    //   682: aload_0
    //   683: aload_1
    //   684: aload_2
    //   685: iconst_1
    //   686: invokespecial fixStartGap : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    //   689: aload_0
    //   690: aload_1
    //   691: aload_2
    //   692: iconst_0
    //   693: invokespecial fixEndGap : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    //   696: goto -> 460
    //   699: iconst_0
    //   700: istore #4
    //   702: goto -> 502
    //   705: iconst_0
    //   706: istore #4
    //   708: goto -> 526
  }
  
  private boolean preferLastSpan(int paramInt) {
    boolean bool;
    if (this.mOrientation == 0) {
      if (paramInt == -1) {
        bool = true;
      } else {
        bool = false;
      } 
      return !(bool == this.mShouldReverseLayout);
    } 
    if (paramInt == -1) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool == this.mShouldReverseLayout) {
      bool = true;
    } else {
      bool = false;
    } 
    return !(bool != isLayoutRTL());
  }
  
  private void prependViewToAllSpans(View paramView) {
    for (int i = this.mSpanCount - 1; i >= 0; i--)
      this.mSpans[i].prependToSpan(paramView); 
  }
  
  private void recycle(RecyclerView$Recycler paramRecyclerView$Recycler, LayoutState paramLayoutState) {
    if (!paramLayoutState.mRecycle || paramLayoutState.mInfinite)
      return; 
    if (paramLayoutState.mAvailable == 0) {
      if (paramLayoutState.mLayoutDirection == -1) {
        recycleFromEnd(paramRecyclerView$Recycler, paramLayoutState.mEndLine);
        return;
      } 
      recycleFromStart(paramRecyclerView$Recycler, paramLayoutState.mStartLine);
      return;
    } 
    if (paramLayoutState.mLayoutDirection == -1) {
      int j = paramLayoutState.mStartLine - getMaxStart(paramLayoutState.mStartLine);
      if (j < 0) {
        j = paramLayoutState.mEndLine;
      } else {
        j = paramLayoutState.mEndLine - Math.min(j, paramLayoutState.mAvailable);
      } 
      recycleFromEnd(paramRecyclerView$Recycler, j);
      return;
    } 
    int i = getMinEnd(paramLayoutState.mEndLine) - paramLayoutState.mEndLine;
    if (i < 0) {
      i = paramLayoutState.mStartLine;
    } else {
      int j = paramLayoutState.mStartLine;
      i = Math.min(i, paramLayoutState.mAvailable) + j;
    } 
    recycleFromStart(paramRecyclerView$Recycler, i);
  }
  
  private void recycleFromEnd(RecyclerView$Recycler paramRecyclerView$Recycler, int paramInt) {
    int i = getChildCount() - 1;
    while (true) {
      if (i >= 0) {
        View view = getChildAt(i);
        if (this.mPrimaryOrientation.getDecoratedStart(view) >= paramInt) {
          if (this.mPrimaryOrientation.getTransformedStartWithDecoration(view) >= paramInt) {
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams)view.getLayoutParams();
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
              int j;
              for (j = 0; j < this.mSpanCount; j++) {
                if ((this.mSpans[j]).mViews.size() == 1)
                  return; 
              } 
              for (j = 0; j < this.mSpanCount; j++)
                this.mSpans[j].popEnd(); 
            } else if (staggeredGridLayoutManager$LayoutParams.mSpan.mViews.size() != 1) {
              staggeredGridLayoutManager$LayoutParams.mSpan.popEnd();
            } else {
              continue;
            } 
            removeAndRecycleView(view, paramRecyclerView$Recycler);
            i--;
            continue;
          } 
          continue;
        } 
        continue;
      } 
      continue;
    } 
  }
  
  private void recycleFromStart(RecyclerView$Recycler paramRecyclerView$Recycler, int paramInt) {
    while (true) {
      if (getChildCount() > 0) {
        View view = getChildAt(0);
        if (this.mPrimaryOrientation.getDecoratedEnd(view) <= paramInt) {
          if (this.mPrimaryOrientation.getTransformedEndWithDecoration(view) <= paramInt) {
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams)view.getLayoutParams();
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
              int i;
              for (i = 0; i < this.mSpanCount; i++) {
                if ((this.mSpans[i]).mViews.size() == 1)
                  return; 
              } 
              for (i = 0; i < this.mSpanCount; i++)
                this.mSpans[i].popStart(); 
            } else if (staggeredGridLayoutManager$LayoutParams.mSpan.mViews.size() != 1) {
              staggeredGridLayoutManager$LayoutParams.mSpan.popStart();
            } else {
              continue;
            } 
            removeAndRecycleView(view, paramRecyclerView$Recycler);
            continue;
          } 
          continue;
        } 
        continue;
      } 
      continue;
    } 
  }
  
  private void repositionToWrapContentIfNecessary() {
    if (this.mSecondaryOrientation.getMode() != 1073741824) {
      float f = 0.0F;
      int k = getChildCount();
      int i;
      for (i = 0; i < k; i++) {
        View view = getChildAt(i);
        float f1 = this.mSecondaryOrientation.getDecoratedMeasurement(view);
        if (f1 >= f) {
          if (((StaggeredGridLayoutManager$LayoutParams)view.getLayoutParams()).isFullSpan())
            f1 = 1.0F * f1 / this.mSpanCount; 
          f = Math.max(f, f1);
        } 
      } 
      int m = this.mSizePerSpan;
      int j = Math.round(this.mSpanCount * f);
      i = j;
      if (this.mSecondaryOrientation.getMode() == Integer.MIN_VALUE)
        i = Math.min(j, this.mSecondaryOrientation.getTotalSpace()); 
      updateMeasureSpecs(i);
      if (this.mSizePerSpan != m) {
        i = 0;
        while (true) {
          if (i < k) {
            View view = getChildAt(i);
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams)view.getLayoutParams();
            if (!staggeredGridLayoutManager$LayoutParams.mFullSpan)
              if (isLayoutRTL() && this.mOrientation == 1) {
                view.offsetLeftAndRight(-(this.mSpanCount - 1 - staggeredGridLayoutManager$LayoutParams.mSpan.mIndex) * this.mSizePerSpan - -(this.mSpanCount - 1 - staggeredGridLayoutManager$LayoutParams.mSpan.mIndex) * m);
              } else {
                j = staggeredGridLayoutManager$LayoutParams.mSpan.mIndex * this.mSizePerSpan;
                int n = staggeredGridLayoutManager$LayoutParams.mSpan.mIndex * m;
                if (this.mOrientation == 1) {
                  view.offsetLeftAndRight(j - n);
                } else {
                  view.offsetTopAndBottom(j - n);
                } 
              }  
            i++;
            continue;
          } 
          return;
        } 
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
  
  private void setLayoutStateDirection(int paramInt) {
    boolean bool1;
    boolean bool = true;
    this.mLayoutState.mLayoutDirection = paramInt;
    LayoutState layoutState = this.mLayoutState;
    boolean bool2 = this.mShouldReverseLayout;
    if (paramInt == -1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (bool2 == bool1) {
      paramInt = bool;
    } else {
      paramInt = -1;
    } 
    layoutState.mItemDirection = paramInt;
  }
  
  private void updateAllRemainingSpans(int paramInt1, int paramInt2) {
    for (int i = 0; i < this.mSpanCount; i++) {
      if (!(this.mSpans[i]).mViews.isEmpty())
        updateRemainingSpans(this.mSpans[i], paramInt1, paramInt2); 
    } 
  }
  
  private boolean updateAnchorFromChildren(RecyclerView$State paramRecyclerView$State, StaggeredGridLayoutManager$AnchorInfo paramStaggeredGridLayoutManager$AnchorInfo) {
    if (this.mLastLayoutFromEnd) {
      int j = findLastReferenceChildPosition(paramRecyclerView$State.getItemCount());
      paramStaggeredGridLayoutManager$AnchorInfo.mPosition = j;
      paramStaggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
      return true;
    } 
    int i = findFirstReferenceChildPosition(paramRecyclerView$State.getItemCount());
    paramStaggeredGridLayoutManager$AnchorInfo.mPosition = i;
    paramStaggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
    return true;
  }
  
  private void updateLayoutState(int paramInt, RecyclerView$State paramRecyclerView$State) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #5
    //   3: aload_0
    //   4: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   7: iconst_0
    //   8: putfield mAvailable : I
    //   11: aload_0
    //   12: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   15: iload_1
    //   16: putfield mCurrentPosition : I
    //   19: aload_0
    //   20: invokevirtual isSmoothScrolling : ()Z
    //   23: ifeq -> 212
    //   26: aload_2
    //   27: invokevirtual getTargetScrollPosition : ()I
    //   30: istore_3
    //   31: iload_3
    //   32: iconst_m1
    //   33: if_icmpeq -> 212
    //   36: aload_0
    //   37: getfield mShouldReverseLayout : Z
    //   40: istore #6
    //   42: iload_3
    //   43: iload_1
    //   44: if_icmpge -> 165
    //   47: iconst_1
    //   48: istore #4
    //   50: iload #6
    //   52: iload #4
    //   54: if_icmpne -> 171
    //   57: aload_0
    //   58: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   61: invokevirtual getTotalSpace : ()I
    //   64: istore_1
    //   65: iconst_0
    //   66: istore_3
    //   67: aload_0
    //   68: invokevirtual getClipToPadding : ()Z
    //   71: ifeq -> 184
    //   74: aload_0
    //   75: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   78: aload_0
    //   79: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   82: invokevirtual getStartAfterPadding : ()I
    //   85: iload_3
    //   86: isub
    //   87: putfield mStartLine : I
    //   90: aload_0
    //   91: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   94: iload_1
    //   95: aload_0
    //   96: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   99: invokevirtual getEndAfterPadding : ()I
    //   102: iadd
    //   103: putfield mEndLine : I
    //   106: aload_0
    //   107: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   110: iconst_0
    //   111: putfield mStopInFocusable : Z
    //   114: aload_0
    //   115: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   118: iconst_1
    //   119: putfield mRecycle : Z
    //   122: aload_0
    //   123: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   126: astore_2
    //   127: iload #5
    //   129: istore #4
    //   131: aload_0
    //   132: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   135: invokevirtual getMode : ()I
    //   138: ifne -> 158
    //   141: iload #5
    //   143: istore #4
    //   145: aload_0
    //   146: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   149: invokevirtual getEnd : ()I
    //   152: ifne -> 158
    //   155: iconst_1
    //   156: istore #4
    //   158: aload_2
    //   159: iload #4
    //   161: putfield mInfinite : Z
    //   164: return
    //   165: iconst_0
    //   166: istore #4
    //   168: goto -> 50
    //   171: aload_0
    //   172: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   175: invokevirtual getTotalSpace : ()I
    //   178: istore_3
    //   179: iconst_0
    //   180: istore_1
    //   181: goto -> 67
    //   184: aload_0
    //   185: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   188: iload_1
    //   189: aload_0
    //   190: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   193: invokevirtual getEnd : ()I
    //   196: iadd
    //   197: putfield mEndLine : I
    //   200: aload_0
    //   201: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   204: iload_3
    //   205: ineg
    //   206: putfield mStartLine : I
    //   209: goto -> 106
    //   212: iconst_0
    //   213: istore_1
    //   214: iconst_0
    //   215: istore_3
    //   216: goto -> 67
  }
  
  private void updateRemainingSpans(StaggeredGridLayoutManager$Span paramStaggeredGridLayoutManager$Span, int paramInt1, int paramInt2) {
    int i = paramStaggeredGridLayoutManager$Span.getDeletedSize();
    if (paramInt1 == -1) {
      if (i + paramStaggeredGridLayoutManager$Span.getStartLine() <= paramInt2)
        this.mRemainingSpans.set(paramStaggeredGridLayoutManager$Span.mIndex, false); 
      return;
    } 
    if (paramStaggeredGridLayoutManager$Span.getEndLine() - i >= paramInt2) {
      this.mRemainingSpans.set(paramStaggeredGridLayoutManager$Span.mIndex, false);
      return;
    } 
  }
  
  private int updateSpecWithExtra(int paramInt1, int paramInt2, int paramInt3) {
    if (paramInt2 != 0 || paramInt3 != 0) {
      int i = View.MeasureSpec.getMode(paramInt1);
      if (i == Integer.MIN_VALUE || i == 1073741824)
        return View.MeasureSpec.makeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3), i); 
    } 
    return paramInt1;
  }
  
  boolean areAllEndsEqual() {
    boolean bool = true;
    int j = this.mSpans[0].getEndLine(-2147483648);
    for (int i = 1;; i++) {
      boolean bool1 = bool;
      if (i < this.mSpanCount) {
        if (this.mSpans[i].getEndLine(-2147483648) != j)
          return false; 
      } else {
        return bool1;
      } 
    } 
  }
  
  boolean areAllStartsEqual() {
    boolean bool = true;
    int j = this.mSpans[0].getStartLine(-2147483648);
    for (int i = 1;; i++) {
      boolean bool1 = bool;
      if (i < this.mSpanCount) {
        if (this.mSpans[i].getStartLine(-2147483648) != j)
          return false; 
      } else {
        return bool1;
      } 
    } 
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
  
  boolean checkForGaps() {
    int i;
    int j;
    byte b;
    if (getChildCount() == 0 || this.mGapStrategy == 0 || !isAttachedToWindow())
      return false; 
    if (this.mShouldReverseLayout) {
      j = getLastChildPosition();
      i = getFirstChildPosition();
    } else {
      j = getFirstChildPosition();
      i = getLastChildPosition();
    } 
    if (j == 0 && hasGapsToFix() != null) {
      this.mLazySpanLookup.clear();
      requestSimpleAnimationsInNextLayout();
      requestLayout();
      return true;
    } 
    if (!this.mLaidOutInvalidFullSpan)
      return false; 
    if (this.mShouldReverseLayout) {
      b = -1;
    } else {
      b = 1;
    } 
    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1 = this.mLazySpanLookup.getFirstFullSpanItemInRange(j, i + 1, b, true);
    if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1 == null) {
      this.mLaidOutInvalidFullSpan = false;
      this.mLazySpanLookup.forceInvalidateAfter(i + 1);
      return false;
    } 
    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2 = this.mLazySpanLookup.getFirstFullSpanItemInRange(j, staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1.mPosition, b * -1, true);
    if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2 == null) {
      this.mLazySpanLookup.forceInvalidateAfter(staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1.mPosition);
      requestSimpleAnimationsInNextLayout();
      requestLayout();
      return true;
    } 
    this.mLazySpanLookup.forceInvalidateAfter(staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2.mPosition + 1);
    requestSimpleAnimationsInNextLayout();
    requestLayout();
    return true;
  }
  
  public boolean checkLayoutParams(RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    return paramRecyclerView$LayoutParams instanceof StaggeredGridLayoutManager$LayoutParams;
  }
  
  public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView$State paramRecyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry paramRecyclerView$LayoutManager$LayoutPrefetchRegistry) {
    boolean bool = false;
    if (this.mOrientation != 0)
      paramInt1 = paramInt2; 
    if (getChildCount() != 0 && paramInt1 != 0) {
      prepareLayoutStateForDelta(paramInt1, paramRecyclerView$State);
      if (this.mPrefetchDistances == null || this.mPrefetchDistances.length < this.mSpanCount)
        this.mPrefetchDistances = new int[this.mSpanCount]; 
      paramInt2 = 0;
      for (paramInt1 = 0; paramInt2 < this.mSpanCount; paramInt1 = i) {
        int j;
        if (this.mLayoutState.mItemDirection == -1) {
          j = this.mLayoutState.mStartLine - this.mSpans[paramInt2].getStartLine(this.mLayoutState.mStartLine);
        } else {
          j = this.mSpans[paramInt2].getEndLine(this.mLayoutState.mEndLine) - this.mLayoutState.mEndLine;
        } 
        int i = paramInt1;
        if (j >= 0) {
          this.mPrefetchDistances[paramInt1] = j;
          i = paramInt1 + 1;
        } 
        paramInt2++;
      } 
      Arrays.sort(this.mPrefetchDistances, 0, paramInt1);
      paramInt2 = bool;
      while (true) {
        if (paramInt2 < paramInt1 && this.mLayoutState.hasMore(paramRecyclerView$State)) {
          paramRecyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(this.mLayoutState.mCurrentPosition, this.mPrefetchDistances[paramInt2]);
          LayoutState layoutState = this.mLayoutState;
          layoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
          paramInt2++;
          continue;
        } 
        return;
      } 
    } 
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
    paramInt = calculateScrollDirectionForPosition(paramInt);
    PointF pointF = new PointF();
    if (paramInt == 0)
      return null; 
    if (this.mOrientation == 0) {
      pointF.x = paramInt;
      pointF.y = 0.0F;
      return pointF;
    } 
    pointF.x = 0.0F;
    pointF.y = paramInt;
    return pointF;
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
  
  public int[] findFirstCompletelyVisibleItemPositions(int[] paramArrayOfint) {
    int[] arrayOfInt;
    if (paramArrayOfint == null) {
      arrayOfInt = new int[this.mSpanCount];
    } else {
      arrayOfInt = paramArrayOfint;
      if (paramArrayOfint.length < this.mSpanCount)
        throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + paramArrayOfint.length); 
    } 
    for (int i = 0; i < this.mSpanCount; i++)
      arrayOfInt[i] = this.mSpans[i].findFirstCompletelyVisibleItemPosition(); 
    return arrayOfInt;
  }
  
  View findFirstVisibleItemClosestToEnd(boolean paramBoolean) {
    int j = this.mPrimaryOrientation.getStartAfterPadding();
    int k = this.mPrimaryOrientation.getEndAfterPadding();
    int i = getChildCount() - 1;
    View view;
    for (view = null; i >= 0; view = view1) {
      View view2 = getChildAt(i);
      int m = this.mPrimaryOrientation.getDecoratedStart(view2);
      int n = this.mPrimaryOrientation.getDecoratedEnd(view2);
      View view1 = view;
      if (n > j)
        if (m >= k) {
          view1 = view;
        } else {
          if (n <= k || !paramBoolean)
            return view2; 
          view1 = view;
          if (view == null)
            view1 = view2; 
        }  
      i--;
    } 
    return view;
  }
  
  View findFirstVisibleItemClosestToStart(boolean paramBoolean) {
    int j = this.mPrimaryOrientation.getStartAfterPadding();
    int k = this.mPrimaryOrientation.getEndAfterPadding();
    int m = getChildCount();
    int i = 0;
    View view;
    for (view = null; i < m; view = view1) {
      View view2 = getChildAt(i);
      int n = this.mPrimaryOrientation.getDecoratedStart(view2);
      View view1 = view;
      if (this.mPrimaryOrientation.getDecoratedEnd(view2) > j)
        if (n >= k) {
          view1 = view;
        } else {
          if (n >= j || !paramBoolean)
            return view2; 
          view1 = view;
          if (view == null)
            view1 = view2; 
        }  
      i++;
    } 
    return view;
  }
  
  int findFirstVisibleItemPositionInt() {
    View view;
    if (this.mShouldReverseLayout) {
      view = findFirstVisibleItemClosestToEnd(true);
    } else {
      view = findFirstVisibleItemClosestToStart(true);
    } 
    return (view == null) ? -1 : getPosition(view);
  }
  
  public int[] findFirstVisibleItemPositions(int[] paramArrayOfint) {
    int[] arrayOfInt;
    if (paramArrayOfint == null) {
      arrayOfInt = new int[this.mSpanCount];
    } else {
      arrayOfInt = paramArrayOfint;
      if (paramArrayOfint.length < this.mSpanCount)
        throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + paramArrayOfint.length); 
    } 
    for (int i = 0; i < this.mSpanCount; i++)
      arrayOfInt[i] = this.mSpans[i].findFirstVisibleItemPosition(); 
    return arrayOfInt;
  }
  
  public int[] findLastCompletelyVisibleItemPositions(int[] paramArrayOfint) {
    int[] arrayOfInt;
    if (paramArrayOfint == null) {
      arrayOfInt = new int[this.mSpanCount];
    } else {
      arrayOfInt = paramArrayOfint;
      if (paramArrayOfint.length < this.mSpanCount)
        throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + paramArrayOfint.length); 
    } 
    for (int i = 0; i < this.mSpanCount; i++)
      arrayOfInt[i] = this.mSpans[i].findLastCompletelyVisibleItemPosition(); 
    return arrayOfInt;
  }
  
  public int[] findLastVisibleItemPositions(int[] paramArrayOfint) {
    int[] arrayOfInt;
    if (paramArrayOfint == null) {
      arrayOfInt = new int[this.mSpanCount];
    } else {
      arrayOfInt = paramArrayOfint;
      if (paramArrayOfint.length < this.mSpanCount)
        throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + paramArrayOfint.length); 
    } 
    for (int i = 0; i < this.mSpanCount; i++)
      arrayOfInt[i] = this.mSpans[i].findLastVisibleItemPosition(); 
    return arrayOfInt;
  }
  
  public RecyclerView$LayoutParams generateDefaultLayoutParams() {
    return (this.mOrientation == 0) ? new StaggeredGridLayoutManager$LayoutParams(-2, -1) : new StaggeredGridLayoutManager$LayoutParams(-1, -2);
  }
  
  public RecyclerView$LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    return new StaggeredGridLayoutManager$LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams instanceof ViewGroup.MarginLayoutParams) ? new StaggeredGridLayoutManager$LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams) : new StaggeredGridLayoutManager$LayoutParams(paramLayoutParams);
  }
  
  public int getColumnCountForAccessibility(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return (this.mOrientation == 1) ? this.mSpanCount : super.getColumnCountForAccessibility(paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  int getFirstChildPosition() {
    return (getChildCount() == 0) ? 0 : getPosition(getChildAt(0));
  }
  
  public int getGapStrategy() {
    return this.mGapStrategy;
  }
  
  int getLastChildPosition() {
    int i = getChildCount();
    return (i == 0) ? 0 : getPosition(getChildAt(i - 1));
  }
  
  public int getOrientation() {
    return this.mOrientation;
  }
  
  public boolean getReverseLayout() {
    return this.mReverseLayout;
  }
  
  public int getRowCountForAccessibility(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return (this.mOrientation == 0) ? this.mSpanCount : super.getRowCountForAccessibility(paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  public int getSpanCount() {
    return this.mSpanCount;
  }
  
  View hasGapsToFix() {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getChildCount : ()I
    //   4: iconst_1
    //   5: isub
    //   6: istore_1
    //   7: new java/util/BitSet
    //   10: dup
    //   11: aload_0
    //   12: getfield mSpanCount : I
    //   15: invokespecial <init> : (I)V
    //   18: astore #7
    //   20: aload #7
    //   22: iconst_0
    //   23: aload_0
    //   24: getfield mSpanCount : I
    //   27: iconst_1
    //   28: invokevirtual set : (IIZ)V
    //   31: aload_0
    //   32: getfield mOrientation : I
    //   35: iconst_1
    //   36: if_icmpne -> 123
    //   39: aload_0
    //   40: invokevirtual isLayoutRTL : ()Z
    //   43: ifeq -> 123
    //   46: iconst_1
    //   47: istore_2
    //   48: aload_0
    //   49: getfield mShouldReverseLayout : Z
    //   52: ifeq -> 128
    //   55: iconst_m1
    //   56: istore_3
    //   57: iload_1
    //   58: iload_3
    //   59: if_icmpge -> 137
    //   62: iconst_1
    //   63: istore #4
    //   65: iload_1
    //   66: istore #5
    //   68: iload #5
    //   70: iload_3
    //   71: if_icmpeq -> 343
    //   74: aload_0
    //   75: iload #5
    //   77: invokevirtual getChildAt : (I)Landroid/view/View;
    //   80: astore #8
    //   82: aload #8
    //   84: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   87: checkcast android/support/v7/widget/StaggeredGridLayoutManager$LayoutParams
    //   90: astore #9
    //   92: aload #7
    //   94: aload #9
    //   96: getfield mSpan : Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   99: getfield mIndex : I
    //   102: invokevirtual get : (I)Z
    //   105: ifeq -> 156
    //   108: aload_0
    //   109: aload #9
    //   111: getfield mSpan : Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   114: invokespecial checkSpanForGap : (Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Z
    //   117: ifeq -> 143
    //   120: aload #8
    //   122: areturn
    //   123: iconst_m1
    //   124: istore_2
    //   125: goto -> 48
    //   128: iload_1
    //   129: iconst_1
    //   130: iadd
    //   131: istore_3
    //   132: iconst_0
    //   133: istore_1
    //   134: goto -> 57
    //   137: iconst_m1
    //   138: istore #4
    //   140: goto -> 65
    //   143: aload #7
    //   145: aload #9
    //   147: getfield mSpan : Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   150: getfield mIndex : I
    //   153: invokevirtual clear : (I)V
    //   156: aload #9
    //   158: getfield mFullSpan : Z
    //   161: ifeq -> 174
    //   164: iload #5
    //   166: iload #4
    //   168: iadd
    //   169: istore #5
    //   171: goto -> 68
    //   174: iload #5
    //   176: iload #4
    //   178: iadd
    //   179: iload_3
    //   180: if_icmpeq -> 164
    //   183: aload_0
    //   184: iload #5
    //   186: iload #4
    //   188: iadd
    //   189: invokevirtual getChildAt : (I)Landroid/view/View;
    //   192: astore #10
    //   194: aload_0
    //   195: getfield mShouldReverseLayout : Z
    //   198: ifeq -> 291
    //   201: aload_0
    //   202: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   205: aload #8
    //   207: invokevirtual getDecoratedEnd : (Landroid/view/View;)I
    //   210: istore_1
    //   211: aload_0
    //   212: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   215: aload #10
    //   217: invokevirtual getDecoratedEnd : (Landroid/view/View;)I
    //   220: istore #6
    //   222: iload_1
    //   223: iload #6
    //   225: if_icmpge -> 231
    //   228: aload #8
    //   230: areturn
    //   231: iload_1
    //   232: iload #6
    //   234: if_icmpne -> 345
    //   237: iconst_1
    //   238: istore_1
    //   239: iload_1
    //   240: ifeq -> 164
    //   243: aload #10
    //   245: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   248: checkcast android/support/v7/widget/StaggeredGridLayoutManager$LayoutParams
    //   251: astore #10
    //   253: aload #9
    //   255: getfield mSpan : Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   258: getfield mIndex : I
    //   261: aload #10
    //   263: getfield mSpan : Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   266: getfield mIndex : I
    //   269: isub
    //   270: ifge -> 332
    //   273: iconst_1
    //   274: istore_1
    //   275: iload_2
    //   276: ifge -> 337
    //   279: iconst_1
    //   280: istore #6
    //   282: iload_1
    //   283: iload #6
    //   285: if_icmpeq -> 164
    //   288: aload #8
    //   290: areturn
    //   291: aload_0
    //   292: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   295: aload #8
    //   297: invokevirtual getDecoratedStart : (Landroid/view/View;)I
    //   300: istore_1
    //   301: aload_0
    //   302: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   305: aload #10
    //   307: invokevirtual getDecoratedStart : (Landroid/view/View;)I
    //   310: istore #6
    //   312: iload_1
    //   313: iload #6
    //   315: if_icmple -> 321
    //   318: aload #8
    //   320: areturn
    //   321: iload_1
    //   322: iload #6
    //   324: if_icmpne -> 345
    //   327: iconst_1
    //   328: istore_1
    //   329: goto -> 239
    //   332: iconst_0
    //   333: istore_1
    //   334: goto -> 275
    //   337: iconst_0
    //   338: istore #6
    //   340: goto -> 282
    //   343: aconst_null
    //   344: areturn
    //   345: iconst_0
    //   346: istore_1
    //   347: goto -> 239
  }
  
  public void invalidateSpanAssignments() {
    this.mLazySpanLookup.clear();
    requestLayout();
  }
  
  boolean isLayoutRTL() {
    return (getLayoutDirection() == 1);
  }
  
  public void offsetChildrenHorizontal(int paramInt) {
    super.offsetChildrenHorizontal(paramInt);
    for (int i = 0; i < this.mSpanCount; i++)
      this.mSpans[i].onOffset(paramInt); 
  }
  
  public void offsetChildrenVertical(int paramInt) {
    super.offsetChildrenVertical(paramInt);
    for (int i = 0; i < this.mSpanCount; i++)
      this.mSpans[i].onOffset(paramInt); 
  }
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView$Recycler paramRecyclerView$Recycler) {
    removeCallbacks(this.mCheckForGapsRunnable);
    for (int i = 0; i < this.mSpanCount; i++)
      this.mSpans[i].clear(); 
    paramRecyclerView.requestLayout();
  }
  
  @Nullable
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #6
    //   3: aload_0
    //   4: invokevirtual getChildCount : ()I
    //   7: ifne -> 14
    //   10: aconst_null
    //   11: astore_1
    //   12: aload_1
    //   13: areturn
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual findContainingItemView : (Landroid/view/View;)Landroid/view/View;
    //   19: astore #9
    //   21: aload #9
    //   23: ifnonnull -> 28
    //   26: aconst_null
    //   27: areturn
    //   28: aload_0
    //   29: invokespecial resolveShouldLayoutReverse : ()V
    //   32: aload_0
    //   33: iload_2
    //   34: invokespecial convertFocusDirectionToLayoutDirection : (I)I
    //   37: istore #7
    //   39: iload #7
    //   41: ldc -2147483648
    //   43: if_icmpne -> 48
    //   46: aconst_null
    //   47: areturn
    //   48: aload #9
    //   50: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   53: checkcast android/support/v7/widget/StaggeredGridLayoutManager$LayoutParams
    //   56: astore_1
    //   57: aload_1
    //   58: getfield mFullSpan : Z
    //   61: istore #8
    //   63: aload_1
    //   64: getfield mSpan : Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   67: astore #10
    //   69: iload #7
    //   71: iconst_1
    //   72: if_icmpne -> 190
    //   75: aload_0
    //   76: invokevirtual getLastChildPosition : ()I
    //   79: istore_2
    //   80: aload_0
    //   81: iload_2
    //   82: aload #4
    //   84: invokespecial updateLayoutState : (ILandroid/support/v7/widget/RecyclerView$State;)V
    //   87: aload_0
    //   88: iload #7
    //   90: invokespecial setLayoutStateDirection : (I)V
    //   93: aload_0
    //   94: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   97: aload_0
    //   98: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   101: getfield mItemDirection : I
    //   104: iload_2
    //   105: iadd
    //   106: putfield mCurrentPosition : I
    //   109: aload_0
    //   110: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   113: ldc 0.33333334
    //   115: aload_0
    //   116: getfield mPrimaryOrientation : Landroid/support/v7/widget/OrientationHelper;
    //   119: invokevirtual getTotalSpace : ()I
    //   122: i2f
    //   123: fmul
    //   124: f2i
    //   125: putfield mAvailable : I
    //   128: aload_0
    //   129: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   132: iconst_1
    //   133: putfield mStopInFocusable : Z
    //   136: aload_0
    //   137: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   140: iconst_0
    //   141: putfield mRecycle : Z
    //   144: aload_0
    //   145: aload_3
    //   146: aload_0
    //   147: getfield mLayoutState : Landroid/support/v7/widget/LayoutState;
    //   150: aload #4
    //   152: invokespecial fill : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LayoutState;Landroid/support/v7/widget/RecyclerView$State;)I
    //   155: pop
    //   156: aload_0
    //   157: aload_0
    //   158: getfield mShouldReverseLayout : Z
    //   161: putfield mLastLayoutFromEnd : Z
    //   164: iload #8
    //   166: ifne -> 198
    //   169: aload #10
    //   171: iload_2
    //   172: iload #7
    //   174: invokevirtual getFocusableViewAfter : (II)Landroid/view/View;
    //   177: astore_1
    //   178: aload_1
    //   179: ifnull -> 198
    //   182: aload_1
    //   183: aload #9
    //   185: if_acmpeq -> 198
    //   188: aload_1
    //   189: areturn
    //   190: aload_0
    //   191: invokevirtual getFirstChildPosition : ()I
    //   194: istore_2
    //   195: goto -> 80
    //   198: aload_0
    //   199: iload #7
    //   201: invokespecial preferLastSpan : (I)Z
    //   204: ifeq -> 255
    //   207: aload_0
    //   208: getfield mSpanCount : I
    //   211: iconst_1
    //   212: isub
    //   213: istore #5
    //   215: iload #5
    //   217: iflt -> 302
    //   220: aload_0
    //   221: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   224: iload #5
    //   226: aaload
    //   227: iload_2
    //   228: iload #7
    //   230: invokevirtual getFocusableViewAfter : (II)Landroid/view/View;
    //   233: astore_1
    //   234: aload_1
    //   235: ifnull -> 246
    //   238: aload_1
    //   239: aload #9
    //   241: if_acmpeq -> 246
    //   244: aload_1
    //   245: areturn
    //   246: iload #5
    //   248: iconst_1
    //   249: isub
    //   250: istore #5
    //   252: goto -> 215
    //   255: iconst_0
    //   256: istore #5
    //   258: iload #5
    //   260: aload_0
    //   261: getfield mSpanCount : I
    //   264: if_icmpge -> 302
    //   267: aload_0
    //   268: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   271: iload #5
    //   273: aaload
    //   274: iload_2
    //   275: iload #7
    //   277: invokevirtual getFocusableViewAfter : (II)Landroid/view/View;
    //   280: astore_1
    //   281: aload_1
    //   282: ifnull -> 293
    //   285: aload_1
    //   286: aload #9
    //   288: if_acmpeq -> 293
    //   291: aload_1
    //   292: areturn
    //   293: iload #5
    //   295: iconst_1
    //   296: iadd
    //   297: istore #5
    //   299: goto -> 258
    //   302: aload_0
    //   303: getfield mReverseLayout : Z
    //   306: ifne -> 408
    //   309: iconst_1
    //   310: istore_2
    //   311: iload #7
    //   313: iconst_m1
    //   314: if_icmpne -> 413
    //   317: iconst_1
    //   318: istore #5
    //   320: iload_2
    //   321: iload #5
    //   323: if_icmpne -> 419
    //   326: iconst_1
    //   327: istore_2
    //   328: iload #8
    //   330: ifne -> 363
    //   333: iload_2
    //   334: ifeq -> 424
    //   337: aload #10
    //   339: invokevirtual findFirstPartiallyVisibleItemPosition : ()I
    //   342: istore #5
    //   344: aload_0
    //   345: iload #5
    //   347: invokevirtual findViewByPosition : (I)Landroid/view/View;
    //   350: astore_3
    //   351: aload_3
    //   352: ifnull -> 363
    //   355: aload_3
    //   356: astore_1
    //   357: aload_3
    //   358: aload #9
    //   360: if_acmpne -> 12
    //   363: iload #6
    //   365: istore #5
    //   367: aload_0
    //   368: iload #7
    //   370: invokespecial preferLastSpan : (I)Z
    //   373: ifeq -> 490
    //   376: aload_0
    //   377: getfield mSpanCount : I
    //   380: iconst_1
    //   381: isub
    //   382: istore #5
    //   384: iload #5
    //   386: iflt -> 549
    //   389: iload #5
    //   391: aload #10
    //   393: getfield mIndex : I
    //   396: if_icmpne -> 434
    //   399: iload #5
    //   401: iconst_1
    //   402: isub
    //   403: istore #5
    //   405: goto -> 384
    //   408: iconst_0
    //   409: istore_2
    //   410: goto -> 311
    //   413: iconst_0
    //   414: istore #5
    //   416: goto -> 320
    //   419: iconst_0
    //   420: istore_2
    //   421: goto -> 328
    //   424: aload #10
    //   426: invokevirtual findLastPartiallyVisibleItemPosition : ()I
    //   429: istore #5
    //   431: goto -> 344
    //   434: iload_2
    //   435: ifeq -> 469
    //   438: aload_0
    //   439: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   442: iload #5
    //   444: aaload
    //   445: invokevirtual findFirstPartiallyVisibleItemPosition : ()I
    //   448: istore #6
    //   450: aload_0
    //   451: iload #6
    //   453: invokevirtual findViewByPosition : (I)Landroid/view/View;
    //   456: astore_1
    //   457: aload_1
    //   458: ifnull -> 399
    //   461: aload_1
    //   462: aload #9
    //   464: if_acmpeq -> 399
    //   467: aload_1
    //   468: areturn
    //   469: aload_0
    //   470: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   473: iload #5
    //   475: aaload
    //   476: invokevirtual findLastPartiallyVisibleItemPosition : ()I
    //   479: istore #6
    //   481: goto -> 450
    //   484: iload #5
    //   486: iconst_1
    //   487: iadd
    //   488: istore #5
    //   490: iload #5
    //   492: aload_0
    //   493: getfield mSpanCount : I
    //   496: if_icmpge -> 549
    //   499: iload_2
    //   500: ifeq -> 534
    //   503: aload_0
    //   504: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   507: iload #5
    //   509: aaload
    //   510: invokevirtual findFirstPartiallyVisibleItemPosition : ()I
    //   513: istore #6
    //   515: aload_0
    //   516: iload #6
    //   518: invokevirtual findViewByPosition : (I)Landroid/view/View;
    //   521: astore_1
    //   522: aload_1
    //   523: ifnull -> 484
    //   526: aload_1
    //   527: aload #9
    //   529: if_acmpeq -> 484
    //   532: aload_1
    //   533: areturn
    //   534: aload_0
    //   535: getfield mSpans : [Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
    //   538: iload #5
    //   540: aaload
    //   541: invokevirtual findLastPartiallyVisibleItemPosition : ()I
    //   544: istore #6
    //   546: goto -> 515
    //   549: aconst_null
    //   550: areturn
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0) {
      AccessibilityRecordCompat accessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      View view1 = findFirstVisibleItemClosestToStart(false);
      View view2 = findFirstVisibleItemClosestToEnd(false);
      if (view1 != null && view2 != null) {
        int i = getPosition(view1);
        int j = getPosition(view2);
        if (i < j) {
          accessibilityRecordCompat.setFromIndex(i);
          accessibilityRecordCompat.setToIndex(j);
          return;
        } 
        accessibilityRecordCompat.setFromIndex(j);
        accessibilityRecordCompat.setToIndex(i);
        return;
      } 
    } 
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    boolean bool;
    ViewGroup.LayoutParams layoutParams = paramView.getLayoutParams();
    if (!(layoutParams instanceof StaggeredGridLayoutManager$LayoutParams)) {
      onInitializeAccessibilityNodeInfoForItem(paramView, paramAccessibilityNodeInfoCompat);
      return;
    } 
    StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams)layoutParams;
    if (this.mOrientation == 0) {
      int j = staggeredGridLayoutManager$LayoutParams.getSpanIndex();
      if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
        bool = this.mSpanCount;
      } else {
        bool = true;
      } 
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(j, bool, -1, -1, staggeredGridLayoutManager$LayoutParams.mFullSpan, false));
      return;
    } 
    int i = staggeredGridLayoutManager$LayoutParams.getSpanIndex();
    if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
      bool = this.mSpanCount;
    } else {
      bool = true;
    } 
    paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(-1, -1, i, bool, staggeredGridLayoutManager$LayoutParams.mFullSpan, false));
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    handleUpdate(paramInt1, paramInt2, 1);
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView) {
    this.mLazySpanLookup.clear();
    requestLayout();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {
    handleUpdate(paramInt1, paramInt2, 8);
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    handleUpdate(paramInt1, paramInt2, 2);
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject) {
    handleUpdate(paramInt1, paramInt2, 4);
  }
  
  public void onLayoutChildren(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    onLayoutChildren(paramRecyclerView$Recycler, paramRecyclerView$State, true);
  }
  
  public void onLayoutCompleted(RecyclerView$State paramRecyclerView$State) {
    super.onLayoutCompleted(paramRecyclerView$State);
    this.mPendingScrollPosition = -1;
    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
    this.mPendingSavedState = null;
    this.mAnchorInfo.reset();
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    if (paramParcelable instanceof StaggeredGridLayoutManager$SavedState) {
      this.mPendingSavedState = (StaggeredGridLayoutManager$SavedState)paramParcelable;
      requestLayout();
    } 
  }
  
  public Parcelable onSaveInstanceState() {
    if (this.mPendingSavedState != null)
      return new StaggeredGridLayoutManager$SavedState(this.mPendingSavedState); 
    StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = new StaggeredGridLayoutManager$SavedState();
    staggeredGridLayoutManager$SavedState.mReverseLayout = this.mReverseLayout;
    staggeredGridLayoutManager$SavedState.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
    staggeredGridLayoutManager$SavedState.mLastLayoutRTL = this.mLastLayoutRTL;
    if (this.mLazySpanLookup != null && this.mLazySpanLookup.mData != null) {
      staggeredGridLayoutManager$SavedState.mSpanLookup = this.mLazySpanLookup.mData;
      staggeredGridLayoutManager$SavedState.mSpanLookupSize = staggeredGridLayoutManager$SavedState.mSpanLookup.length;
      staggeredGridLayoutManager$SavedState.mFullSpanItems = this.mLazySpanLookup.mFullSpanItems;
    } else {
      staggeredGridLayoutManager$SavedState.mSpanLookupSize = 0;
    } 
    if (getChildCount() > 0) {
      int i;
      if (this.mLastLayoutFromEnd) {
        i = getLastChildPosition();
      } else {
        i = getFirstChildPosition();
      } 
      staggeredGridLayoutManager$SavedState.mAnchorPosition = i;
      staggeredGridLayoutManager$SavedState.mVisibleAnchorPosition = findFirstVisibleItemPositionInt();
      staggeredGridLayoutManager$SavedState.mSpanOffsetsSize = this.mSpanCount;
      staggeredGridLayoutManager$SavedState.mSpanOffsets = new int[this.mSpanCount];
      for (int j = 0; j < this.mSpanCount; j++) {
        if (this.mLastLayoutFromEnd) {
          int k = this.mSpans[j].getEndLine(-2147483648);
          i = k;
          if (k != Integer.MIN_VALUE)
            i = k - this.mPrimaryOrientation.getEndAfterPadding(); 
        } else {
          int k = this.mSpans[j].getStartLine(-2147483648);
          i = k;
          if (k != Integer.MIN_VALUE)
            i = k - this.mPrimaryOrientation.getStartAfterPadding(); 
        } 
        staggeredGridLayoutManager$SavedState.mSpanOffsets[j] = i;
      } 
    } else {
      staggeredGridLayoutManager$SavedState.mAnchorPosition = -1;
      staggeredGridLayoutManager$SavedState.mVisibleAnchorPosition = -1;
      staggeredGridLayoutManager$SavedState.mSpanOffsetsSize = 0;
    } 
    return staggeredGridLayoutManager$SavedState;
  }
  
  public void onScrollStateChanged(int paramInt) {
    if (paramInt == 0)
      checkForGaps(); 
  }
  
  void prepareLayoutStateForDelta(int paramInt, RecyclerView$State paramRecyclerView$State) {
    byte b;
    int i;
    if (paramInt > 0) {
      i = getLastChildPosition();
      b = 1;
    } else {
      b = -1;
      i = getFirstChildPosition();
    } 
    this.mLayoutState.mRecycle = true;
    updateLayoutState(i, paramRecyclerView$State);
    setLayoutStateDirection(b);
    this.mLayoutState.mCurrentPosition = this.mLayoutState.mItemDirection + i;
    this.mLayoutState.mAvailable = Math.abs(paramInt);
  }
  
  int scrollBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    if (getChildCount() == 0 || paramInt == 0)
      return 0; 
    prepareLayoutStateForDelta(paramInt, paramRecyclerView$State);
    int i = fill(paramRecyclerView$Recycler, this.mLayoutState, paramRecyclerView$State);
    if (this.mLayoutState.mAvailable >= i) {
      if (paramInt < 0) {
        paramInt = -i;
        this.mPrimaryOrientation.offsetChildren(-paramInt);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        this.mLayoutState.mAvailable = 0;
        recycle(paramRecyclerView$Recycler, this.mLayoutState);
        return paramInt;
      } 
      paramInt = i;
    } 
    this.mPrimaryOrientation.offsetChildren(-paramInt);
    this.mLastLayoutFromEnd = this.mShouldReverseLayout;
    this.mLayoutState.mAvailable = 0;
    recycle(paramRecyclerView$Recycler, this.mLayoutState);
    return paramInt;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return scrollBy(paramInt, paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  public void scrollToPosition(int paramInt) {
    if (this.mPendingSavedState != null && this.mPendingSavedState.mAnchorPosition != paramInt)
      this.mPendingSavedState.invalidateAnchorPositionInfo(); 
    this.mPendingScrollPosition = paramInt;
    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
    requestLayout();
  }
  
  public void scrollToPositionWithOffset(int paramInt1, int paramInt2) {
    if (this.mPendingSavedState != null)
      this.mPendingSavedState.invalidateAnchorPositionInfo(); 
    this.mPendingScrollPosition = paramInt1;
    this.mPendingScrollPositionOffset = paramInt2;
    requestLayout();
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return scrollBy(paramInt, paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  public void setGapStrategy(int paramInt) {
    boolean bool;
    assertNotInLayoutOrScroll((String)null);
    if (paramInt == this.mGapStrategy)
      return; 
    if (paramInt != 0 && paramInt != 2)
      throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"); 
    this.mGapStrategy = paramInt;
    if (this.mGapStrategy != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    setAutoMeasureEnabled(bool);
    requestLayout();
  }
  
  public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2) {
    int i = getPaddingLeft();
    int j = getPaddingRight() + i;
    int k = getPaddingTop() + getPaddingBottom();
    if (this.mOrientation == 1) {
      i = chooseSize(paramInt2, k + paramRect.height(), getMinimumHeight());
      paramInt2 = chooseSize(paramInt1, j + this.mSizePerSpan * this.mSpanCount, getMinimumWidth());
      paramInt1 = i;
    } else {
      i = chooseSize(paramInt1, j + paramRect.width(), getMinimumWidth());
      paramInt1 = chooseSize(paramInt2, k + this.mSizePerSpan * this.mSpanCount, getMinimumHeight());
      paramInt2 = i;
    } 
    setMeasuredDimension(paramInt2, paramInt1);
  }
  
  public void setOrientation(int paramInt) {
    if (paramInt != 0 && paramInt != 1)
      throw new IllegalArgumentException("invalid orientation."); 
    assertNotInLayoutOrScroll((String)null);
    if (paramInt == this.mOrientation)
      return; 
    this.mOrientation = paramInt;
    OrientationHelper orientationHelper = this.mPrimaryOrientation;
    this.mPrimaryOrientation = this.mSecondaryOrientation;
    this.mSecondaryOrientation = orientationHelper;
    requestLayout();
  }
  
  public void setReverseLayout(boolean paramBoolean) {
    assertNotInLayoutOrScroll((String)null);
    if (this.mPendingSavedState != null && this.mPendingSavedState.mReverseLayout != paramBoolean)
      this.mPendingSavedState.mReverseLayout = paramBoolean; 
    this.mReverseLayout = paramBoolean;
    requestLayout();
  }
  
  public void setSpanCount(int paramInt) {
    assertNotInLayoutOrScroll((String)null);
    if (paramInt != this.mSpanCount) {
      invalidateSpanAssignments();
      this.mSpanCount = paramInt;
      this.mRemainingSpans = new BitSet(this.mSpanCount);
      this.mSpans = new StaggeredGridLayoutManager$Span[this.mSpanCount];
      for (paramInt = 0; paramInt < this.mSpanCount; paramInt++)
        this.mSpans[paramInt] = new StaggeredGridLayoutManager$Span(this, paramInt); 
      requestLayout();
    } 
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State, int paramInt) {
    LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(paramRecyclerView.getContext());
    linearSmoothScroller.setTargetPosition(paramInt);
    startSmoothScroll(linearSmoothScroller);
  }
  
  public boolean supportsPredictiveItemAnimations() {
    return (this.mPendingSavedState == null);
  }
  
  boolean updateAnchorFromPendingData(RecyclerView$State paramRecyclerView$State, StaggeredGridLayoutManager$AnchorInfo paramStaggeredGridLayoutManager$AnchorInfo) {
    boolean bool = false;
    if (paramRecyclerView$State.isPreLayout() || this.mPendingScrollPosition == -1)
      return false; 
    if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= paramRecyclerView$State.getItemCount()) {
      this.mPendingScrollPosition = -1;
      this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
      return false;
    } 
    if (this.mPendingSavedState == null || this.mPendingSavedState.mAnchorPosition == -1 || this.mPendingSavedState.mSpanOffsetsSize < 1) {
      View view = findViewByPosition(this.mPendingScrollPosition);
      if (view != null) {
        if (this.mShouldReverseLayout) {
          i = getLastChildPosition();
        } else {
          i = getFirstChildPosition();
        } 
        paramStaggeredGridLayoutManager$AnchorInfo.mPosition = i;
        if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
          if (paramStaggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd) {
            paramStaggeredGridLayoutManager$AnchorInfo.mOffset = this.mPrimaryOrientation.getEndAfterPadding() - this.mPendingScrollPositionOffset - this.mPrimaryOrientation.getDecoratedEnd(view);
            return true;
          } 
          paramStaggeredGridLayoutManager$AnchorInfo.mOffset = this.mPrimaryOrientation.getStartAfterPadding() + this.mPendingScrollPositionOffset - this.mPrimaryOrientation.getDecoratedStart(view);
          return true;
        } 
        if (this.mPrimaryOrientation.getDecoratedMeasurement(view) > this.mPrimaryOrientation.getTotalSpace()) {
          if (paramStaggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd) {
            i = this.mPrimaryOrientation.getEndAfterPadding();
            paramStaggeredGridLayoutManager$AnchorInfo.mOffset = i;
            return true;
          } 
          i = this.mPrimaryOrientation.getStartAfterPadding();
          paramStaggeredGridLayoutManager$AnchorInfo.mOffset = i;
          return true;
        } 
        int i = this.mPrimaryOrientation.getDecoratedStart(view) - this.mPrimaryOrientation.getStartAfterPadding();
        if (i < 0) {
          paramStaggeredGridLayoutManager$AnchorInfo.mOffset = -i;
          return true;
        } 
        i = this.mPrimaryOrientation.getEndAfterPadding() - this.mPrimaryOrientation.getDecoratedEnd(view);
        if (i < 0) {
          paramStaggeredGridLayoutManager$AnchorInfo.mOffset = i;
          return true;
        } 
        paramStaggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
        return true;
      } 
      paramStaggeredGridLayoutManager$AnchorInfo.mPosition = this.mPendingScrollPosition;
      if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
        if (calculateScrollDirectionForPosition(paramStaggeredGridLayoutManager$AnchorInfo.mPosition) == 1)
          bool = true; 
        paramStaggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = bool;
        paramStaggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding();
        paramStaggeredGridLayoutManager$AnchorInfo.mInvalidateOffsets = true;
        return true;
      } 
      paramStaggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding(this.mPendingScrollPositionOffset);
      paramStaggeredGridLayoutManager$AnchorInfo.mInvalidateOffsets = true;
      return true;
    } 
    paramStaggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
    paramStaggeredGridLayoutManager$AnchorInfo.mPosition = this.mPendingScrollPosition;
    return true;
  }
  
  void updateAnchorInfoForLayout(RecyclerView$State paramRecyclerView$State, StaggeredGridLayoutManager$AnchorInfo paramStaggeredGridLayoutManager$AnchorInfo) {
    if (!updateAnchorFromPendingData(paramRecyclerView$State, paramStaggeredGridLayoutManager$AnchorInfo) && !updateAnchorFromChildren(paramRecyclerView$State, paramStaggeredGridLayoutManager$AnchorInfo)) {
      paramStaggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding();
      paramStaggeredGridLayoutManager$AnchorInfo.mPosition = 0;
      return;
    } 
  }
  
  void updateMeasureSpecs(int paramInt) {
    this.mSizePerSpan = paramInt / this.mSpanCount;
    this.mFullSizeSpec = View.MeasureSpec.makeMeasureSpec(paramInt, this.mSecondaryOrientation.getMode());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\StaggeredGridLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */