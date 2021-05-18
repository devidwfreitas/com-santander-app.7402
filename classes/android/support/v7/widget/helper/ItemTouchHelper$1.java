package android.support.v7.widget.helper;

import android.support.v4.view.ViewCompat;
import android.view.View;

class ItemTouchHelper$1 implements Runnable {
  public void run() {
    if (ItemTouchHelper.this.mSelected != null && ItemTouchHelper.this.scrollIfNecessary()) {
      if (ItemTouchHelper.this.mSelected != null)
        ItemTouchHelper.this.moveIfNecessary(ItemTouchHelper.this.mSelected); 
      ItemTouchHelper.this.mRecyclerView.removeCallbacks(ItemTouchHelper.this.mScrollRunnable);
      ViewCompat.postOnAnimation((View)ItemTouchHelper.this.mRecyclerView, this);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */