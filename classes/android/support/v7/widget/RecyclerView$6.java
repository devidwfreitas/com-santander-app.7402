package android.support.v7.widget;

class RecyclerView$6 implements AdapterHelper$Callback {
  void dispatchUpdate(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    switch (paramAdapterHelper$UpdateOp.cmd) {
      default:
        return;
      case 1:
        RecyclerView.this.mLayout.onItemsAdded(RecyclerView.this, paramAdapterHelper$UpdateOp.positionStart, paramAdapterHelper$UpdateOp.itemCount);
        return;
      case 2:
        RecyclerView.this.mLayout.onItemsRemoved(RecyclerView.this, paramAdapterHelper$UpdateOp.positionStart, paramAdapterHelper$UpdateOp.itemCount);
        return;
      case 4:
        RecyclerView.this.mLayout.onItemsUpdated(RecyclerView.this, paramAdapterHelper$UpdateOp.positionStart, paramAdapterHelper$UpdateOp.itemCount, paramAdapterHelper$UpdateOp.payload);
        return;
      case 8:
        break;
    } 
    RecyclerView.this.mLayout.onItemsMoved(RecyclerView.this, paramAdapterHelper$UpdateOp.positionStart, paramAdapterHelper$UpdateOp.itemCount, 1);
  }
  
  public RecyclerView$ViewHolder findViewHolder(int paramInt) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.this.findViewHolderForPosition(paramInt, true);
    return (recyclerView$ViewHolder != null && !RecyclerView.this.mChildHelper.isHidden(recyclerView$ViewHolder.itemView)) ? recyclerView$ViewHolder : null;
  }
  
  public void markViewHoldersUpdated(int paramInt1, int paramInt2, Object paramObject) {
    RecyclerView.this.viewRangeUpdate(paramInt1, paramInt2, paramObject);
    RecyclerView.this.mItemsChanged = true;
  }
  
  public void offsetPositionsForAdd(int paramInt1, int paramInt2) {
    RecyclerView.this.offsetPositionRecordsForInsert(paramInt1, paramInt2);
    RecyclerView.this.mItemsAddedOrRemoved = true;
  }
  
  public void offsetPositionsForMove(int paramInt1, int paramInt2) {
    RecyclerView.this.offsetPositionRecordsForMove(paramInt1, paramInt2);
    RecyclerView.this.mItemsAddedOrRemoved = true;
  }
  
  public void offsetPositionsForRemovingInvisible(int paramInt1, int paramInt2) {
    RecyclerView.this.offsetPositionRecordsForRemove(paramInt1, paramInt2, true);
    RecyclerView.this.mItemsAddedOrRemoved = true;
    RecyclerView$State recyclerView$State = RecyclerView.this.mState;
    recyclerView$State.mDeletedInvisibleItemCountSincePreviousLayout += paramInt2;
  }
  
  public void offsetPositionsForRemovingLaidOutOrNewView(int paramInt1, int paramInt2) {
    RecyclerView.this.offsetPositionRecordsForRemove(paramInt1, paramInt2, false);
    RecyclerView.this.mItemsAddedOrRemoved = true;
  }
  
  public void onDispatchFirstPass(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    dispatchUpdate(paramAdapterHelper$UpdateOp);
  }
  
  public void onDispatchSecondPass(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    dispatchUpdate(paramAdapterHelper$UpdateOp);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */