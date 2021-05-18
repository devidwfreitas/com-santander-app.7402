package android.support.v7.widget;

class SnapHelper$1 extends RecyclerView$OnScrollListener {
  boolean mScrolled = false;
  
  public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt) {
    super.onScrollStateChanged(paramRecyclerView, paramInt);
    if (paramInt == 0 && this.mScrolled) {
      this.mScrolled = false;
      SnapHelper.this.snapToTargetExistingView();
    } 
  }
  
  public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    if (paramInt1 != 0 || paramInt2 != 0)
      this.mScrolled = true; 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SnapHelper$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */