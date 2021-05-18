package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

class ItemTouchHelper$ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {
  public boolean onDown(MotionEvent paramMotionEvent) {
    return true;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {
    View view = ItemTouchHelper.this.findChildView(paramMotionEvent);
    if (view != null) {
      RecyclerView.ViewHolder viewHolder = ItemTouchHelper.this.mRecyclerView.getChildViewHolder(view);
      if (viewHolder != null && ItemTouchHelper.this.mCallback.hasDragFlag(ItemTouchHelper.this.mRecyclerView, viewHolder) && paramMotionEvent.getPointerId(0) == ItemTouchHelper.this.mActivePointerId) {
        int i = paramMotionEvent.findPointerIndex(ItemTouchHelper.this.mActivePointerId);
        float f1 = paramMotionEvent.getX(i);
        float f2 = paramMotionEvent.getY(i);
        ItemTouchHelper.this.mInitialTouchX = f1;
        ItemTouchHelper.this.mInitialTouchY = f2;
        ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
        ItemTouchHelper.this.mDy = 0.0F;
        itemTouchHelper.mDx = 0.0F;
        if (ItemTouchHelper.this.mCallback.isLongPressDragEnabled()) {
          ItemTouchHelper.this.select(viewHolder, 2);
          return;
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$ItemTouchHelperGestureListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */