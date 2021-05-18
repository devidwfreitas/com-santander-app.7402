package android.support.v7.widget;

import android.view.View;

final class OrientationHelper$2 extends OrientationHelper {
  OrientationHelper$2(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    super(paramRecyclerView$LayoutManager, null);
  }
  
  public int getDecoratedEnd(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    int i = this.mLayoutManager.getDecoratedBottom(paramView);
    return recyclerView$LayoutParams.bottomMargin + i;
  }
  
  public int getDecoratedMeasurement(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    int i = this.mLayoutManager.getDecoratedMeasuredHeight(paramView);
    int j = recyclerView$LayoutParams.topMargin;
    return recyclerView$LayoutParams.bottomMargin + i + j;
  }
  
  public int getDecoratedMeasurementInOther(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    int i = this.mLayoutManager.getDecoratedMeasuredWidth(paramView);
    int j = recyclerView$LayoutParams.leftMargin;
    return recyclerView$LayoutParams.rightMargin + i + j;
  }
  
  public int getDecoratedStart(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    return this.mLayoutManager.getDecoratedTop(paramView) - recyclerView$LayoutParams.topMargin;
  }
  
  public int getEnd() {
    return this.mLayoutManager.getHeight();
  }
  
  public int getEndAfterPadding() {
    return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingBottom();
  }
  
  public int getEndPadding() {
    return this.mLayoutManager.getPaddingBottom();
  }
  
  public int getMode() {
    return this.mLayoutManager.getHeightMode();
  }
  
  public int getModeInOther() {
    return this.mLayoutManager.getWidthMode();
  }
  
  public int getStartAfterPadding() {
    return this.mLayoutManager.getPaddingTop();
  }
  
  public int getTotalSpace() {
    return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingTop() - this.mLayoutManager.getPaddingBottom();
  }
  
  public int getTransformedEndWithDecoration(View paramView) {
    this.mLayoutManager.getTransformedBoundingBox(paramView, true, this.mTmpRect);
    return this.mTmpRect.bottom;
  }
  
  public int getTransformedStartWithDecoration(View paramView) {
    this.mLayoutManager.getTransformedBoundingBox(paramView, true, this.mTmpRect);
    return this.mTmpRect.top;
  }
  
  public void offsetChild(View paramView, int paramInt) {
    paramView.offsetTopAndBottom(paramInt);
  }
  
  public void offsetChildren(int paramInt) {
    this.mLayoutManager.offsetChildrenVertical(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\OrientationHelper$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */