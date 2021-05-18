package android.support.v7.widget.helper;

import android.support.v4.view.MotionEventCompat;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;

class ItemTouchHelper$2 implements RecyclerView.OnItemTouchListener {
  public boolean onInterceptTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent) {
    ItemTouchHelper.this.mGestureDetector.onTouchEvent(paramMotionEvent);
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i == 0) {
      ItemTouchHelper.this.mActivePointerId = paramMotionEvent.getPointerId(0);
      ItemTouchHelper.this.mInitialTouchX = paramMotionEvent.getX();
      ItemTouchHelper.this.mInitialTouchY = paramMotionEvent.getY();
      ItemTouchHelper.this.obtainVelocityTracker();
      if (ItemTouchHelper.this.mSelected == null) {
        ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = ItemTouchHelper.this.findAnimation(paramMotionEvent);
        if (itemTouchHelper$RecoverAnimation != null) {
          ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
          itemTouchHelper.mInitialTouchX -= itemTouchHelper$RecoverAnimation.mX;
          itemTouchHelper = ItemTouchHelper.this;
          itemTouchHelper.mInitialTouchY -= itemTouchHelper$RecoverAnimation.mY;
          ItemTouchHelper.this.endRecoverAnimation(itemTouchHelper$RecoverAnimation.mViewHolder, true);
          if (ItemTouchHelper.this.mPendingCleanup.remove(itemTouchHelper$RecoverAnimation.mViewHolder.itemView))
            ItemTouchHelper.this.mCallback.clearView(ItemTouchHelper.this.mRecyclerView, itemTouchHelper$RecoverAnimation.mViewHolder); 
          ItemTouchHelper.this.select(itemTouchHelper$RecoverAnimation.mViewHolder, itemTouchHelper$RecoverAnimation.mActionState);
          ItemTouchHelper.this.updateDxDy(paramMotionEvent, ItemTouchHelper.this.mSelectedFlags, 0);
        } 
      } 
    } else if (i == 3 || i == 1) {
      ItemTouchHelper.this.mActivePointerId = -1;
      ItemTouchHelper.this.select(null, 0);
    } else if (ItemTouchHelper.this.mActivePointerId != -1) {
      int j = paramMotionEvent.findPointerIndex(ItemTouchHelper.this.mActivePointerId);
      if (j >= 0)
        ItemTouchHelper.this.checkSelectForSwipe(i, paramMotionEvent, j); 
    } 
    if (ItemTouchHelper.this.mVelocityTracker != null)
      ItemTouchHelper.this.mVelocityTracker.addMovement(paramMotionEvent); 
    return (ItemTouchHelper.this.mSelected != null);
  }
  
  public void onRequestDisallowInterceptTouchEvent(boolean paramBoolean) {
    if (!paramBoolean)
      return; 
    ItemTouchHelper.this.select(null, 0);
  }
  
  public void onTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent) {
    boolean bool = false;
    ItemTouchHelper.this.mGestureDetector.onTouchEvent(paramMotionEvent);
    if (ItemTouchHelper.this.mVelocityTracker != null)
      ItemTouchHelper.this.mVelocityTracker.addMovement(paramMotionEvent); 
    if (ItemTouchHelper.this.mActivePointerId != -1) {
      int i = MotionEventCompat.getActionMasked(paramMotionEvent);
      int j = paramMotionEvent.findPointerIndex(ItemTouchHelper.this.mActivePointerId);
      if (j >= 0)
        ItemTouchHelper.this.checkSelectForSwipe(i, paramMotionEvent, j); 
      RecyclerView.ViewHolder viewHolder = ItemTouchHelper.this.mSelected;
      if (viewHolder != null) {
        switch (i) {
          default:
            return;
          case 1:
            ItemTouchHelper.this.select(null, 0);
            ItemTouchHelper.this.mActivePointerId = -1;
            return;
          case 2:
            if (j >= 0) {
              ItemTouchHelper.this.updateDxDy(paramMotionEvent, ItemTouchHelper.this.mSelectedFlags, j);
              ItemTouchHelper.this.moveIfNecessary(viewHolder);
              ItemTouchHelper.this.mRecyclerView.removeCallbacks(ItemTouchHelper.this.mScrollRunnable);
              ItemTouchHelper.this.mScrollRunnable.run();
              ItemTouchHelper.this.mRecyclerView.invalidate();
              return;
            } 
            return;
          case 3:
            if (ItemTouchHelper.this.mVelocityTracker != null)
              ItemTouchHelper.this.mVelocityTracker.clear(); 
          case 6:
            break;
        } 
        i = MotionEventCompat.getActionIndex(paramMotionEvent);
        if (paramMotionEvent.getPointerId(i) == ItemTouchHelper.this.mActivePointerId) {
          if (i == 0)
            bool = true; 
          ItemTouchHelper.this.mActivePointerId = paramMotionEvent.getPointerId(bool);
          ItemTouchHelper.this.updateDxDy(paramMotionEvent, ItemTouchHelper.this.mSelectedFlags, i);
          return;
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */