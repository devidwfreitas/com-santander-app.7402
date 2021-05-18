package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager {
  private static final boolean DEBUG = false;
  
  public static final int DEFAULT_SPAN_COUNT = -1;
  
  private static final String TAG = "GridLayoutManager";
  
  int[] mCachedBorders;
  
  final Rect mDecorInsets = new Rect();
  
  boolean mPendingSpanCountChange = false;
  
  final SparseIntArray mPreLayoutSpanIndexCache = new SparseIntArray();
  
  final SparseIntArray mPreLayoutSpanSizeCache = new SparseIntArray();
  
  View[] mSet;
  
  int mSpanCount = -1;
  
  GridLayoutManager$SpanSizeLookup mSpanSizeLookup = new GridLayoutManager$DefaultSpanSizeLookup();
  
  public GridLayoutManager(Context paramContext, int paramInt) {
    super(paramContext);
    setSpanCount(paramInt);
  }
  
  public GridLayoutManager(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean) {
    super(paramContext, paramInt2, paramBoolean);
    setSpanCount(paramInt1);
  }
  
  public GridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setSpanCount((getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2)).spanCount);
  }
  
  private void assignSpans(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt1, int paramInt2, boolean paramBoolean) {
    byte b;
    if (paramBoolean) {
      paramInt2 = 1;
      boolean bool = false;
      b = paramInt1;
      paramInt1 = bool;
    } else {
      b = -1;
      paramInt1--;
      paramInt2 = -1;
    } 
    int i = 0;
    while (paramInt1 != b) {
      View view = this.mSet[paramInt1];
      GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams)view.getLayoutParams();
      gridLayoutManager$LayoutParams.mSpanSize = getSpanSize(paramRecyclerView$Recycler, paramRecyclerView$State, getPosition(view));
      gridLayoutManager$LayoutParams.mSpanIndex = i;
      i += gridLayoutManager$LayoutParams.mSpanSize;
      paramInt1 += paramInt2;
    } 
  }
  
  private void cachePreLayoutSpanMapping() {
    int j = getChildCount();
    for (int i = 0; i < j; i++) {
      GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams)getChildAt(i).getLayoutParams();
      int k = gridLayoutManager$LayoutParams.getViewLayoutPosition();
      this.mPreLayoutSpanSizeCache.put(k, gridLayoutManager$LayoutParams.getSpanSize());
      this.mPreLayoutSpanIndexCache.put(k, gridLayoutManager$LayoutParams.getSpanIndex());
    } 
  }
  
  private void calculateItemBorders(int paramInt) {
    this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, paramInt);
  }
  
  static int[] calculateItemBorders(int[] paramArrayOfint, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #5
    //   3: aload_0
    //   4: ifnull -> 28
    //   7: aload_0
    //   8: arraylength
    //   9: iload_1
    //   10: iconst_1
    //   11: iadd
    //   12: if_icmpne -> 28
    //   15: aload_0
    //   16: astore #8
    //   18: aload_0
    //   19: aload_0
    //   20: arraylength
    //   21: iconst_1
    //   22: isub
    //   23: iaload
    //   24: iload_2
    //   25: if_icmpeq -> 35
    //   28: iload_1
    //   29: iconst_1
    //   30: iadd
    //   31: newarray int
    //   33: astore #8
    //   35: aload #8
    //   37: iconst_0
    //   38: iconst_0
    //   39: iastore
    //   40: iload_2
    //   41: iload_1
    //   42: idiv
    //   43: istore #6
    //   45: iload_2
    //   46: iload_1
    //   47: irem
    //   48: istore #7
    //   50: iconst_1
    //   51: istore_3
    //   52: iconst_0
    //   53: istore #4
    //   55: iload #5
    //   57: istore_2
    //   58: iload_3
    //   59: iload_1
    //   60: if_icmpgt -> 110
    //   63: iload_2
    //   64: iload #7
    //   66: iadd
    //   67: istore_2
    //   68: iload_2
    //   69: ifle -> 113
    //   72: iload_1
    //   73: iload_2
    //   74: isub
    //   75: iload #7
    //   77: if_icmpge -> 113
    //   80: iload #6
    //   82: iconst_1
    //   83: iadd
    //   84: istore #5
    //   86: iload_2
    //   87: iload_1
    //   88: isub
    //   89: istore_2
    //   90: iload #4
    //   92: iload #5
    //   94: iadd
    //   95: istore #4
    //   97: aload #8
    //   99: iload_3
    //   100: iload #4
    //   102: iastore
    //   103: iload_3
    //   104: iconst_1
    //   105: iadd
    //   106: istore_3
    //   107: goto -> 58
    //   110: aload #8
    //   112: areturn
    //   113: iload #6
    //   115: istore #5
    //   117: goto -> 90
  }
  
  private void clearPreLayoutSpanMappingCache() {
    this.mPreLayoutSpanSizeCache.clear();
    this.mPreLayoutSpanIndexCache.clear();
  }
  
  private void ensureAnchorIsInCorrectSpan(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, LinearLayoutManager$AnchorInfo paramLinearLayoutManager$AnchorInfo, int paramInt) {
    int i = 1;
    if (paramInt != 1)
      i = 0; 
    paramInt = getSpanIndex(paramRecyclerView$Recycler, paramRecyclerView$State, paramLinearLayoutManager$AnchorInfo.mPosition);
    if (i) {
      while (paramInt > 0 && paramLinearLayoutManager$AnchorInfo.mPosition > 0) {
        paramLinearLayoutManager$AnchorInfo.mPosition--;
        paramInt = getSpanIndex(paramRecyclerView$Recycler, paramRecyclerView$State, paramLinearLayoutManager$AnchorInfo.mPosition);
      } 
    } else {
      int j = paramRecyclerView$State.getItemCount();
      i = paramLinearLayoutManager$AnchorInfo.mPosition;
      while (i < j - 1) {
        int k = getSpanIndex(paramRecyclerView$Recycler, paramRecyclerView$State, i + 1);
        if (k > paramInt) {
          i++;
          paramInt = k;
        } 
      } 
      paramLinearLayoutManager$AnchorInfo.mPosition = i;
    } 
  }
  
  private void ensureViewSet() {
    if (this.mSet == null || this.mSet.length != this.mSpanCount)
      this.mSet = new View[this.mSpanCount]; 
  }
  
  private int getSpanGroupIndex(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt) {
    if (!paramRecyclerView$State.isPreLayout())
      return this.mSpanSizeLookup.getSpanGroupIndex(paramInt, this.mSpanCount); 
    int i = paramRecyclerView$Recycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (i == -1) {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + paramInt);
      return 0;
    } 
    return this.mSpanSizeLookup.getSpanGroupIndex(i, this.mSpanCount);
  }
  
  private int getSpanIndex(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt) {
    if (!paramRecyclerView$State.isPreLayout())
      return this.mSpanSizeLookup.getCachedSpanIndex(paramInt, this.mSpanCount); 
    int j = this.mPreLayoutSpanIndexCache.get(paramInt, -1);
    int i = j;
    if (j == -1) {
      i = paramRecyclerView$Recycler.convertPreLayoutPositionToPostLayout(paramInt);
      if (i == -1) {
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
        return 0;
      } 
      return this.mSpanSizeLookup.getCachedSpanIndex(i, this.mSpanCount);
    } 
    return i;
  }
  
  private int getSpanSize(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt) {
    if (!paramRecyclerView$State.isPreLayout())
      return this.mSpanSizeLookup.getSpanSize(paramInt); 
    int j = this.mPreLayoutSpanSizeCache.get(paramInt, -1);
    int i = j;
    if (j == -1) {
      i = paramRecyclerView$Recycler.convertPreLayoutPositionToPostLayout(paramInt);
      if (i == -1) {
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
        return 1;
      } 
      return this.mSpanSizeLookup.getSpanSize(i);
    } 
    return i;
  }
  
  private void guessMeasurement(float paramFloat, int paramInt) {
    calculateItemBorders(Math.max(Math.round(this.mSpanCount * paramFloat), paramInt));
  }
  
  private void measureChild(View paramView, int paramInt, boolean paramBoolean) {
    GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams)paramView.getLayoutParams();
    Rect rect = gridLayoutManager$LayoutParams.mDecorInsets;
    int j = rect.top + rect.bottom + gridLayoutManager$LayoutParams.topMargin + gridLayoutManager$LayoutParams.bottomMargin;
    int i = rect.left;
    int k = rect.right;
    int m = gridLayoutManager$LayoutParams.leftMargin;
    i = gridLayoutManager$LayoutParams.rightMargin + k + i + m;
    k = getSpaceForSpanRange(gridLayoutManager$LayoutParams.mSpanIndex, gridLayoutManager$LayoutParams.mSpanSize);
    if (this.mOrientation == 1) {
      i = getChildMeasureSpec(k, paramInt, i, gridLayoutManager$LayoutParams.width, false);
      paramInt = getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getHeightMode(), j, gridLayoutManager$LayoutParams.height, true);
    } else {
      paramInt = getChildMeasureSpec(k, paramInt, j, gridLayoutManager$LayoutParams.height, false);
      i = getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getWidthMode(), i, gridLayoutManager$LayoutParams.width, true);
    } 
    measureChildWithDecorationsAndMargin(paramView, i, paramInt, paramBoolean);
  }
  
  private void measureChildWithDecorationsAndMargin(View paramView, int paramInt1, int paramInt2, boolean paramBoolean) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    if (paramBoolean) {
      paramBoolean = shouldReMeasureChild(paramView, paramInt1, paramInt2, recyclerView$LayoutParams);
    } else {
      paramBoolean = shouldMeasureChild(paramView, paramInt1, paramInt2, recyclerView$LayoutParams);
    } 
    if (paramBoolean)
      paramView.measure(paramInt1, paramInt2); 
  }
  
  private void updateMeasurements() {
    int i;
    if (getOrientation() == 1) {
      i = getWidth() - getPaddingRight() - getPaddingLeft();
    } else {
      i = getHeight() - getPaddingBottom() - getPaddingTop();
    } 
    calculateItemBorders(i);
  }
  
  public boolean checkLayoutParams(RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    return paramRecyclerView$LayoutParams instanceof GridLayoutManager$LayoutParams;
  }
  
  void collectPrefetchPositionsForLayoutState(RecyclerView$State paramRecyclerView$State, LinearLayoutManager$LayoutState paramLinearLayoutManager$LayoutState, RecyclerView$LayoutManager$LayoutPrefetchRegistry paramRecyclerView$LayoutManager$LayoutPrefetchRegistry) {
    int j = this.mSpanCount;
    int i;
    for (i = 0; i < this.mSpanCount && paramLinearLayoutManager$LayoutState.hasMore(paramRecyclerView$State) && j > 0; i++) {
      int k = paramLinearLayoutManager$LayoutState.mCurrentPosition;
      paramRecyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(k, Math.max(0, paramLinearLayoutManager$LayoutState.mScrollingOffset));
      j -= this.mSpanSizeLookup.getSpanSize(k);
      paramLinearLayoutManager$LayoutState.mCurrentPosition += paramLinearLayoutManager$LayoutState.mItemDirection;
    } 
  }
  
  View findReferenceChild(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, int paramInt1, int paramInt2, int paramInt3) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #11
    //   3: aload_0
    //   4: invokevirtual ensureLayoutState : ()V
    //   7: aload_0
    //   8: getfield mOrientationHelper : Landroid/support/v7/widget/OrientationHelper;
    //   11: invokevirtual getStartAfterPadding : ()I
    //   14: istore #7
    //   16: aload_0
    //   17: getfield mOrientationHelper : Landroid/support/v7/widget/OrientationHelper;
    //   20: invokevirtual getEndAfterPadding : ()I
    //   23: istore #8
    //   25: iload #4
    //   27: iload_3
    //   28: if_icmple -> 113
    //   31: iconst_1
    //   32: istore #6
    //   34: aconst_null
    //   35: astore #10
    //   37: iload_3
    //   38: iload #4
    //   40: if_icmpeq -> 197
    //   43: aload_0
    //   44: iload_3
    //   45: invokevirtual getChildAt : (I)Landroid/view/View;
    //   48: astore #12
    //   50: aload_0
    //   51: aload #12
    //   53: invokevirtual getPosition : (Landroid/view/View;)I
    //   56: istore #9
    //   58: iload #9
    //   60: iflt -> 216
    //   63: iload #9
    //   65: iload #5
    //   67: if_icmpge -> 216
    //   70: aload_0
    //   71: aload_1
    //   72: aload_2
    //   73: iload #9
    //   75: invokespecial getSpanIndex : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    //   78: ifeq -> 119
    //   81: aload #11
    //   83: astore #12
    //   85: aload #10
    //   87: astore #11
    //   89: aload #12
    //   91: astore #10
    //   93: iload_3
    //   94: iload #6
    //   96: iadd
    //   97: istore_3
    //   98: aload #11
    //   100: astore #12
    //   102: aload #10
    //   104: astore #11
    //   106: aload #12
    //   108: astore #10
    //   110: goto -> 37
    //   113: iconst_m1
    //   114: istore #6
    //   116: goto -> 34
    //   119: aload #12
    //   121: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   124: checkcast android/support/v7/widget/RecyclerView$LayoutParams
    //   127: invokevirtual isItemRemoved : ()Z
    //   130: ifeq -> 149
    //   133: aload #10
    //   135: ifnonnull -> 216
    //   138: aload #11
    //   140: astore #10
    //   142: aload #12
    //   144: astore #11
    //   146: goto -> 93
    //   149: aload_0
    //   150: getfield mOrientationHelper : Landroid/support/v7/widget/OrientationHelper;
    //   153: aload #12
    //   155: invokevirtual getDecoratedStart : (Landroid/view/View;)I
    //   158: iload #8
    //   160: if_icmpge -> 181
    //   163: aload #12
    //   165: astore #13
    //   167: aload_0
    //   168: getfield mOrientationHelper : Landroid/support/v7/widget/OrientationHelper;
    //   171: aload #12
    //   173: invokevirtual getDecoratedEnd : (Landroid/view/View;)I
    //   176: iload #7
    //   178: if_icmpge -> 206
    //   181: aload #11
    //   183: ifnonnull -> 216
    //   186: aload #10
    //   188: astore #11
    //   190: aload #12
    //   192: astore #10
    //   194: goto -> 93
    //   197: aload #11
    //   199: ifnull -> 209
    //   202: aload #11
    //   204: astore #13
    //   206: aload #13
    //   208: areturn
    //   209: aload #10
    //   211: astore #11
    //   213: goto -> 202
    //   216: aload #10
    //   218: astore #12
    //   220: aload #11
    //   222: astore #10
    //   224: aload #12
    //   226: astore #11
    //   228: goto -> 93
  }
  
  public RecyclerView$LayoutParams generateDefaultLayoutParams() {
    return (this.mOrientation == 0) ? new GridLayoutManager$LayoutParams(-2, -1) : new GridLayoutManager$LayoutParams(-1, -2);
  }
  
  public RecyclerView$LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    return new GridLayoutManager$LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams instanceof ViewGroup.MarginLayoutParams) ? new GridLayoutManager$LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams) : new GridLayoutManager$LayoutParams(paramLayoutParams);
  }
  
  public int getColumnCountForAccessibility(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return (this.mOrientation == 1) ? this.mSpanCount : ((paramRecyclerView$State.getItemCount() < 1) ? 0 : (getSpanGroupIndex(paramRecyclerView$Recycler, paramRecyclerView$State, paramRecyclerView$State.getItemCount() - 1) + 1));
  }
  
  public int getRowCountForAccessibility(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    return (this.mOrientation == 0) ? this.mSpanCount : ((paramRecyclerView$State.getItemCount() < 1) ? 0 : (getSpanGroupIndex(paramRecyclerView$Recycler, paramRecyclerView$State, paramRecyclerView$State.getItemCount() - 1) + 1));
  }
  
  int getSpaceForSpanRange(int paramInt1, int paramInt2) {
    return (this.mOrientation == 1 && isLayoutRTL()) ? (this.mCachedBorders[this.mSpanCount - paramInt1] - this.mCachedBorders[this.mSpanCount - paramInt1 - paramInt2]) : (this.mCachedBorders[paramInt1 + paramInt2] - this.mCachedBorders[paramInt1]);
  }
  
  public int getSpanCount() {
    return this.mSpanCount;
  }
  
  public GridLayoutManager$SpanSizeLookup getSpanSizeLookup() {
    return this.mSpanSizeLookup;
  }
  
  void layoutChunk(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, LinearLayoutManager$LayoutState paramLinearLayoutManager$LayoutState, LinearLayoutManager$LayoutChunkResult paramLinearLayoutManager$LayoutChunkResult) {
    int j;
    int m;
    boolean bool;
    int i3 = this.mOrientationHelper.getModeInOther();
    if (i3 != 1073741824) {
      j = 1;
    } else {
      j = 0;
    } 
    if (getChildCount() > 0) {
      m = this.mCachedBorders[this.mSpanCount];
    } else {
      m = 0;
    } 
    if (j)
      updateMeasurements(); 
    if (paramLinearLayoutManager$LayoutState.mItemDirection == 1) {
      bool = true;
    } else {
      bool = false;
    } 
    int i1 = 0;
    int i2 = 0;
    int i = this.mSpanCount;
    int n = i1;
    int k = i2;
    if (!bool) {
      i = getSpanIndex(paramRecyclerView$Recycler, paramRecyclerView$State, paramLinearLayoutManager$LayoutState.mCurrentPosition) + getSpanSize(paramRecyclerView$Recycler, paramRecyclerView$State, paramLinearLayoutManager$LayoutState.mCurrentPosition);
      k = i2;
      n = i1;
    } 
    while (true) {
      if (n < this.mSpanCount && paramLinearLayoutManager$LayoutState.hasMore(paramRecyclerView$State) && i > 0) {
        i2 = paramLinearLayoutManager$LayoutState.mCurrentPosition;
        i1 = getSpanSize(paramRecyclerView$Recycler, paramRecyclerView$State, i2);
        if (i1 > this.mSpanCount)
          throw new IllegalArgumentException("Item at position " + i2 + " requires " + i1 + " spans but GridLayoutManager has only " + this.mSpanCount + " spans."); 
        i -= i1;
        if (i >= 0) {
          View view = paramLinearLayoutManager$LayoutState.next(paramRecyclerView$Recycler);
          if (view != null) {
            k += i1;
            this.mSet[n] = view;
            n++;
            continue;
          } 
        } 
      } 
      if (n == 0) {
        paramLinearLayoutManager$LayoutChunkResult.mFinished = true;
        return;
      } 
      assignSpans(paramRecyclerView$Recycler, paramRecyclerView$State, n, k, bool);
      k = 0;
      float f = 0.0F;
      for (i = 0; k < n; i = i1) {
        View view = this.mSet[k];
        if (paramLinearLayoutManager$LayoutState.mScrapList == null) {
          if (bool) {
            addView(view);
          } else {
            addView(view, 0);
          } 
        } else if (bool) {
          addDisappearingView(view);
        } else {
          addDisappearingView(view, 0);
        } 
        calculateItemDecorationsForChild(view, this.mDecorInsets);
        measureChild(view, i3, false);
        i2 = this.mOrientationHelper.getDecoratedMeasurement(view);
        i1 = i;
        if (i2 > i)
          i1 = i2; 
        GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams)view.getLayoutParams();
        float f1 = this.mOrientationHelper.getDecoratedMeasurementInOther(view) * 1.0F / gridLayoutManager$LayoutParams.mSpanSize;
        if (f1 > f)
          f = f1; 
        k++;
      } 
      k = i;
      if (j) {
        guessMeasurement(f, m);
        i = 0;
        j = 0;
        while (true) {
          k = i;
          if (j < n) {
            View view = this.mSet[j];
            measureChild(view, 1073741824, true);
            k = this.mOrientationHelper.getDecoratedMeasurement(view);
            if (k > i)
              i = k; 
            j++;
            continue;
          } 
          break;
        } 
      } 
      for (i = 0; i < n; i++) {
        View view = this.mSet[i];
        if (this.mOrientationHelper.getDecoratedMeasurement(view) != k) {
          GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams)view.getLayoutParams();
          Rect rect = gridLayoutManager$LayoutParams.mDecorInsets;
          j = rect.top + rect.bottom + gridLayoutManager$LayoutParams.topMargin + gridLayoutManager$LayoutParams.bottomMargin;
          m = rect.left;
          m = rect.right + m + gridLayoutManager$LayoutParams.leftMargin + gridLayoutManager$LayoutParams.rightMargin;
          i1 = getSpaceForSpanRange(gridLayoutManager$LayoutParams.mSpanIndex, gridLayoutManager$LayoutParams.mSpanSize);
          if (this.mOrientation == 1) {
            m = getChildMeasureSpec(i1, 1073741824, m, gridLayoutManager$LayoutParams.width, false);
            j = View.MeasureSpec.makeMeasureSpec(k - j, 1073741824);
          } else {
            m = View.MeasureSpec.makeMeasureSpec(k - m, 1073741824);
            j = getChildMeasureSpec(i1, 1073741824, j, gridLayoutManager$LayoutParams.height, false);
          } 
          measureChildWithDecorationsAndMargin(view, m, j, true);
        } 
      } 
      paramLinearLayoutManager$LayoutChunkResult.mConsumed = k;
      m = 0;
      if (this.mOrientation == 1) {
        if (paramLinearLayoutManager$LayoutState.mLayoutDirection == -1) {
          m = paramLinearLayoutManager$LayoutState.mOffset;
          i = m - k;
          j = 0;
          k = 0;
        } else {
          i = paramLinearLayoutManager$LayoutState.mOffset;
          m = i + k;
          j = 0;
          k = 0;
        } 
      } else if (paramLinearLayoutManager$LayoutState.mLayoutDirection == -1) {
        i = paramLinearLayoutManager$LayoutState.mOffset;
        j = i;
        k = i - k;
        i = 0;
      } else {
        i1 = paramLinearLayoutManager$LayoutState.mOffset;
        j = k + i1;
        i = 0;
        k = i1;
      } 
      i2 = k;
      i3 = 0;
      k = m;
      i1 = i;
      i = i2;
      for (m = i3; m < n; m++) {
        View view = this.mSet[m];
        GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams)view.getLayoutParams();
        if (this.mOrientation == 1) {
          if (isLayoutRTL()) {
            j = getPaddingLeft() + this.mCachedBorders[this.mSpanCount - gridLayoutManager$LayoutParams.mSpanIndex];
            i = j - this.mOrientationHelper.getDecoratedMeasurementInOther(view);
          } else {
            i = getPaddingLeft() + this.mCachedBorders[gridLayoutManager$LayoutParams.mSpanIndex];
            j = i + this.mOrientationHelper.getDecoratedMeasurementInOther(view);
          } 
        } else {
          i1 = getPaddingTop() + this.mCachedBorders[gridLayoutManager$LayoutParams.mSpanIndex];
          k = i1 + this.mOrientationHelper.getDecoratedMeasurementInOther(view);
        } 
        layoutDecoratedWithMargins(view, i, i1, j, k);
        if (gridLayoutManager$LayoutParams.isItemRemoved() || gridLayoutManager$LayoutParams.isItemChanged())
          paramLinearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true; 
        paramLinearLayoutManager$LayoutChunkResult.mFocusable |= view.hasFocusable();
      } 
      Arrays.fill((Object[])this.mSet, (Object)null);
      return;
    } 
  }
  
  void onAnchorReady(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, LinearLayoutManager$AnchorInfo paramLinearLayoutManager$AnchorInfo, int paramInt) {
    super.onAnchorReady(paramRecyclerView$Recycler, paramRecyclerView$State, paramLinearLayoutManager$AnchorInfo, paramInt);
    updateMeasurements();
    if (paramRecyclerView$State.getItemCount() > 0 && !paramRecyclerView$State.isPreLayout())
      ensureAnchorIsInCorrectSpan(paramRecyclerView$Recycler, paramRecyclerView$State, paramLinearLayoutManager$AnchorInfo, paramInt); 
    ensureViewSet();
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual findContainingItemView : (Landroid/view/View;)Landroid/view/View;
    //   5: astore #24
    //   7: aload #24
    //   9: ifnonnull -> 18
    //   12: aconst_null
    //   13: astore #23
    //   15: aload #23
    //   17: areturn
    //   18: aload #24
    //   20: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   23: checkcast android/support/v7/widget/GridLayoutManager$LayoutParams
    //   26: astore #21
    //   28: aload #21
    //   30: getfield mSpanIndex : I
    //   33: istore #15
    //   35: aload #21
    //   37: getfield mSpanIndex : I
    //   40: aload #21
    //   42: getfield mSpanSize : I
    //   45: iadd
    //   46: istore #16
    //   48: aload_0
    //   49: aload_1
    //   50: iload_2
    //   51: aload_3
    //   52: aload #4
    //   54: invokespecial onFocusSearchFailed : (Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    //   57: ifnonnull -> 62
    //   60: aconst_null
    //   61: areturn
    //   62: aload_0
    //   63: iload_2
    //   64: invokevirtual convertFocusDirectionToLayoutDirection : (I)I
    //   67: iconst_1
    //   68: if_icmpne -> 188
    //   71: iconst_1
    //   72: istore #20
    //   74: iload #20
    //   76: aload_0
    //   77: getfield mShouldReverseLayout : Z
    //   80: if_icmpeq -> 194
    //   83: iconst_1
    //   84: istore_2
    //   85: iload_2
    //   86: ifeq -> 199
    //   89: aload_0
    //   90: invokevirtual getChildCount : ()I
    //   93: iconst_1
    //   94: isub
    //   95: istore_2
    //   96: iconst_m1
    //   97: istore #10
    //   99: iconst_m1
    //   100: istore #9
    //   102: aload_0
    //   103: getfield mOrientation : I
    //   106: iconst_1
    //   107: if_icmpne -> 213
    //   110: aload_0
    //   111: invokevirtual isLayoutRTL : ()Z
    //   114: ifeq -> 213
    //   117: iconst_1
    //   118: istore #11
    //   120: aconst_null
    //   121: astore_1
    //   122: iconst_m1
    //   123: istore #8
    //   125: iconst_0
    //   126: istore #7
    //   128: aconst_null
    //   129: astore #21
    //   131: iconst_m1
    //   132: istore #6
    //   134: iconst_0
    //   135: istore #5
    //   137: aload_0
    //   138: aload_3
    //   139: aload #4
    //   141: iload_2
    //   142: invokespecial getSpanGroupIndex : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    //   145: istore #17
    //   147: iload_2
    //   148: istore #12
    //   150: iload #12
    //   152: iload #9
    //   154: if_icmpeq -> 182
    //   157: aload_0
    //   158: aload_3
    //   159: aload #4
    //   161: iload #12
    //   163: invokespecial getSpanGroupIndex : (Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    //   166: istore_2
    //   167: aload_0
    //   168: iload #12
    //   170: invokevirtual getChildAt : (I)Landroid/view/View;
    //   173: astore #22
    //   175: aload #22
    //   177: aload #24
    //   179: if_acmpne -> 219
    //   182: aload_1
    //   183: ifnull -> 652
    //   186: aload_1
    //   187: areturn
    //   188: iconst_0
    //   189: istore #20
    //   191: goto -> 74
    //   194: iconst_0
    //   195: istore_2
    //   196: goto -> 85
    //   199: aload_0
    //   200: invokevirtual getChildCount : ()I
    //   203: istore #9
    //   205: iconst_0
    //   206: istore_2
    //   207: iconst_1
    //   208: istore #10
    //   210: goto -> 102
    //   213: iconst_0
    //   214: istore #11
    //   216: goto -> 120
    //   219: aload #22
    //   221: invokevirtual hasFocusable : ()Z
    //   224: ifeq -> 309
    //   227: iload_2
    //   228: iload #17
    //   230: if_icmpeq -> 309
    //   233: aload_1
    //   234: ifnonnull -> 182
    //   237: iload #5
    //   239: istore_2
    //   240: iload #6
    //   242: istore #5
    //   244: aload #21
    //   246: astore #22
    //   248: iload #7
    //   250: istore #6
    //   252: aload_1
    //   253: astore #21
    //   255: iload #8
    //   257: istore #7
    //   259: aload #22
    //   261: astore_1
    //   262: iload #12
    //   264: iload #10
    //   266: iadd
    //   267: istore #13
    //   269: aload #21
    //   271: astore #22
    //   273: iload #6
    //   275: istore #8
    //   277: iload #7
    //   279: istore #12
    //   281: iload #5
    //   283: istore #6
    //   285: iload_2
    //   286: istore #5
    //   288: aload_1
    //   289: astore #21
    //   291: iload #8
    //   293: istore #7
    //   295: iload #12
    //   297: istore #8
    //   299: aload #22
    //   301: astore_1
    //   302: iload #13
    //   304: istore #12
    //   306: goto -> 150
    //   309: aload #22
    //   311: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   314: checkcast android/support/v7/widget/GridLayoutManager$LayoutParams
    //   317: astore #25
    //   319: aload #25
    //   321: getfield mSpanIndex : I
    //   324: istore #18
    //   326: aload #25
    //   328: getfield mSpanIndex : I
    //   331: aload #25
    //   333: getfield mSpanSize : I
    //   336: iadd
    //   337: istore #19
    //   339: aload #22
    //   341: invokevirtual hasFocusable : ()Z
    //   344: ifeq -> 365
    //   347: iload #18
    //   349: iload #15
    //   351: if_icmpne -> 365
    //   354: aload #22
    //   356: astore #23
    //   358: iload #19
    //   360: iload #16
    //   362: if_icmpeq -> 15
    //   365: iconst_0
    //   366: istore #14
    //   368: aload #22
    //   370: invokevirtual hasFocusable : ()Z
    //   373: ifeq -> 380
    //   376: aload_1
    //   377: ifnull -> 393
    //   380: aload #22
    //   382: invokevirtual hasFocusable : ()Z
    //   385: ifne -> 458
    //   388: aload #21
    //   390: ifnonnull -> 458
    //   393: iconst_1
    //   394: istore_2
    //   395: iload_2
    //   396: ifeq -> 237
    //   399: aload #22
    //   401: invokevirtual hasFocusable : ()Z
    //   404: ifeq -> 612
    //   407: aload #25
    //   409: getfield mSpanIndex : I
    //   412: istore #7
    //   414: iload #19
    //   416: iload #16
    //   418: invokestatic min : (II)I
    //   421: istore_2
    //   422: iload #18
    //   424: iload #15
    //   426: invokestatic max : (II)I
    //   429: istore #8
    //   431: aload #21
    //   433: astore_1
    //   434: iload_2
    //   435: iload #8
    //   437: isub
    //   438: istore #8
    //   440: iload #5
    //   442: istore_2
    //   443: aload #22
    //   445: astore #21
    //   447: iload #6
    //   449: istore #5
    //   451: iload #8
    //   453: istore #6
    //   455: goto -> 262
    //   458: iload #18
    //   460: iload #15
    //   462: invokestatic max : (II)I
    //   465: istore_2
    //   466: iload #19
    //   468: iload #16
    //   470: invokestatic min : (II)I
    //   473: iload_2
    //   474: isub
    //   475: istore #13
    //   477: aload #22
    //   479: invokevirtual hasFocusable : ()Z
    //   482: ifeq -> 538
    //   485: iload #13
    //   487: iload #7
    //   489: if_icmple -> 497
    //   492: iconst_1
    //   493: istore_2
    //   494: goto -> 395
    //   497: iload #14
    //   499: istore_2
    //   500: iload #13
    //   502: iload #7
    //   504: if_icmpne -> 395
    //   507: iload #18
    //   509: iload #8
    //   511: if_icmple -> 532
    //   514: iconst_1
    //   515: istore #13
    //   517: iload #14
    //   519: istore_2
    //   520: iload #11
    //   522: iload #13
    //   524: if_icmpne -> 395
    //   527: iconst_1
    //   528: istore_2
    //   529: goto -> 395
    //   532: iconst_0
    //   533: istore #13
    //   535: goto -> 517
    //   538: iload #14
    //   540: istore_2
    //   541: aload_1
    //   542: ifnonnull -> 395
    //   545: iload #14
    //   547: istore_2
    //   548: aload_0
    //   549: aload #22
    //   551: iconst_0
    //   552: iconst_1
    //   553: invokevirtual isViewPartiallyVisible : (Landroid/view/View;ZZ)Z
    //   556: ifeq -> 395
    //   559: iload #13
    //   561: iload #5
    //   563: if_icmple -> 571
    //   566: iconst_1
    //   567: istore_2
    //   568: goto -> 395
    //   571: iload #14
    //   573: istore_2
    //   574: iload #13
    //   576: iload #5
    //   578: if_icmpne -> 395
    //   581: iload #18
    //   583: iload #6
    //   585: if_icmple -> 606
    //   588: iconst_1
    //   589: istore #13
    //   591: iload #14
    //   593: istore_2
    //   594: iload #11
    //   596: iload #13
    //   598: if_icmpne -> 395
    //   601: iconst_1
    //   602: istore_2
    //   603: goto -> 395
    //   606: iconst_0
    //   607: istore #13
    //   609: goto -> 591
    //   612: aload #25
    //   614: getfield mSpanIndex : I
    //   617: istore #5
    //   619: iload #19
    //   621: iload #16
    //   623: invokestatic min : (II)I
    //   626: iload #18
    //   628: iload #15
    //   630: invokestatic max : (II)I
    //   633: isub
    //   634: istore_2
    //   635: iload #7
    //   637: istore #6
    //   639: iload #8
    //   641: istore #7
    //   643: aload_1
    //   644: astore #21
    //   646: aload #22
    //   648: astore_1
    //   649: goto -> 262
    //   652: aload #21
    //   654: astore_1
    //   655: goto -> 186
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {
    boolean bool;
    ViewGroup.LayoutParams layoutParams = paramView.getLayoutParams();
    if (!(layoutParams instanceof GridLayoutManager$LayoutParams)) {
      onInitializeAccessibilityNodeInfoForItem(paramView, paramAccessibilityNodeInfoCompat);
      return;
    } 
    GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams)layoutParams;
    int i = getSpanGroupIndex(paramRecyclerView$Recycler, paramRecyclerView$State, gridLayoutManager$LayoutParams.getViewLayoutPosition());
    if (this.mOrientation == 0) {
      int m = gridLayoutManager$LayoutParams.getSpanIndex();
      int n = gridLayoutManager$LayoutParams.getSpanSize();
      if (this.mSpanCount > 1 && gridLayoutManager$LayoutParams.getSpanSize() == this.mSpanCount) {
        bool = true;
      } else {
        bool = false;
      } 
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(m, n, i, 1, bool, false));
      return;
    } 
    int j = gridLayoutManager$LayoutParams.getSpanIndex();
    int k = gridLayoutManager$LayoutParams.getSpanSize();
    if (this.mSpanCount > 1 && gridLayoutManager$LayoutParams.getSpanSize() == this.mSpanCount) {
      bool = true;
    } else {
      bool = false;
    } 
    paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, k, bool, false));
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    this.mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView) {
    this.mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {
    this.mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    this.mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject) {
    this.mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onLayoutChildren(RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    if (paramRecyclerView$State.isPreLayout())
      cachePreLayoutSpanMapping(); 
    super.onLayoutChildren(paramRecyclerView$Recycler, paramRecyclerView$State);
    clearPreLayoutSpanMappingCache();
  }
  
  public void onLayoutCompleted(RecyclerView$State paramRecyclerView$State) {
    super.onLayoutCompleted(paramRecyclerView$State);
    this.mPendingSpanCountChange = false;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    updateMeasurements();
    ensureViewSet();
    return super.scrollHorizontallyBy(paramInt, paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView$Recycler paramRecyclerView$Recycler, RecyclerView$State paramRecyclerView$State) {
    updateMeasurements();
    ensureViewSet();
    return super.scrollVerticallyBy(paramInt, paramRecyclerView$Recycler, paramRecyclerView$State);
  }
  
  public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2) {
    if (this.mCachedBorders == null)
      super.setMeasuredDimension(paramRect, paramInt1, paramInt2); 
    int i = getPaddingLeft();
    int j = getPaddingRight() + i;
    int k = getPaddingTop() + getPaddingBottom();
    if (this.mOrientation == 1) {
      i = chooseSize(paramInt2, k + paramRect.height(), getMinimumHeight());
      paramInt2 = chooseSize(paramInt1, j + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumWidth());
      paramInt1 = i;
    } else {
      i = chooseSize(paramInt1, j + paramRect.width(), getMinimumWidth());
      paramInt1 = chooseSize(paramInt2, k + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumHeight());
      paramInt2 = i;
    } 
    setMeasuredDimension(paramInt2, paramInt1);
  }
  
  public void setSpanCount(int paramInt) {
    if (paramInt == this.mSpanCount)
      return; 
    this.mPendingSpanCountChange = true;
    if (paramInt < 1)
      throw new IllegalArgumentException("Span count should be at least 1. Provided " + paramInt); 
    this.mSpanCount = paramInt;
    this.mSpanSizeLookup.invalidateSpanIndexCache();
    requestLayout();
  }
  
  public void setSpanSizeLookup(GridLayoutManager$SpanSizeLookup paramGridLayoutManager$SpanSizeLookup) {
    this.mSpanSizeLookup = paramGridLayoutManager$SpanSizeLookup;
  }
  
  public void setStackFromEnd(boolean paramBoolean) {
    if (paramBoolean)
      throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout"); 
    super.setStackFromEnd(false);
  }
  
  public boolean supportsPredictiveItemAnimations() {
    return (this.mPendingSavedState == null && !this.mPendingSpanCountChange);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */