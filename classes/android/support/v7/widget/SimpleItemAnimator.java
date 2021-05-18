package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

public abstract class SimpleItemAnimator extends RecyclerView$ItemAnimator {
  private static final boolean DEBUG = false;
  
  private static final String TAG = "SimpleItemAnimator";
  
  boolean mSupportsChangeAnimations = true;
  
  public abstract boolean animateAdd(RecyclerView$ViewHolder paramRecyclerView$ViewHolder);
  
  public boolean animateAppearance(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    return (paramRecyclerView$ItemAnimator$ItemHolderInfo1 != null && (paramRecyclerView$ItemAnimator$ItemHolderInfo1.left != paramRecyclerView$ItemAnimator$ItemHolderInfo2.left || paramRecyclerView$ItemAnimator$ItemHolderInfo1.top != paramRecyclerView$ItemAnimator$ItemHolderInfo2.top)) ? animateMove(paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo1.left, paramRecyclerView$ItemAnimator$ItemHolderInfo1.top, paramRecyclerView$ItemAnimator$ItemHolderInfo2.left, paramRecyclerView$ItemAnimator$ItemHolderInfo2.top) : animateAdd(paramRecyclerView$ViewHolder);
  }
  
  public abstract boolean animateChange(RecyclerView$ViewHolder paramRecyclerView$ViewHolder1, RecyclerView$ViewHolder paramRecyclerView$ViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public boolean animateChange(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder1, @NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder2, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    int k = paramRecyclerView$ItemAnimator$ItemHolderInfo1.left;
    int m = paramRecyclerView$ItemAnimator$ItemHolderInfo1.top;
    if (paramRecyclerView$ViewHolder2.shouldIgnore()) {
      int n = paramRecyclerView$ItemAnimator$ItemHolderInfo1.left;
      int i1 = paramRecyclerView$ItemAnimator$ItemHolderInfo1.top;
      return animateChange(paramRecyclerView$ViewHolder1, paramRecyclerView$ViewHolder2, k, m, n, i1);
    } 
    int i = paramRecyclerView$ItemAnimator$ItemHolderInfo2.left;
    int j = paramRecyclerView$ItemAnimator$ItemHolderInfo2.top;
    return animateChange(paramRecyclerView$ViewHolder1, paramRecyclerView$ViewHolder2, k, m, i, j);
  }
  
  public boolean animateDisappearance(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    int i;
    int j;
    int k = paramRecyclerView$ItemAnimator$ItemHolderInfo1.left;
    int m = paramRecyclerView$ItemAnimator$ItemHolderInfo1.top;
    View view = paramRecyclerView$ViewHolder.itemView;
    if (paramRecyclerView$ItemAnimator$ItemHolderInfo2 == null) {
      i = view.getLeft();
    } else {
      i = paramRecyclerView$ItemAnimator$ItemHolderInfo2.left;
    } 
    if (paramRecyclerView$ItemAnimator$ItemHolderInfo2 == null) {
      j = view.getTop();
    } else {
      j = paramRecyclerView$ItemAnimator$ItemHolderInfo2.top;
    } 
    if (!paramRecyclerView$ViewHolder.isRemoved() && (k != i || m != j)) {
      view.layout(i, j, view.getWidth() + i, view.getHeight() + j);
      return animateMove(paramRecyclerView$ViewHolder, k, m, i, j);
    } 
    return animateRemove(paramRecyclerView$ViewHolder);
  }
  
  public abstract boolean animateMove(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public boolean animatePersistence(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    if (paramRecyclerView$ItemAnimator$ItemHolderInfo1.left != paramRecyclerView$ItemAnimator$ItemHolderInfo2.left || paramRecyclerView$ItemAnimator$ItemHolderInfo1.top != paramRecyclerView$ItemAnimator$ItemHolderInfo2.top)
      return animateMove(paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo1.left, paramRecyclerView$ItemAnimator$ItemHolderInfo1.top, paramRecyclerView$ItemAnimator$ItemHolderInfo2.left, paramRecyclerView$ItemAnimator$ItemHolderInfo2.top); 
    dispatchMoveFinished(paramRecyclerView$ViewHolder);
    return false;
  }
  
  public abstract boolean animateRemove(RecyclerView$ViewHolder paramRecyclerView$ViewHolder);
  
  public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return (!this.mSupportsChangeAnimations || paramRecyclerView$ViewHolder.isInvalid());
  }
  
  public final void dispatchAddFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    onAddFinished(paramRecyclerView$ViewHolder);
    dispatchAnimationFinished(paramRecyclerView$ViewHolder);
  }
  
  public final void dispatchAddStarting(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    onAddStarting(paramRecyclerView$ViewHolder);
  }
  
  public final void dispatchChangeFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, boolean paramBoolean) {
    onChangeFinished(paramRecyclerView$ViewHolder, paramBoolean);
    dispatchAnimationFinished(paramRecyclerView$ViewHolder);
  }
  
  public final void dispatchChangeStarting(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, boolean paramBoolean) {
    onChangeStarting(paramRecyclerView$ViewHolder, paramBoolean);
  }
  
  public final void dispatchMoveFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    onMoveFinished(paramRecyclerView$ViewHolder);
    dispatchAnimationFinished(paramRecyclerView$ViewHolder);
  }
  
  public final void dispatchMoveStarting(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    onMoveStarting(paramRecyclerView$ViewHolder);
  }
  
  public final void dispatchRemoveFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    onRemoveFinished(paramRecyclerView$ViewHolder);
    dispatchAnimationFinished(paramRecyclerView$ViewHolder);
  }
  
  public final void dispatchRemoveStarting(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    onRemoveStarting(paramRecyclerView$ViewHolder);
  }
  
  public boolean getSupportsChangeAnimations() {
    return this.mSupportsChangeAnimations;
  }
  
  public void onAddFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {}
  
  public void onAddStarting(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {}
  
  public void onChangeFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, boolean paramBoolean) {}
  
  public void onChangeStarting(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, boolean paramBoolean) {}
  
  public void onMoveFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {}
  
  public void onMoveStarting(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {}
  
  public void onRemoveFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {}
  
  public void onRemoveStarting(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {}
  
  public void setSupportsChangeAnimations(boolean paramBoolean) {
    this.mSupportsChangeAnimations = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SimpleItemAnimator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */