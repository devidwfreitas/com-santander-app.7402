package android.support.v7.widget.helper;

import android.support.v4.animation.ValueAnimatorCompat;
import android.support.v7.widget.RecyclerView;

class ItemTouchHelper$3 extends ItemTouchHelper$RecoverAnimation {
  ItemTouchHelper$3(RecyclerView.ViewHolder paramViewHolder1, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    super(paramItemTouchHelper, paramViewHolder1, paramInt1, paramInt2, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public void onAnimationEnd(ValueAnimatorCompat paramValueAnimatorCompat) {
    super.onAnimationEnd(paramValueAnimatorCompat);
    if (!this.mOverridden) {
      if (swipeDir <= 0) {
        ItemTouchHelper.this.mCallback.clearView(ItemTouchHelper.this.mRecyclerView, prevSelected);
      } else {
        ItemTouchHelper.this.mPendingCleanup.add(prevSelected.itemView);
        this.mIsPendingCleanup = true;
        if (swipeDir > 0)
          ItemTouchHelper.this.postDispatchSwipe(this, swipeDir); 
      } 
      if (ItemTouchHelper.this.mOverdrawChild == prevSelected.itemView) {
        ItemTouchHelper.this.removeChildDrawingOrderCallbackIfNecessary(prevSelected.itemView);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */