package android.support.v7.widget;

import android.database.Observable;

class RecyclerView$AdapterDataObservable extends Observable<RecyclerView$AdapterDataObserver> {
  public boolean hasObservers() {
    return !this.mObservers.isEmpty();
  }
  
  public void notifyChanged() {
    for (int i = this.mObservers.size() - 1; i >= 0; i--)
      ((RecyclerView$AdapterDataObserver)this.mObservers.get(i)).onChanged(); 
  }
  
  public void notifyItemMoved(int paramInt1, int paramInt2) {
    for (int i = this.mObservers.size() - 1; i >= 0; i--)
      ((RecyclerView$AdapterDataObserver)this.mObservers.get(i)).onItemRangeMoved(paramInt1, paramInt2, 1); 
  }
  
  public void notifyItemRangeChanged(int paramInt1, int paramInt2) {
    notifyItemRangeChanged(paramInt1, paramInt2, null);
  }
  
  public void notifyItemRangeChanged(int paramInt1, int paramInt2, Object paramObject) {
    int i;
    for (i = this.mObservers.size() - 1; i >= 0; i--)
      ((RecyclerView$AdapterDataObserver)this.mObservers.get(i)).onItemRangeChanged(paramInt1, paramInt2, paramObject); 
  }
  
  public void notifyItemRangeInserted(int paramInt1, int paramInt2) {
    for (int i = this.mObservers.size() - 1; i >= 0; i--)
      ((RecyclerView$AdapterDataObserver)this.mObservers.get(i)).onItemRangeInserted(paramInt1, paramInt2); 
  }
  
  public void notifyItemRangeRemoved(int paramInt1, int paramInt2) {
    for (int i = this.mObservers.size() - 1; i >= 0; i--)
      ((RecyclerView$AdapterDataObserver)this.mObservers.get(i)).onItemRangeRemoved(paramInt1, paramInt2); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$AdapterDataObservable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */