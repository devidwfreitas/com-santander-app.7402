package android.support.v7.util;

import android.support.v7.widget.RecyclerView;

class DiffUtil$DiffResult$1 implements ListUpdateCallback {
  public void onChanged(int paramInt1, int paramInt2, Object paramObject) {
    adapter.notifyItemRangeChanged(paramInt1, paramInt2, paramObject);
  }
  
  public void onInserted(int paramInt1, int paramInt2) {
    adapter.notifyItemRangeInserted(paramInt1, paramInt2);
  }
  
  public void onMoved(int paramInt1, int paramInt2) {
    adapter.notifyItemMoved(paramInt1, paramInt2);
  }
  
  public void onRemoved(int paramInt1, int paramInt2) {
    adapter.notifyItemRangeRemoved(paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\DiffUtil$DiffResult$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */