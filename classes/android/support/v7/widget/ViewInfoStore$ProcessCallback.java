package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

interface ViewInfoStore$ProcessCallback {
  void processAppeared(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  
  void processDisappeared(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  
  void processPersistent(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  
  void unused(RecyclerView$ViewHolder paramRecyclerView$ViewHolder);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ViewInfoStore$ProcessCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */