package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class RecyclerView$RecyclerViewDataObserver extends RecyclerView$AdapterDataObserver {
  public void onChanged() {
    RecyclerView.this.assertNotInLayoutOrScroll(null);
    RecyclerView.this.mState.mStructureChanged = true;
    RecyclerView.this.setDataSetChangedAfterLayout();
    if (!RecyclerView.this.mAdapterHelper.hasPendingUpdates())
      RecyclerView.this.requestLayout(); 
  }
  
  public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject) {
    RecyclerView.this.assertNotInLayoutOrScroll(null);
    if (RecyclerView.this.mAdapterHelper.onItemRangeChanged(paramInt1, paramInt2, paramObject))
      triggerUpdateProcessor(); 
  }
  
  public void onItemRangeInserted(int paramInt1, int paramInt2) {
    RecyclerView.this.assertNotInLayoutOrScroll(null);
    if (RecyclerView.this.mAdapterHelper.onItemRangeInserted(paramInt1, paramInt2))
      triggerUpdateProcessor(); 
  }
  
  public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3) {
    RecyclerView.this.assertNotInLayoutOrScroll(null);
    if (RecyclerView.this.mAdapterHelper.onItemRangeMoved(paramInt1, paramInt2, paramInt3))
      triggerUpdateProcessor(); 
  }
  
  public void onItemRangeRemoved(int paramInt1, int paramInt2) {
    RecyclerView.this.assertNotInLayoutOrScroll(null);
    if (RecyclerView.this.mAdapterHelper.onItemRangeRemoved(paramInt1, paramInt2))
      triggerUpdateProcessor(); 
  }
  
  void triggerUpdateProcessor() {
    if (RecyclerView.POST_UPDATES_ON_ANIMATION && RecyclerView.this.mHasFixedSize && RecyclerView.this.mIsAttached) {
      ViewCompat.postOnAnimation((View)RecyclerView.this, RecyclerView.this.mUpdateChildViewsRunnable);
      return;
    } 
    RecyclerView.this.mAdapterUpdateDuringMeasure = true;
    RecyclerView.this.requestLayout();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$RecyclerViewDataObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */