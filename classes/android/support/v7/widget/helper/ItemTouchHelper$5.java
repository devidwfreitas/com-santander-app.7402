package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView;

class ItemTouchHelper$5 implements RecyclerView.ChildDrawingOrderCallback {
  public int onGetChildDrawingOrder(int paramInt1, int paramInt2) {
    if (ItemTouchHelper.this.mOverdrawChild != null) {
      int j = ItemTouchHelper.this.mOverdrawChildPosition;
      int i = j;
      if (j == -1) {
        i = ItemTouchHelper.this.mRecyclerView.indexOfChild(ItemTouchHelper.this.mOverdrawChild);
        ItemTouchHelper.this.mOverdrawChildPosition = i;
      } 
      if (paramInt2 == paramInt1 - 1)
        return i; 
      if (paramInt2 >= i)
        return paramInt2 + 1; 
    } 
    return paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */