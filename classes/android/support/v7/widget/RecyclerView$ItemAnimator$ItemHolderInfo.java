package android.support.v7.widget;

import android.view.View;

public class RecyclerView$ItemAnimator$ItemHolderInfo {
  public int bottom;
  
  public int changeFlags;
  
  public int left;
  
  public int right;
  
  public int top;
  
  public RecyclerView$ItemAnimator$ItemHolderInfo setFrom(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return setFrom(paramRecyclerView$ViewHolder, 0);
  }
  
  public RecyclerView$ItemAnimator$ItemHolderInfo setFrom(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, int paramInt) {
    View view = paramRecyclerView$ViewHolder.itemView;
    this.left = view.getLeft();
    this.top = view.getTop();
    this.right = view.getRight();
    this.bottom = view.getBottom();
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$ItemAnimator$ItemHolderInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */