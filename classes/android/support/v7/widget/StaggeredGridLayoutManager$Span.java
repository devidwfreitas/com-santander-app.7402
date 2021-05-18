package android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;

class StaggeredGridLayoutManager$Span {
  static final int INVALID_LINE = -2147483648;
  
  int mCachedEnd = Integer.MIN_VALUE;
  
  int mCachedStart = Integer.MIN_VALUE;
  
  int mDeletedSize = 0;
  
  final int mIndex;
  
  ArrayList<View> mViews = new ArrayList<View>();
  
  StaggeredGridLayoutManager$Span(int paramInt) {
    this.mIndex = paramInt;
  }
  
  void appendToSpan(View paramView) {
    StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = getLayoutParams(paramView);
    staggeredGridLayoutManager$LayoutParams.mSpan = this;
    this.mViews.add(paramView);
    this.mCachedEnd = Integer.MIN_VALUE;
    if (this.mViews.size() == 1)
      this.mCachedStart = Integer.MIN_VALUE; 
    if (staggeredGridLayoutManager$LayoutParams.isItemRemoved() || staggeredGridLayoutManager$LayoutParams.isItemChanged())
      this.mDeletedSize += StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(paramView); 
  }
  
  void cacheReferenceLineAndClear(boolean paramBoolean, int paramInt) {
    int i;
    if (paramBoolean) {
      i = getEndLine(-2147483648);
    } else {
      i = getStartLine(-2147483648);
    } 
    clear();
    if (i != Integer.MIN_VALUE && (!paramBoolean || i >= StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding()) && (paramBoolean || i <= StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding())) {
      int j = i;
      if (paramInt != Integer.MIN_VALUE)
        j = i + paramInt; 
      this.mCachedEnd = j;
      this.mCachedStart = j;
      return;
    } 
  }
  
  void calculateCachedEnd() {
    View view = this.mViews.get(this.mViews.size() - 1);
    StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = getLayoutParams(view);
    this.mCachedEnd = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedEnd(view);
    if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
      StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = StaggeredGridLayoutManager.this.mLazySpanLookup.getFullSpanItem(staggeredGridLayoutManager$LayoutParams.getViewLayoutPosition());
      if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem != null && staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapDir == 1) {
        int i = this.mCachedEnd;
        this.mCachedEnd = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.getGapForSpan(this.mIndex) + i;
      } 
    } 
  }
  
  void calculateCachedStart() {
    View view = this.mViews.get(0);
    StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = getLayoutParams(view);
    this.mCachedStart = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedStart(view);
    if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
      StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = StaggeredGridLayoutManager.this.mLazySpanLookup.getFullSpanItem(staggeredGridLayoutManager$LayoutParams.getViewLayoutPosition());
      if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem != null && staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapDir == -1)
        this.mCachedStart -= staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.getGapForSpan(this.mIndex); 
    } 
  }
  
  void clear() {
    this.mViews.clear();
    invalidateCache();
    this.mDeletedSize = 0;
  }
  
  public int findFirstCompletelyVisibleItemPosition() {
    return StaggeredGridLayoutManager.this.mReverseLayout ? findOneVisibleChild(this.mViews.size() - 1, -1, true) : findOneVisibleChild(0, this.mViews.size(), true);
  }
  
  public int findFirstPartiallyVisibleItemPosition() {
    return StaggeredGridLayoutManager.this.mReverseLayout ? findOnePartiallyVisibleChild(this.mViews.size() - 1, -1, true) : findOnePartiallyVisibleChild(0, this.mViews.size(), true);
  }
  
  public int findFirstVisibleItemPosition() {
    return StaggeredGridLayoutManager.this.mReverseLayout ? findOneVisibleChild(this.mViews.size() - 1, -1, false) : findOneVisibleChild(0, this.mViews.size(), false);
  }
  
  public int findLastCompletelyVisibleItemPosition() {
    return StaggeredGridLayoutManager.this.mReverseLayout ? findOneVisibleChild(0, this.mViews.size(), true) : findOneVisibleChild(this.mViews.size() - 1, -1, true);
  }
  
  public int findLastPartiallyVisibleItemPosition() {
    return StaggeredGridLayoutManager.this.mReverseLayout ? findOnePartiallyVisibleChild(0, this.mViews.size(), true) : findOnePartiallyVisibleChild(this.mViews.size() - 1, -1, true);
  }
  
  public int findLastVisibleItemPosition() {
    return StaggeredGridLayoutManager.this.mReverseLayout ? findOneVisibleChild(0, this.mViews.size(), false) : findOneVisibleChild(this.mViews.size() - 1, -1, false);
  }
  
  int findOnePartiallyOrCompletelyVisibleChild(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    byte b;
    int i;
    int j = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding();
    int k = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding();
    if (paramInt2 > paramInt1) {
      b = 1;
      i = paramInt1;
    } else {
      b = -1;
      i = paramInt1;
    } 
    while (i != paramInt2) {
      boolean bool;
      View view = this.mViews.get(i);
      int m = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedStart(view);
      int n = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedEnd(view);
      if (paramBoolean3) {
        if (m <= k) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        } 
      } else if (m < k) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      } 
      if (paramBoolean3) {
        if (n >= j) {
          bool = true;
        } else {
          bool = false;
        } 
      } else if (n > j) {
        bool = true;
      } else {
        bool = false;
      } 
      if (paramInt1 != 0 && bool)
        if (paramBoolean1 && paramBoolean2) {
          if (m >= j && n <= k)
            return StaggeredGridLayoutManager.this.getPosition(view); 
        } else {
          if (paramBoolean2)
            return StaggeredGridLayoutManager.this.getPosition(view); 
          if (m < j || n > k)
            return StaggeredGridLayoutManager.this.getPosition(view); 
        }  
      i += b;
    } 
    return -1;
  }
  
  int findOnePartiallyVisibleChild(int paramInt1, int paramInt2, boolean paramBoolean) {
    return findOnePartiallyOrCompletelyVisibleChild(paramInt1, paramInt2, false, false, paramBoolean);
  }
  
  int findOneVisibleChild(int paramInt1, int paramInt2, boolean paramBoolean) {
    return findOnePartiallyOrCompletelyVisibleChild(paramInt1, paramInt2, paramBoolean, true, false);
  }
  
  public int getDeletedSize() {
    return this.mDeletedSize;
  }
  
  int getEndLine() {
    if (this.mCachedEnd != Integer.MIN_VALUE)
      return this.mCachedEnd; 
    calculateCachedEnd();
    return this.mCachedEnd;
  }
  
  int getEndLine(int paramInt) {
    if (this.mCachedEnd != Integer.MIN_VALUE)
      return this.mCachedEnd; 
    if (this.mViews.size() != 0) {
      calculateCachedEnd();
      return this.mCachedEnd;
    } 
    return paramInt;
  }
  
  public View getFocusableViewAfter(int paramInt1, int paramInt2) {
    View view2 = null;
    View view1 = null;
    if (paramInt2 == -1) {
      int i = this.mViews.size();
      paramInt2 = 0;
      while (true) {
        if (paramInt2 < i) {
          view2 = this.mViews.get(paramInt2);
          if ((!StaggeredGridLayoutManager.this.mReverseLayout || StaggeredGridLayoutManager.this.getPosition(view2) > paramInt1) && (StaggeredGridLayoutManager.this.mReverseLayout || StaggeredGridLayoutManager.this.getPosition(view2) < paramInt1) && view2.hasFocusable()) {
            paramInt2++;
            view1 = view2;
            continue;
          } 
        } 
        return view1;
      } 
    } 
    paramInt2 = this.mViews.size() - 1;
    view1 = view2;
    while (paramInt2 >= 0) {
      view2 = this.mViews.get(paramInt2);
      if (!StaggeredGridLayoutManager.this.mReverseLayout || StaggeredGridLayoutManager.this.getPosition(view2) < paramInt1) {
        if (!StaggeredGridLayoutManager.this.mReverseLayout && StaggeredGridLayoutManager.this.getPosition(view2) <= paramInt1)
          return view1; 
        if (view2.hasFocusable()) {
          paramInt2--;
          view1 = view2;
        } 
      } 
    } 
    return view1;
  }
  
  StaggeredGridLayoutManager$LayoutParams getLayoutParams(View paramView) {
    return (StaggeredGridLayoutManager$LayoutParams)paramView.getLayoutParams();
  }
  
  int getStartLine() {
    if (this.mCachedStart != Integer.MIN_VALUE)
      return this.mCachedStart; 
    calculateCachedStart();
    return this.mCachedStart;
  }
  
  int getStartLine(int paramInt) {
    if (this.mCachedStart != Integer.MIN_VALUE)
      return this.mCachedStart; 
    if (this.mViews.size() != 0) {
      calculateCachedStart();
      return this.mCachedStart;
    } 
    return paramInt;
  }
  
  void invalidateCache() {
    this.mCachedStart = Integer.MIN_VALUE;
    this.mCachedEnd = Integer.MIN_VALUE;
  }
  
  void onOffset(int paramInt) {
    if (this.mCachedStart != Integer.MIN_VALUE)
      this.mCachedStart += paramInt; 
    if (this.mCachedEnd != Integer.MIN_VALUE)
      this.mCachedEnd += paramInt; 
  }
  
  void popEnd() {
    int i = this.mViews.size();
    View view = this.mViews.remove(i - 1);
    StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = getLayoutParams(view);
    staggeredGridLayoutManager$LayoutParams.mSpan = null;
    if (staggeredGridLayoutManager$LayoutParams.isItemRemoved() || staggeredGridLayoutManager$LayoutParams.isItemChanged())
      this.mDeletedSize -= StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view); 
    if (i == 1)
      this.mCachedStart = Integer.MIN_VALUE; 
    this.mCachedEnd = Integer.MIN_VALUE;
  }
  
  void popStart() {
    View view = this.mViews.remove(0);
    StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = getLayoutParams(view);
    staggeredGridLayoutManager$LayoutParams.mSpan = null;
    if (this.mViews.size() == 0)
      this.mCachedEnd = Integer.MIN_VALUE; 
    if (staggeredGridLayoutManager$LayoutParams.isItemRemoved() || staggeredGridLayoutManager$LayoutParams.isItemChanged())
      this.mDeletedSize -= StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view); 
    this.mCachedStart = Integer.MIN_VALUE;
  }
  
  void prependToSpan(View paramView) {
    StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = getLayoutParams(paramView);
    staggeredGridLayoutManager$LayoutParams.mSpan = this;
    this.mViews.add(0, paramView);
    this.mCachedStart = Integer.MIN_VALUE;
    if (this.mViews.size() == 1)
      this.mCachedEnd = Integer.MIN_VALUE; 
    if (staggeredGridLayoutManager$LayoutParams.isItemRemoved() || staggeredGridLayoutManager$LayoutParams.isItemChanged())
      this.mDeletedSize += StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(paramView); 
  }
  
  void setLine(int paramInt) {
    this.mCachedStart = paramInt;
    this.mCachedEnd = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\StaggeredGridLayoutManager$Span.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */