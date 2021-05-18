package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v7.recyclerview.R;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;

public abstract class RecyclerView$LayoutManager {
  boolean mAutoMeasure = false;
  
  ChildHelper mChildHelper;
  
  private int mHeight;
  
  private int mHeightMode;
  
  ViewBoundsCheck mHorizontalBoundCheck = new ViewBoundsCheck(this.mHorizontalBoundCheckCallback);
  
  private final ViewBoundsCheck$Callback mHorizontalBoundCheckCallback = new RecyclerView$LayoutManager$1(this);
  
  boolean mIsAttachedToWindow = false;
  
  private boolean mItemPrefetchEnabled = true;
  
  private boolean mMeasurementCacheEnabled = true;
  
  int mPrefetchMaxCountObserved;
  
  boolean mPrefetchMaxObservedInInitialPrefetch;
  
  RecyclerView mRecyclerView;
  
  boolean mRequestedSimpleAnimations = false;
  
  @Nullable
  RecyclerView$SmoothScroller mSmoothScroller;
  
  ViewBoundsCheck mVerticalBoundCheck = new ViewBoundsCheck(this.mVerticalBoundCheckCallback);
  
  private final ViewBoundsCheck$Callback mVerticalBoundCheckCallback = new RecyclerView$LayoutManager$2(this);
  
  private int mWidth;
  
  private int mWidthMode;
  
  private void addViewInt(View paramView, int paramInt, boolean paramBoolean) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (paramBoolean || recyclerView$ViewHolder.isRemoved()) {
      this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(recyclerView$ViewHolder);
    } else {
      this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(recyclerView$ViewHolder);
    } 
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    if (recyclerView$ViewHolder.wasReturnedFromScrap() || recyclerView$ViewHolder.isScrap()) {
      if (recyclerView$ViewHolder.isScrap()) {
        recyclerView$ViewHolder.unScrap();
      } else {
        recyclerView$ViewHolder.clearReturnedFromScrapFlag();
      } 
      this.mChildHelper.attachViewToParent(paramView, paramInt, paramView.getLayoutParams(), false);
    } else if (paramView.getParent() == this.mRecyclerView) {
      int j = this.mChildHelper.indexOfChild(paramView);
      int i = paramInt;
      if (paramInt == -1)
        i = this.mChildHelper.getChildCount(); 
      if (j == -1)
        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(paramView)); 
      if (j != i)
        this.mRecyclerView.mLayout.moveView(j, i); 
    } else {
      this.mChildHelper.addView(paramView, paramInt, false);
      recyclerView$LayoutParams.mInsetsDirty = true;
      if (this.mSmoothScroller != null && this.mSmoothScroller.isRunning())
        this.mSmoothScroller.onChildAttachedToWindow(paramView); 
    } 
    if (recyclerView$LayoutParams.mPendingInvalidate) {
      recyclerView$ViewHolder.itemView.invalidate();
      recyclerView$LayoutParams.mPendingInvalidate = false;
    } 
  }
  
  public static int chooseSize(int paramInt1, int paramInt2, int paramInt3) {
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = i;
    switch (j) {
      default:
        paramInt1 = Math.max(paramInt2, paramInt3);
      case 1073741824:
        return paramInt1;
      case -2147483648:
        break;
    } 
    return Math.min(i, Math.max(paramInt2, paramInt3));
  }
  
  private void detachViewInternal(int paramInt, View paramView) {
    this.mChildHelper.detachViewFromParent(paramInt);
  }
  
  public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #6
    //   3: iconst_0
    //   4: istore #7
    //   6: iconst_0
    //   7: iload_0
    //   8: iload_2
    //   9: isub
    //   10: invokestatic max : (II)I
    //   13: istore #5
    //   15: iload #4
    //   17: ifeq -> 116
    //   20: iload_3
    //   21: iflt -> 35
    //   24: ldc 1073741824
    //   26: istore_0
    //   27: iload_3
    //   28: istore_2
    //   29: iload_2
    //   30: iload_0
    //   31: invokestatic makeMeasureSpec : (II)I
    //   34: ireturn
    //   35: iload_3
    //   36: iconst_m1
    //   37: if_icmpne -> 102
    //   40: iload_1
    //   41: lookupswitch default -> 76, -2147483648 -> 88, 0 -> 94, 1073741824 -> 88
    //   76: iconst_0
    //   77: istore_1
    //   78: iload #6
    //   80: istore_0
    //   81: iload_0
    //   82: istore_2
    //   83: iload_1
    //   84: istore_0
    //   85: goto -> 29
    //   88: iload #5
    //   90: istore_0
    //   91: goto -> 81
    //   94: iconst_0
    //   95: istore_1
    //   96: iload #6
    //   98: istore_0
    //   99: goto -> 81
    //   102: iload_3
    //   103: bipush #-2
    //   105: if_icmpne -> 174
    //   108: iconst_0
    //   109: istore_2
    //   110: iload #7
    //   112: istore_0
    //   113: goto -> 29
    //   116: iload_3
    //   117: iflt -> 128
    //   120: ldc 1073741824
    //   122: istore_0
    //   123: iload_3
    //   124: istore_2
    //   125: goto -> 29
    //   128: iload_3
    //   129: iconst_m1
    //   130: if_icmpne -> 141
    //   133: iload_1
    //   134: istore_0
    //   135: iload #5
    //   137: istore_2
    //   138: goto -> 29
    //   141: iload_3
    //   142: bipush #-2
    //   144: if_icmpne -> 174
    //   147: iload_1
    //   148: ldc -2147483648
    //   150: if_icmpeq -> 165
    //   153: iload #7
    //   155: istore_0
    //   156: iload #5
    //   158: istore_2
    //   159: iload_1
    //   160: ldc 1073741824
    //   162: if_icmpne -> 29
    //   165: ldc -2147483648
    //   167: istore_0
    //   168: iload #5
    //   170: istore_2
    //   171: goto -> 29
    //   174: iconst_0
    //   175: istore_2
    //   176: iload #7
    //   178: istore_0
    //   179: goto -> 29
  }
  
  @Deprecated
  public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {
    int j = 1073741824;
    int i = Math.max(0, paramInt1 - paramInt2);
    if (paramBoolean) {
      if (paramInt3 >= 0) {
        paramInt1 = paramInt3;
        paramInt2 = j;
        return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
      } 
      paramInt2 = 0;
      paramInt1 = 0;
      return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
    } 
    paramInt2 = j;
    paramInt1 = paramInt3;
    if (paramInt3 < 0) {
      if (paramInt3 == -1) {
        paramInt1 = i;
        paramInt2 = j;
        return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
      } 
      if (paramInt3 == -2) {
        paramInt2 = Integer.MIN_VALUE;
        paramInt1 = i;
        return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
      } 
      paramInt2 = 0;
      paramInt1 = 0;
    } 
    return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
  }
  
  private int[] getChildRectangleOnScreenScrollAmount(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean) {
    int i2 = getPaddingLeft();
    int m = getPaddingTop();
    int i3 = getWidth() - getPaddingRight();
    int i1 = getHeight();
    int i6 = getPaddingBottom();
    int i4 = paramView.getLeft() + paramRect.left - paramView.getScrollX();
    int n = paramView.getTop() + paramRect.top - paramView.getScrollY();
    int i5 = i4 + paramRect.width();
    int i7 = paramRect.height();
    int i = Math.min(0, i4 - i2);
    int j = Math.min(0, n - m);
    int k = Math.max(0, i5 - i3);
    i1 = Math.max(0, n + i7 - i1 - i6);
    if (getLayoutDirection() == 1) {
      if (k != 0) {
        i = k;
      } else {
        i = Math.max(i, i5 - i3);
      } 
    } else if (i == 0) {
      i = Math.min(i4 - i2, k);
    } 
    if (j == 0)
      j = Math.min(n - m, i1); 
    return new int[] { i, j };
  }
  
  public static RecyclerView$LayoutManager$Properties getProperties(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    RecyclerView$LayoutManager$Properties recyclerView$LayoutManager$Properties = new RecyclerView$LayoutManager$Properties();
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt1, paramInt2);
    recyclerView$LayoutManager$Properties.orientation = typedArray.getInt(R.styleable.RecyclerView_android_orientation, 1);
    recyclerView$LayoutManager$Properties.spanCount = typedArray.getInt(R.styleable.RecyclerView_spanCount, 1);
    recyclerView$LayoutManager$Properties.reverseLayout = typedArray.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
    recyclerView$LayoutManager$Properties.stackFromEnd = typedArray.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
    typedArray.recycle();
    return recyclerView$LayoutManager$Properties;
  }
  
  private boolean isFocusedChildVisibleAfterScrolling(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    View view = paramRecyclerView.getFocusedChild();
    if (view != null) {
      int i = getPaddingLeft();
      int j = getPaddingTop();
      int k = getWidth();
      int m = getPaddingRight();
      int n = getHeight();
      int i1 = getPaddingBottom();
      Rect rect = this.mRecyclerView.mTempRect;
      getDecoratedBoundsWithMargins(view, rect);
      if (rect.left - paramInt1 < k - m && rect.right - paramInt1 > i && rect.top - paramInt2 < n - i1 && rect.bottom - paramInt2 > j)
        return true; 
    } 
    return false;
  }
  
  private static boolean isMeasurementUpToDate(int paramInt1, int paramInt2, int paramInt3) {
    boolean bool2 = true;
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (paramInt3 > 0 && paramInt1 != paramInt3)
      boolean bool = false; 
    boolean bool1 = bool2;
    switch (i) {
      case 0:
        return bool1;
      default:
        return false;
      case -2147483648:
        bool1 = bool2;
        if (paramInt2 < paramInt1)
          return false; 
      case 1073741824:
        break;
    } 
    bool1 = bool2;
    if (paramInt2 != paramInt1)
      return false; 
  }
  
  private void onSmoothScrollerStopped(RecyclerView$SmoothScroller paramRecyclerView$SmoothScroller) {
    if (this.mSmoothScroller == paramRecyclerView$SmoothScroller)
      this.mSmoothScroller = null; 
  }
  
  private void scrapOrRecycleView(RecyclerView$Recycler paramRecyclerView$Recycler, int paramInt, View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder.shouldIgnore())
      return; 
    if (recyclerView$ViewHolder.isInvalid() && !recyclerView$ViewHolder.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
      removeViewAt(paramInt);
      paramRecyclerView$Recycler.recycleViewHolderInternal(recyclerView$ViewHolder);
      return;
    } 
    detachViewAt(paramInt);
    paramRecyclerView$Recycler.scrapView(paramView);
    this.mRecyclerView.mViewInfoStore.onViewDetached(recyclerView$ViewHolder);
  }
  
  public void addDisappearingView(View paramView) {
    addDisappearingView(paramView, -1);
  }
  
  public void addDisappearingView(View paramView, int paramInt) {
    addViewInt(paramView, paramInt, true);
  }
  
  public void addView(View paramView) {
    addView(paramView, -1);
  }
  
  public void addView(View paramView, int paramInt) {
    addViewInt(paramView, paramInt, false);
  }
  
  public void assertInLayoutOrScroll(String paramString) {
    if (this.mRecyclerView != null)
      this.mRecyclerView.assertInLayoutOrScroll(paramString); 
  }
  
  public void assertNotInLayoutOrScroll(String paramString) {
    if (this.mRecyclerView != null)
      this.mRecyclerView.assertNotInLayoutOrScroll(paramString); 
  }
  
  public void attachView(View paramView) {
    attachView(paramView, -1);
  }
  
  public void attachView(View paramView, int paramInt) {
    attachView(paramView, paramInt, (RecyclerView$LayoutParams)paramView.getLayoutParams());
  }
  
  public void attachView(View paramView, int paramInt, RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder.isRemoved()) {
      this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(recyclerView$ViewHolder);
    } else {
      this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(recyclerView$ViewHolder);
    } 
    this.mChildHelper.attachViewToParent(paramView, paramInt, (ViewGroup.LayoutParams)paramRecyclerView$LayoutParams, recyclerView$ViewHolder.isRemoved());
  }
  
  public void calculateItemDecorationsForChild(View paramView, Rect paramRect) {
    if (this.mRecyclerView == null) {
      paramRect.set(0, 0, 0, 0);
      return;
    } 
    paramRect.set(this.mRecyclerView.getItemDecorInsetsForChild(paramView));
  }
  
  public boolean canScrollHorizontally() {
    return false;
  }
  
  public boolean canScrollVertically() {
    return false;
  }
  
  public boolean checkLayoutParams(RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    return (paramRecyclerView$LayoutParams != null);
  }
  
  public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView$State paramRecyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry paramRecyclerView$LayoutManager$LayoutPrefetchRegistry) {}
  
  public void collectInitialPrefetchPositions(int paramInt, RecyclerView$LayoutManager$LayoutPrefetchRegistry paramRecyclerView$LayoutManager$LayoutPrefetchRegistry) {}
  
  public int computeHorizontalScrollExtent(RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public int computeHorizontalScrollOffset(RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public int computeHorizontalScrollRange(RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public int computeVerticalScrollExtent(RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public int computeVerticalScrollOffset(RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public int computeVerticalScrollRange(RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public void detachAndScrapAttachedViews(RecyclerView$Recycler paramRecyclerView$Recycler) {
    for (int i = getChildCount() - 1; i >= 0; i--)
      scrapOrRecycleView(paramRecyclerView$Recycler, i, getChildAt(i)); 
  }
  
  public void detachAndScrapView(View paramView, RecyclerView$Recycler paramRecyclerView$Recycler) {
    scrapOrRecycleView(paramRecyclerView$Recycler, this.mChildHelper.indexOfChild(paramView), paramView);
  }
  
  public void detachAndScrapViewAt(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler) {
    scrapOrRecycleView(paramRecyclerView$Recycler, paramInt, getChildAt(paramInt));
  }
  
  public void detachView(View paramView) {
    int i = this.mChildHelper.indexOfChild(paramView);
    if (i >= 0)
      detachViewInternal(i, paramView); 
  }
  
  public void detachViewAt(int paramInt) {
    detachViewInternal(paramInt, getChildAt(paramInt));
  }
  
  void dispatchAttachedToWindow(RecyclerView paramRecyclerView) {
    this.mIsAttachedToWindow = true;
    onAttachedToWindow(paramRecyclerView);
  }
  
  void dispatchDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView$Recycler paramRecyclerView$Recycler) {
    this.mIsAttachedToWindow = false;
    onDetachedFromWindow(paramRecyclerView, paramRecyclerView$Recycler);
  }
  
  public void endAnimation(View paramView) {
    if (this.mRecyclerView.mItemAnimator != null)
      this.mRecyclerView.mItemAnimator.endAnimation(RecyclerView.getChildViewHolderInt(paramView)); 
  }
  
  @Nullable
  public View findContainingItemView(View paramView) {
    if (this.mRecyclerView != null) {
      paramView = this.mRecyclerView.findContainingItemView(paramView);
      if (paramView != null && !this.mChildHelper.isHidden(paramView))
        return paramView; 
    } 
    return null;
  }
  
  public View findViewByPosition(int paramInt) {
    int j = getChildCount();
    for (int i = 0; i < j; i++) {
      View view = getChildAt(i);
      RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(view);
      if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.getLayoutPosition() == paramInt && !recyclerView$ViewHolder.shouldIgnore() && (this.mRecyclerView.mState.isPreLayout() || !recyclerView$ViewHolder.isRemoved()))
        return view; 
    } 
    return null;
  }
  
  public abstract RecyclerView$LayoutParams generateDefaultLayoutParams();
  
  public RecyclerView$LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    return new RecyclerView$LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams instanceof RecyclerView$LayoutParams) ? new RecyclerView$LayoutParams((RecyclerView$LayoutParams)paramLayoutParams) : ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams) ? new RecyclerView$LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams) : new RecyclerView$LayoutParams(paramLayoutParams));
  }
  
  public int getBaseline() {
    return -1;
  }
  
  public int getBottomDecorationHeight(View paramView) {
    return ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mDecorInsets.bottom;
  }
  
  public View getChildAt(int paramInt) {
    return (this.mChildHelper != null) ? this.mChildHelper.getChildAt(paramInt) : null;
  }
  
  public int getChildCount() {
    return (this.mChildHelper != null) ? this.mChildHelper.getChildCount() : 0;
  }
  
  public boolean getClipToPadding() {
    return (this.mRecyclerView != null && this.mRecyclerView.mClipToPadding);
  }
  
  public int getColumnCountForAccessibility(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return (this.mRecyclerView != null && this.mRecyclerView.mAdapter != null && canScrollHorizontally()) ? this.mRecyclerView.mAdapter.getItemCount() : 1;
  }
  
  public int getDecoratedBottom(View paramView) {
    return paramView.getBottom() + getBottomDecorationHeight(paramView);
  }
  
  public void getDecoratedBoundsWithMargins(View paramView, Rect paramRect) {
    RecyclerView.getDecoratedBoundsWithMarginsInt(paramView, paramRect);
  }
  
  public int getDecoratedLeft(View paramView) {
    return paramView.getLeft() - getLeftDecorationWidth(paramView);
  }
  
  public int getDecoratedMeasuredHeight(View paramView) {
    Rect rect = ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mDecorInsets;
    int i = paramView.getMeasuredHeight();
    int j = rect.top;
    return rect.bottom + i + j;
  }
  
  public int getDecoratedMeasuredWidth(View paramView) {
    Rect rect = ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mDecorInsets;
    int i = paramView.getMeasuredWidth();
    int j = rect.left;
    return rect.right + i + j;
  }
  
  public int getDecoratedRight(View paramView) {
    return paramView.getRight() + getRightDecorationWidth(paramView);
  }
  
  public int getDecoratedTop(View paramView) {
    return paramView.getTop() - getTopDecorationHeight(paramView);
  }
  
  public View getFocusedChild() {
    if (this.mRecyclerView != null) {
      View view = this.mRecyclerView.getFocusedChild();
      if (view != null && !this.mChildHelper.isHidden(view))
        return view; 
    } 
    return null;
  }
  
  public int getHeight() {
    return this.mHeight;
  }
  
  public int getHeightMode() {
    return this.mHeightMode;
  }
  
  public int getItemCount() {
    RecyclerView$Adapter recyclerView$Adapter;
    if (this.mRecyclerView != null) {
      recyclerView$Adapter = this.mRecyclerView.getAdapter();
    } else {
      recyclerView$Adapter = null;
    } 
    return (recyclerView$Adapter != null) ? recyclerView$Adapter.getItemCount() : 0;
  }
  
  public int getItemViewType(View paramView) {
    return RecyclerView.getChildViewHolderInt(paramView).getItemViewType();
  }
  
  public int getLayoutDirection() {
    return ViewCompat.getLayoutDirection((View)this.mRecyclerView);
  }
  
  public int getLeftDecorationWidth(View paramView) {
    return ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mDecorInsets.left;
  }
  
  public int getMinimumHeight() {
    return ViewCompat.getMinimumHeight((View)this.mRecyclerView);
  }
  
  public int getMinimumWidth() {
    return ViewCompat.getMinimumWidth((View)this.mRecyclerView);
  }
  
  public int getPaddingBottom() {
    return (this.mRecyclerView != null) ? this.mRecyclerView.getPaddingBottom() : 0;
  }
  
  public int getPaddingEnd() {
    return (this.mRecyclerView != null) ? ViewCompat.getPaddingEnd((View)this.mRecyclerView) : 0;
  }
  
  public int getPaddingLeft() {
    return (this.mRecyclerView != null) ? this.mRecyclerView.getPaddingLeft() : 0;
  }
  
  public int getPaddingRight() {
    return (this.mRecyclerView != null) ? this.mRecyclerView.getPaddingRight() : 0;
  }
  
  public int getPaddingStart() {
    return (this.mRecyclerView != null) ? ViewCompat.getPaddingStart((View)this.mRecyclerView) : 0;
  }
  
  public int getPaddingTop() {
    return (this.mRecyclerView != null) ? this.mRecyclerView.getPaddingTop() : 0;
  }
  
  public int getPosition(View paramView) {
    return ((RecyclerView$LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition();
  }
  
  public int getRightDecorationWidth(View paramView) {
    return ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mDecorInsets.right;
  }
  
  public int getRowCountForAccessibility(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return (this.mRecyclerView != null && this.mRecyclerView.mAdapter != null && canScrollVertically()) ? this.mRecyclerView.mAdapter.getItemCount() : 1;
  }
  
  public int getSelectionModeForAccessibility(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public int getTopDecorationHeight(View paramView) {
    return ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mDecorInsets.top;
  }
  
  public void getTransformedBoundingBox(View paramView, boolean paramBoolean, Rect paramRect) {
    if (paramBoolean) {
      Rect rect = ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mDecorInsets;
      int i = -rect.left;
      int j = -rect.top;
      int k = paramView.getWidth();
      int m = rect.right;
      int n = paramView.getHeight();
      paramRect.set(i, j, k + m, rect.bottom + n);
    } else {
      paramRect.set(0, 0, paramView.getWidth(), paramView.getHeight());
    } 
    if (this.mRecyclerView != null) {
      Matrix matrix = ViewCompat.getMatrix(paramView);
      if (matrix != null && !matrix.isIdentity()) {
        RectF rectF = this.mRecyclerView.mTempRectF;
        rectF.set(paramRect);
        matrix.mapRect(rectF);
        paramRect.set((int)Math.floor(rectF.left), (int)Math.floor(rectF.top), (int)Math.ceil(rectF.right), (int)Math.ceil(rectF.bottom));
      } 
    } 
    paramRect.offset(paramView.getLeft(), paramView.getTop());
  }
  
  public int getWidth() {
    return this.mWidth;
  }
  
  public int getWidthMode() {
    return this.mWidthMode;
  }
  
  boolean hasFlexibleChildInBothOrientations() {
    boolean bool = false;
    int j = getChildCount();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
        if (layoutParams.width < 0 && layoutParams.height < 0)
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public boolean hasFocus() {
    return (this.mRecyclerView != null && this.mRecyclerView.hasFocus());
  }
  
  public void ignoreView(View paramView) {
    if (paramView.getParent() != this.mRecyclerView || this.mRecyclerView.indexOfChild(paramView) == -1)
      throw new IllegalArgumentException("View should be fully attached to be ignored"); 
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    recyclerView$ViewHolder.addFlags(128);
    this.mRecyclerView.mViewInfoStore.removeViewHolder(recyclerView$ViewHolder);
  }
  
  public boolean isAttachedToWindow() {
    return this.mIsAttachedToWindow;
  }
  
  public boolean isAutoMeasureEnabled() {
    return this.mAutoMeasure;
  }
  
  public boolean isFocused() {
    return (this.mRecyclerView != null && this.mRecyclerView.isFocused());
  }
  
  public final boolean isItemPrefetchEnabled() {
    return this.mItemPrefetchEnabled;
  }
  
  public boolean isLayoutHierarchical(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return false;
  }
  
  public boolean isMeasurementCacheEnabled() {
    return this.mMeasurementCacheEnabled;
  }
  
  public boolean isSmoothScrolling() {
    return (this.mSmoothScroller != null && this.mSmoothScroller.isRunning());
  }
  
  public boolean isViewPartiallyVisible(@NonNull View paramView, boolean paramBoolean1, boolean paramBoolean2) {
    boolean bool = true;
    if (this.mHorizontalBoundCheck.isViewWithinBoundFlags(paramView, 24579) && this.mVerticalBoundCheck.isViewWithinBoundFlags(paramView, 24579)) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    } 
    if (paramBoolean1)
      return paramBoolean2; 
    paramBoolean1 = bool;
    return paramBoolean2 ? false : paramBoolean1;
  }
  
  public void layoutDecorated(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    Rect rect = ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mDecorInsets;
    paramView.layout(rect.left + paramInt1, rect.top + paramInt2, paramInt3 - rect.right, paramInt4 - rect.bottom);
  }
  
  public void layoutDecoratedWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    Rect rect = recyclerView$LayoutParams.mDecorInsets;
    paramView.layout(rect.left + paramInt1 + recyclerView$LayoutParams.leftMargin, rect.top + paramInt2 + recyclerView$LayoutParams.topMargin, paramInt3 - rect.right - recyclerView$LayoutParams.rightMargin, paramInt4 - rect.bottom - recyclerView$LayoutParams.bottomMargin);
  }
  
  public void measureChild(View paramView, int paramInt1, int paramInt2) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    Rect rect = this.mRecyclerView.getItemDecorInsetsForChild(paramView);
    int k = rect.left;
    int m = rect.right;
    int i = rect.top;
    int j = rect.bottom;
    paramInt1 = getChildMeasureSpec(getWidth(), getWidthMode(), k + m + paramInt1 + getPaddingLeft() + getPaddingRight(), recyclerView$LayoutParams.width, canScrollHorizontally());
    paramInt2 = getChildMeasureSpec(getHeight(), getHeightMode(), j + i + paramInt2 + getPaddingTop() + getPaddingBottom(), recyclerView$LayoutParams.height, canScrollVertically());
    if (shouldMeasureChild(paramView, paramInt1, paramInt2, recyclerView$LayoutParams))
      paramView.measure(paramInt1, paramInt2); 
  }
  
  public void measureChildWithMargins(View paramView, int paramInt1, int paramInt2) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    Rect rect = this.mRecyclerView.getItemDecorInsetsForChild(paramView);
    int k = rect.left;
    int m = rect.right;
    int i = rect.top;
    int j = rect.bottom;
    paramInt1 = getChildMeasureSpec(getWidth(), getWidthMode(), k + m + paramInt1 + getPaddingLeft() + getPaddingRight() + recyclerView$LayoutParams.leftMargin + recyclerView$LayoutParams.rightMargin, recyclerView$LayoutParams.width, canScrollHorizontally());
    paramInt2 = getChildMeasureSpec(getHeight(), getHeightMode(), j + i + paramInt2 + getPaddingTop() + getPaddingBottom() + recyclerView$LayoutParams.topMargin + recyclerView$LayoutParams.bottomMargin, recyclerView$LayoutParams.height, canScrollVertically());
    if (shouldMeasureChild(paramView, paramInt1, paramInt2, recyclerView$LayoutParams))
      paramView.measure(paramInt1, paramInt2); 
  }
  
  public void moveView(int paramInt1, int paramInt2) {
    View view = getChildAt(paramInt1);
    if (view == null)
      throw new IllegalArgumentException("Cannot move a child from non-existing index:" + paramInt1); 
    detachViewAt(paramInt1);
    attachView(view, paramInt2);
  }
  
  public void offsetChildrenHorizontal(int paramInt) {
    if (this.mRecyclerView != null)
      this.mRecyclerView.offsetChildrenHorizontal(paramInt); 
  }
  
  public void offsetChildrenVertical(int paramInt) {
    if (this.mRecyclerView != null)
      this.mRecyclerView.offsetChildrenVertical(paramInt); 
  }
  
  public void onAdapterChanged(RecyclerView$Adapter paramRecyclerView$Adapter1, RecyclerView$Adapter paramRecyclerView$Adapter2) {}
  
  public boolean onAddFocusables(RecyclerView paramRecyclerView, ArrayList<View> paramArrayList, int paramInt1, int paramInt2) {
    return false;
  }
  
  @CallSuper
  public void onAttachedToWindow(RecyclerView paramRecyclerView) {}
  
  @Deprecated
  public void onDetachedFromWindow(RecyclerView paramRecyclerView) {}
  
  @CallSuper
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView$Recycler paramRecyclerView$Recycler) {
    onDetachedFromWindow(paramRecyclerView);
  }
  
  @Nullable
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return null;
  }
  
  public void onInitializeAccessibilityEvent(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, AccessibilityEvent paramAccessibilityEvent) {
    boolean bool = true;
    AccessibilityRecordCompat accessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
    if (this.mRecyclerView != null && accessibilityRecordCompat != null) {
      boolean bool1 = bool;
      if (!ViewCompat.canScrollVertically((View)this.mRecyclerView, 1)) {
        bool1 = bool;
        if (!ViewCompat.canScrollVertically((View)this.mRecyclerView, -1)) {
          bool1 = bool;
          if (!ViewCompat.canScrollHorizontally((View)this.mRecyclerView, -1))
            if (ViewCompat.canScrollHorizontally((View)this.mRecyclerView, 1)) {
              bool1 = bool;
            } else {
              bool1 = false;
            }  
        } 
      } 
      accessibilityRecordCompat.setScrollable(bool1);
      if (this.mRecyclerView.mAdapter != null) {
        accessibilityRecordCompat.setItemCount(this.mRecyclerView.mAdapter.getItemCount());
        return;
      } 
    } 
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    onInitializeAccessibilityEvent(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, paramAccessibilityEvent);
  }
  
  void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    onInitializeAccessibilityNodeInfo(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, paramAccessibilityNodeInfoCompat);
  }
  
  public void onInitializeAccessibilityNodeInfo(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    if (ViewCompat.canScrollVertically((View)this.mRecyclerView, -1) || ViewCompat.canScrollHorizontally((View)this.mRecyclerView, -1)) {
      paramAccessibilityNodeInfoCompat.addAction(8192);
      paramAccessibilityNodeInfoCompat.setScrollable(true);
    } 
    if (ViewCompat.canScrollVertically((View)this.mRecyclerView, 1) || ViewCompat.canScrollHorizontally((View)this.mRecyclerView, 1)) {
      paramAccessibilityNodeInfoCompat.addAction(4096);
      paramAccessibilityNodeInfoCompat.setScrollable(true);
    } 
    paramAccessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCountForAccessibility(paramRecyclerView$Recycler, paramRecyclerView$State), getColumnCountForAccessibility(paramRecyclerView$Recycler, paramRecyclerView$State), isLayoutHierarchical(paramRecyclerView$Recycler, paramRecyclerView$State), getSelectionModeForAccessibility(paramRecyclerView$Recycler, paramRecyclerView$State)));
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    boolean bool1;
    boolean bool2;
    if (canScrollVertically()) {
      bool1 = getPosition(paramView);
    } else {
      bool1 = false;
    } 
    if (canScrollHorizontally()) {
      bool2 = getPosition(paramView);
    } else {
      bool2 = false;
    } 
    paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(bool1, 1, bool2, 1, false, false));
  }
  
  void onInitializeAccessibilityNodeInfoForItem(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder != null && !recyclerView$ViewHolder.isRemoved() && !this.mChildHelper.isHidden(recyclerView$ViewHolder.itemView))
      onInitializeAccessibilityNodeInfoForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, paramView, paramAccessibilityNodeInfoCompat); 
  }
  
  public View onInterceptFocusSearch(View paramView, int paramInt) {
    return null;
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void onItemsChanged(RecyclerView paramRecyclerView) {}
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject) {
    onItemsUpdated(paramRecyclerView, paramInt1, paramInt2);
  }
  
  public void onLayoutChildren(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }
  
  public void onLayoutCompleted(RecyclerView$State paramRecyclerView$State) {}
  
  public void onMeasure(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt1, int paramInt2) {
    this.mRecyclerView.defaultOnMeasure(paramInt1, paramInt2);
  }
  
  public boolean onRequestChildFocus(RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State, View paramView1, View paramView2) {
    return onRequestChildFocus(paramRecyclerView, paramView1, paramView2);
  }
  
  @Deprecated
  public boolean onRequestChildFocus(RecyclerView paramRecyclerView, View paramView1, View paramView2) {
    return (isSmoothScrolling() || paramRecyclerView.isComputingLayout());
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState() {
    return null;
  }
  
  public void onScrollStateChanged(int paramInt) {}
  
  boolean performAccessibilityAction(int paramInt, Bundle paramBundle) {
    return performAccessibilityAction(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, paramInt, paramBundle);
  }
  
  public boolean performAccessibilityAction(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt, Bundle paramBundle) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   4: ifnonnull -> 9
    //   7: iconst_0
    //   8: ireturn
    //   9: iload_3
    //   10: lookupswitch default -> 36, 4096 -> 129, 8192 -> 62
    //   36: iconst_0
    //   37: istore_3
    //   38: iconst_0
    //   39: istore #5
    //   41: iload #5
    //   43: ifne -> 50
    //   46: iload_3
    //   47: ifeq -> 7
    //   50: aload_0
    //   51: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   54: iload_3
    //   55: iload #5
    //   57: invokevirtual scrollBy : (II)V
    //   60: iconst_1
    //   61: ireturn
    //   62: aload_0
    //   63: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   66: iconst_m1
    //   67: invokestatic canScrollVertically : (Landroid/view/View;I)Z
    //   70: ifeq -> 212
    //   73: aload_0
    //   74: invokevirtual getHeight : ()I
    //   77: aload_0
    //   78: invokevirtual getPaddingTop : ()I
    //   81: isub
    //   82: aload_0
    //   83: invokevirtual getPaddingBottom : ()I
    //   86: isub
    //   87: ineg
    //   88: istore_3
    //   89: iload_3
    //   90: istore #5
    //   92: aload_0
    //   93: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   96: iconst_m1
    //   97: invokestatic canScrollHorizontally : (Landroid/view/View;I)Z
    //   100: ifeq -> 202
    //   103: aload_0
    //   104: invokevirtual getWidth : ()I
    //   107: aload_0
    //   108: invokevirtual getPaddingLeft : ()I
    //   111: isub
    //   112: aload_0
    //   113: invokevirtual getPaddingRight : ()I
    //   116: isub
    //   117: ineg
    //   118: istore #6
    //   120: iload_3
    //   121: istore #5
    //   123: iload #6
    //   125: istore_3
    //   126: goto -> 41
    //   129: aload_0
    //   130: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   133: iconst_1
    //   134: invokestatic canScrollVertically : (Landroid/view/View;I)Z
    //   137: ifeq -> 207
    //   140: aload_0
    //   141: invokevirtual getHeight : ()I
    //   144: aload_0
    //   145: invokevirtual getPaddingTop : ()I
    //   148: isub
    //   149: aload_0
    //   150: invokevirtual getPaddingBottom : ()I
    //   153: isub
    //   154: istore_3
    //   155: iload_3
    //   156: istore #5
    //   158: aload_0
    //   159: getfield mRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   162: iconst_1
    //   163: invokestatic canScrollHorizontally : (Landroid/view/View;I)Z
    //   166: ifeq -> 202
    //   169: aload_0
    //   170: invokevirtual getWidth : ()I
    //   173: istore #6
    //   175: aload_0
    //   176: invokevirtual getPaddingLeft : ()I
    //   179: istore #7
    //   181: aload_0
    //   182: invokevirtual getPaddingRight : ()I
    //   185: istore #8
    //   187: iload_3
    //   188: istore #5
    //   190: iload #6
    //   192: iload #7
    //   194: isub
    //   195: iload #8
    //   197: isub
    //   198: istore_3
    //   199: goto -> 41
    //   202: iconst_0
    //   203: istore_3
    //   204: goto -> 41
    //   207: iconst_0
    //   208: istore_3
    //   209: goto -> 155
    //   212: iconst_0
    //   213: istore_3
    //   214: goto -> 89
  }
  
  public boolean performAccessibilityActionForItem(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, View paramView, int paramInt, Bundle paramBundle) {
    return false;
  }
  
  boolean performAccessibilityActionForItem(View paramView, int paramInt, Bundle paramBundle) {
    return performAccessibilityActionForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, paramView, paramInt, paramBundle);
  }
  
  public void postOnAnimation(Runnable paramRunnable) {
    if (this.mRecyclerView != null)
      ViewCompat.postOnAnimation((View)this.mRecyclerView, paramRunnable); 
  }
  
  public void removeAllViews() {
    for (int i = getChildCount() - 1; i >= 0; i--)
      this.mChildHelper.removeViewAt(i); 
  }
  
  public void removeAndRecycleAllViews(RecyclerView$Recycler paramRecyclerView$Recycler) {
    for (int i = getChildCount() - 1; i >= 0; i--) {
      if (!RecyclerView.getChildViewHolderInt(getChildAt(i)).shouldIgnore())
        removeAndRecycleViewAt(i, paramRecyclerView$Recycler); 
    } 
  }
  
  void removeAndRecycleScrapInt(RecyclerView$Recycler paramRecyclerView$Recycler) {
    int j = paramRecyclerView$Recycler.getScrapCount();
    for (int i = j - 1; i >= 0; i--) {
      View view = paramRecyclerView$Recycler.getScrapViewAt(i);
      RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(view);
      if (!recyclerView$ViewHolder.shouldIgnore()) {
        recyclerView$ViewHolder.setIsRecyclable(false);
        if (recyclerView$ViewHolder.isTmpDetached())
          this.mRecyclerView.removeDetachedView(view, false); 
        if (this.mRecyclerView.mItemAnimator != null)
          this.mRecyclerView.mItemAnimator.endAnimation(recyclerView$ViewHolder); 
        recyclerView$ViewHolder.setIsRecyclable(true);
        paramRecyclerView$Recycler.quickRecycleScrapView(view);
      } 
    } 
    paramRecyclerView$Recycler.clearScrap();
    if (j > 0)
      this.mRecyclerView.invalidate(); 
  }
  
  public void removeAndRecycleView(View paramView, RecyclerView$Recycler paramRecyclerView$Recycler) {
    removeView(paramView);
    paramRecyclerView$Recycler.recycleView(paramView);
  }
  
  public void removeAndRecycleViewAt(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler) {
    View view = getChildAt(paramInt);
    removeViewAt(paramInt);
    paramRecyclerView$Recycler.recycleView(view);
  }
  
  public boolean removeCallbacks(Runnable paramRunnable) {
    return (this.mRecyclerView != null) ? this.mRecyclerView.removeCallbacks(paramRunnable) : false;
  }
  
  public void removeDetachedView(View paramView) {
    this.mRecyclerView.removeDetachedView(paramView, false);
  }
  
  public void removeView(View paramView) {
    this.mChildHelper.removeView(paramView);
  }
  
  public void removeViewAt(int paramInt) {
    if (getChildAt(paramInt) != null)
      this.mChildHelper.removeViewAt(paramInt); 
  }
  
  public boolean requestChildRectangleOnScreen(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean) {
    return requestChildRectangleOnScreen(paramRecyclerView, paramView, paramRect, paramBoolean, false);
  }
  
  public boolean requestChildRectangleOnScreen(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #8
    //   3: aload_0
    //   4: aload_1
    //   5: aload_2
    //   6: aload_3
    //   7: iload #4
    //   9: invokespecial getChildRectangleOnScreenScrollAmount : (Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    //   12: astore_2
    //   13: aload_2
    //   14: iconst_0
    //   15: iaload
    //   16: istore #6
    //   18: aload_2
    //   19: iconst_1
    //   20: iaload
    //   21: istore #7
    //   23: iload #5
    //   25: ifeq -> 44
    //   28: iload #8
    //   30: istore #5
    //   32: aload_0
    //   33: aload_1
    //   34: iload #6
    //   36: iload #7
    //   38: invokespecial isFocusedChildVisibleAfterScrolling : (Landroid/support/v7/widget/RecyclerView;II)Z
    //   41: ifeq -> 74
    //   44: iload #6
    //   46: ifne -> 58
    //   49: iload #8
    //   51: istore #5
    //   53: iload #7
    //   55: ifeq -> 74
    //   58: iload #4
    //   60: ifeq -> 77
    //   63: aload_1
    //   64: iload #6
    //   66: iload #7
    //   68: invokevirtual scrollBy : (II)V
    //   71: iconst_1
    //   72: istore #5
    //   74: iload #5
    //   76: ireturn
    //   77: aload_1
    //   78: iload #6
    //   80: iload #7
    //   82: invokevirtual smoothScrollBy : (II)V
    //   85: goto -> 71
  }
  
  public void requestLayout() {
    if (this.mRecyclerView != null)
      this.mRecyclerView.requestLayout(); 
  }
  
  public void requestSimpleAnimationsInNextLayout() {
    this.mRequestedSimpleAnimations = true;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public void scrollToPosition(int paramInt) {}
  
  public int scrollVerticallyBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return 0;
  }
  
  public void setAutoMeasureEnabled(boolean paramBoolean) {
    this.mAutoMeasure = paramBoolean;
  }
  
  void setExactMeasureSpecsFrom(RecyclerView paramRecyclerView) {
    setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824));
  }
  
  public final void setItemPrefetchEnabled(boolean paramBoolean) {
    if (paramBoolean != this.mItemPrefetchEnabled) {
      this.mItemPrefetchEnabled = paramBoolean;
      this.mPrefetchMaxCountObserved = 0;
      if (this.mRecyclerView != null)
        this.mRecyclerView.mRecycler.updateViewCacheSize(); 
    } 
  }
  
  void setMeasureSpecs(int paramInt1, int paramInt2) {
    this.mWidth = View.MeasureSpec.getSize(paramInt1);
    this.mWidthMode = View.MeasureSpec.getMode(paramInt1);
    if (this.mWidthMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC)
      this.mWidth = 0; 
    this.mHeight = View.MeasureSpec.getSize(paramInt2);
    this.mHeightMode = View.MeasureSpec.getMode(paramInt2);
    if (this.mHeightMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC)
      this.mHeight = 0; 
  }
  
  public void setMeasuredDimension(int paramInt1, int paramInt2) {
    RecyclerView.access$1000(this.mRecyclerView, paramInt1, paramInt2);
  }
  
  public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2) {
    int i = paramRect.width();
    int j = getPaddingLeft();
    int k = getPaddingRight();
    int m = paramRect.height();
    int n = getPaddingTop();
    int i1 = getPaddingBottom();
    setMeasuredDimension(chooseSize(paramInt1, i + j + k, getMinimumWidth()), chooseSize(paramInt2, m + n + i1, getMinimumHeight()));
  }
  
  void setMeasuredDimensionFromChildren(int paramInt1, int paramInt2) {
    int k = Integer.MAX_VALUE;
    int j = Integer.MIN_VALUE;
    int i1 = getChildCount();
    if (i1 == 0) {
      this.mRecyclerView.defaultOnMeasure(paramInt1, paramInt2);
      return;
    } 
    int i = 0;
    int m = Integer.MIN_VALUE;
    int n = Integer.MAX_VALUE;
    while (i < i1) {
      View view = getChildAt(i);
      Rect rect = this.mRecyclerView.mTempRect;
      getDecoratedBoundsWithMargins(view, rect);
      int i2 = n;
      if (rect.left < n)
        i2 = rect.left; 
      int i3 = m;
      if (rect.right > m)
        i3 = rect.right; 
      int i4 = k;
      if (rect.top < k)
        i4 = rect.top; 
      int i5 = j;
      if (rect.bottom > j)
        i5 = rect.bottom; 
      i++;
      n = i2;
      m = i3;
      k = i4;
      j = i5;
    } 
    this.mRecyclerView.mTempRect.set(n, k, m, j);
    setMeasuredDimension(this.mRecyclerView.mTempRect, paramInt1, paramInt2);
  }
  
  public void setMeasurementCacheEnabled(boolean paramBoolean) {
    this.mMeasurementCacheEnabled = paramBoolean;
  }
  
  void setRecyclerView(RecyclerView paramRecyclerView) {
    if (paramRecyclerView == null) {
      this.mRecyclerView = null;
      this.mChildHelper = null;
      this.mWidth = 0;
      this.mHeight = 0;
    } else {
      this.mRecyclerView = paramRecyclerView;
      this.mChildHelper = paramRecyclerView.mChildHelper;
      this.mWidth = paramRecyclerView.getWidth();
      this.mHeight = paramRecyclerView.getHeight();
    } 
    this.mWidthMode = 1073741824;
    this.mHeightMode = 1073741824;
  }
  
  boolean shouldMeasureChild(View paramView, int paramInt1, int paramInt2, RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    return (paramView.isLayoutRequested() || !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(paramView.getWidth(), paramInt1, paramRecyclerView$LayoutParams.width) || !isMeasurementUpToDate(paramView.getHeight(), paramInt2, paramRecyclerView$LayoutParams.height));
  }
  
  boolean shouldMeasureTwice() {
    return false;
  }
  
  boolean shouldReMeasureChild(View paramView, int paramInt1, int paramInt2, RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    return (!this.mMeasurementCacheEnabled || !isMeasurementUpToDate(paramView.getMeasuredWidth(), paramInt1, paramRecyclerView$LayoutParams.width) || !isMeasurementUpToDate(paramView.getMeasuredHeight(), paramInt2, paramRecyclerView$LayoutParams.height));
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State, int paramInt) {
    Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
  }
  
  public void startSmoothScroll(RecyclerView$SmoothScroller paramRecyclerView$SmoothScroller) {
    if (this.mSmoothScroller != null && paramRecyclerView$SmoothScroller != this.mSmoothScroller && this.mSmoothScroller.isRunning())
      this.mSmoothScroller.stop(); 
    this.mSmoothScroller = paramRecyclerView$SmoothScroller;
    this.mSmoothScroller.start(this.mRecyclerView, this);
  }
  
  public void stopIgnoringView(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    recyclerView$ViewHolder.stopIgnoring();
    recyclerView$ViewHolder.resetInternal();
    recyclerView$ViewHolder.addFlags(4);
  }
  
  void stopSmoothScroller() {
    if (this.mSmoothScroller != null)
      this.mSmoothScroller.stop(); 
  }
  
  public boolean supportsPredictiveItemAnimations() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$LayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */