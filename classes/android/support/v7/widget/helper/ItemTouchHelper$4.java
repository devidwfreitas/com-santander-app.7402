package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView;

class ItemTouchHelper$4 implements Runnable {
  public void run() {
    if (ItemTouchHelper.this.mRecyclerView != null && ItemTouchHelper.this.mRecyclerView.isAttachedToWindow() && !anim.mOverridden && anim.mViewHolder.getAdapterPosition() != -1) {
      RecyclerView.ItemAnimator itemAnimator = ItemTouchHelper.this.mRecyclerView.getItemAnimator();
      if ((itemAnimator == null || !itemAnimator.isRunning(null)) && !ItemTouchHelper.this.hasRunningRecoverAnim()) {
        ItemTouchHelper.this.mCallback.onSwiped(anim.mViewHolder, swipeDir);
        return;
      } 
    } else {
      return;
    } 
    ItemTouchHelper.this.mRecyclerView.post(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */