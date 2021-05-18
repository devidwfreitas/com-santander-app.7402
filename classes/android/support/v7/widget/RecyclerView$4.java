package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

class RecyclerView$4 implements ViewInfoStore$ProcessCallback {
  public void processAppeared(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    RecyclerView.this.animateAppearance(paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo1, paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  }
  
  public void processDisappeared(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    RecyclerView.this.mRecycler.unscrapView(paramRecyclerView$ViewHolder);
    RecyclerView.this.animateDisappearance(paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo1, paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  }
  
  public void processPersistent(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    paramRecyclerView$ViewHolder.setIsRecyclable(false);
    if (RecyclerView.this.mDataSetHasChangedAfterLayout) {
      if (RecyclerView.this.mItemAnimator.animateChange(paramRecyclerView$ViewHolder, paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo1, paramRecyclerView$ItemAnimator$ItemHolderInfo2))
        RecyclerView.this.postAnimationRunner(); 
      return;
    } 
    if (RecyclerView.this.mItemAnimator.animatePersistence(paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo1, paramRecyclerView$ItemAnimator$ItemHolderInfo2)) {
      RecyclerView.this.postAnimationRunner();
      return;
    } 
  }
  
  public void unused(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    RecyclerView.this.mLayout.removeAndRecycleView(paramRecyclerView$ViewHolder.itemView, RecyclerView.this.mRecycler);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */