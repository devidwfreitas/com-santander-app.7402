package android.support.v7.widget;

import android.view.View;

final class OrientationHelper$1 extends OrientationHelper {
  OrientationHelper$1(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    super(paramRecyclerView$LayoutManager, null);
  }
  
  public int getDecoratedEnd(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    int i = this.mLayoutManager.getDecoratedRight(paramView);
    return recyclerView$LayoutParams.rightMargin + i;
  }
  
  public int getDecoratedMeasurement(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    int i = this.mLayoutManager.getDecoratedMeasuredWidth(paramView);
    int j = recyclerView$LayoutParams.leftMargin;
    return recyclerView$LayoutParams.rightMargin + i + j;
  }
  
  public int getDecoratedMeasurementInOther(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    int i = this.mLayoutManager.getDecoratedMeasuredHeight(paramView);
    int j = recyclerView$LayoutParams.topMargin;
    return recyclerView$LayoutParams.bottomMargin + i + j;
  }
  
  public int getDecoratedStart(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    return this.mLayoutManager.getDecoratedLeft(paramView) - recyclerView$LayoutParams.leftMargin;
  }
  
  public int getEnd() {
    return this.mLayoutManager.getWidth();
  }
  
  public int getEndAfterPadding() {
    return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingRight();
  }
  
  public int getEndPadding() {
    return this.mLayoutManager.getPaddingRight();
  }
  
  public int getMode() {
    return this.mLayoutManager.getWidthMode();
  }
  
  public int getModeInOther() {
    return this.mLayoutManager.getHeightMode();
  }
  
  public int getStartAfterPadding() {
    return this.mLayoutManager.getPaddingLeft();
  }
  
  public int getTotalSpace() {
    return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingLeft() - this.mLayoutManager.getPaddingRight();
  }
  
  public int getTransformedEndWithDecoration(View paramView) {
    this.mLayoutManager.getTransformedBoundingBox(paramView, true, this.mTmpRect);
    return this.mTmpRect.right;
  }
  
  public int getTransformedStartWithDecoration(View paramView) {
    this.mLayoutManager.getTransformedBoundingBox(paramView, true, this.mTmpRect);
    return this.mTmpRect.left;
  }
  
  public void offsetChild(View paramView, int paramInt) {
    paramView.offsetLeftAndRight(paramInt);
  }
  
  public void offsetChildren(int paramInt) {
    this.mLayoutManager.offsetChildrenHorizontal(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\OrientationHelper$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */