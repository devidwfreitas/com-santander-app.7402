package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class RecyclerView$LayoutParams extends ViewGroup.MarginLayoutParams {
  final Rect mDecorInsets = new Rect();
  
  boolean mInsetsDirty = true;
  
  boolean mPendingInvalidate = false;
  
  RecyclerView$ViewHolder mViewHolder;
  
  public RecyclerView$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  public RecyclerView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public RecyclerView$LayoutParams(RecyclerView$LayoutParams paramRecyclerView$LayoutParams) {
    super((ViewGroup.LayoutParams)paramRecyclerView$LayoutParams);
  }
  
  public RecyclerView$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public RecyclerView$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
  
  public int getViewAdapterPosition() {
    return this.mViewHolder.getAdapterPosition();
  }
  
  public int getViewLayoutPosition() {
    return this.mViewHolder.getLayoutPosition();
  }
  
  @Deprecated
  public int getViewPosition() {
    return this.mViewHolder.getPosition();
  }
  
  public boolean isItemChanged() {
    return this.mViewHolder.isUpdated();
  }
  
  public boolean isItemRemoved() {
    return this.mViewHolder.isRemoved();
  }
  
  public boolean isViewInvalid() {
    return this.mViewHolder.isInvalid();
  }
  
  public boolean viewNeedsUpdate() {
    return this.mViewHolder.needsUpdate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */