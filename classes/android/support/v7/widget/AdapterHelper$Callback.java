package android.support.v7.widget;

interface AdapterHelper$Callback {
  RecyclerView$ViewHolder findViewHolder(int paramInt);
  
  void markViewHoldersUpdated(int paramInt1, int paramInt2, Object paramObject);
  
  void offsetPositionsForAdd(int paramInt1, int paramInt2);
  
  void offsetPositionsForMove(int paramInt1, int paramInt2);
  
  void offsetPositionsForRemovingInvisible(int paramInt1, int paramInt2);
  
  void offsetPositionsForRemovingLaidOutOrNewView(int paramInt1, int paramInt2);
  
  void onDispatchFirstPass(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp);
  
  void onDispatchSecondPass(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AdapterHelper$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */