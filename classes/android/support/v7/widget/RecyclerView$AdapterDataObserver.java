package android.support.v7.widget;

public abstract class RecyclerView$AdapterDataObserver {
  public void onChanged() {}
  
  public void onItemRangeChanged(int paramInt1, int paramInt2) {}
  
  public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject) {
    onItemRangeChanged(paramInt1, paramInt2);
  }
  
  public void onItemRangeInserted(int paramInt1, int paramInt2) {}
  
  public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onItemRangeRemoved(int paramInt1, int paramInt2) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$AdapterDataObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */