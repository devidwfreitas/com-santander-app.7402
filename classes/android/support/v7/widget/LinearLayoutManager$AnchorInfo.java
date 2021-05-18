package android.support.v7.widget;

import android.view.View;

class LinearLayoutManager$AnchorInfo {
  int mCoordinate;
  
  boolean mLayoutFromEnd;
  
  int mPosition;
  
  boolean mValid;
  
  LinearLayoutManager$AnchorInfo() {
    reset();
  }
  
  void assignCoordinateFromPadding() {
    int i;
    if (this.mLayoutFromEnd) {
      i = LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding();
    } else {
      i = LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
    } 
    this.mCoordinate = i;
  }
  
  public void assignFromView(View paramView) {
    if (this.mLayoutFromEnd) {
      this.mCoordinate = LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(paramView) + LinearLayoutManager.this.mOrientationHelper.getTotalSpaceChange();
    } else {
      this.mCoordinate = LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(paramView);
    } 
    this.mPosition = LinearLayoutManager.this.getPosition(paramView);
  }
  
  public void assignFromViewAndKeepVisibleRect(View paramView) {
    int j = LinearLayoutManager.this.mOrientationHelper.getTotalSpaceChange();
    if (j >= 0) {
      assignFromView(paramView);
      return;
    } 
    this.mPosition = LinearLayoutManager.this.getPosition(paramView);
    if (this.mLayoutFromEnd) {
      int m = LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - j - LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(paramView);
      this.mCoordinate = LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - m;
      if (m > 0) {
        j = LinearLayoutManager.this.mOrientationHelper.getDecoratedMeasurement(paramView);
        int n = this.mCoordinate;
        int i1 = LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
        j = n - j - i1 + Math.min(LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(paramView) - i1, 0);
        if (j < 0) {
          n = this.mCoordinate;
          this.mCoordinate = Math.min(m, -j) + n;
          return;
        } 
      } 
      return;
    } 
    int k = LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(paramView);
    int i = k - LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
    this.mCoordinate = k;
    if (i > 0) {
      int m = LinearLayoutManager.this.mOrientationHelper.getDecoratedMeasurement(paramView);
      int n = LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding();
      int i1 = LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(paramView);
      j = LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - Math.min(0, n - j - i1) - k + m;
      if (j < 0) {
        this.mCoordinate -= Math.min(i, -j);
        return;
      } 
    } 
  }
  
  boolean isViewValidAsAnchor(View paramView, RecyclerView$State paramRecyclerView$State) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    return (!recyclerView$LayoutParams.isItemRemoved() && recyclerView$LayoutParams.getViewLayoutPosition() >= 0 && recyclerView$LayoutParams.getViewLayoutPosition() < paramRecyclerView$State.getItemCount());
  }
  
  void reset() {
    this.mPosition = -1;
    this.mCoordinate = Integer.MIN_VALUE;
    this.mLayoutFromEnd = false;
    this.mValid = false;
  }
  
  public String toString() {
    return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\LinearLayoutManager$AnchorInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */