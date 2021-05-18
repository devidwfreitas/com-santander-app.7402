package android.support.v7.widget;

import java.util.Arrays;

class GapWorker$LayoutPrefetchRegistryImpl implements RecyclerView$LayoutManager$LayoutPrefetchRegistry {
  int mCount;
  
  int[] mPrefetchArray;
  
  int mPrefetchDx;
  
  int mPrefetchDy;
  
  public void addPosition(int paramInt1, int paramInt2) {
    if (paramInt1 < 0)
      throw new IllegalArgumentException("Layout positions must be non-negative"); 
    if (paramInt2 < 0)
      throw new IllegalArgumentException("Pixel distance must be non-negative"); 
    int i = this.mCount * 2;
    if (this.mPrefetchArray == null) {
      this.mPrefetchArray = new int[4];
      Arrays.fill(this.mPrefetchArray, -1);
    } else if (i >= this.mPrefetchArray.length) {
      int[] arrayOfInt = this.mPrefetchArray;
      this.mPrefetchArray = new int[i * 2];
      System.arraycopy(arrayOfInt, 0, this.mPrefetchArray, 0, arrayOfInt.length);
    } 
    this.mPrefetchArray[i] = paramInt1;
    this.mPrefetchArray[i + 1] = paramInt2;
    this.mCount++;
  }
  
  void clearPrefetchPositions() {
    if (this.mPrefetchArray != null)
      Arrays.fill(this.mPrefetchArray, -1); 
    this.mCount = 0;
  }
  
  void collectPrefetchPositionsFromView(RecyclerView paramRecyclerView, boolean paramBoolean) {
    this.mCount = 0;
    if (this.mPrefetchArray != null)
      Arrays.fill(this.mPrefetchArray, -1); 
    RecyclerView$LayoutManager recyclerView$LayoutManager = paramRecyclerView.mLayout;
    if (paramRecyclerView.mAdapter != null && recyclerView$LayoutManager != null && recyclerView$LayoutManager.isItemPrefetchEnabled()) {
      if (paramBoolean) {
        if (!paramRecyclerView.mAdapterHelper.hasPendingUpdates())
          recyclerView$LayoutManager.collectInitialPrefetchPositions(paramRecyclerView.mAdapter.getItemCount(), this); 
      } else if (!paramRecyclerView.hasPendingAdapterUpdates()) {
        recyclerView$LayoutManager.collectAdjacentPrefetchPositions(this.mPrefetchDx, this.mPrefetchDy, paramRecyclerView.mState, this);
      } 
      if (this.mCount > recyclerView$LayoutManager.mPrefetchMaxCountObserved) {
        recyclerView$LayoutManager.mPrefetchMaxCountObserved = this.mCount;
        recyclerView$LayoutManager.mPrefetchMaxObservedInInitialPrefetch = paramBoolean;
        paramRecyclerView.mRecycler.updateViewCacheSize();
      } 
    } 
  }
  
  boolean lastPrefetchIncludedPosition(int paramInt) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.mPrefetchArray != null) {
      int j = this.mCount;
      for (int i = 0;; i += 2) {
        bool1 = bool2;
        if (i < j * 2) {
          if (this.mPrefetchArray[i] == paramInt)
            return true; 
        } else {
          return bool1;
        } 
      } 
    } 
    return bool1;
  }
  
  void setPrefetchVector(int paramInt1, int paramInt2) {
    this.mPrefetchDx = paramInt1;
    this.mPrefetchDy = paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GapWorker$LayoutPrefetchRegistryImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */