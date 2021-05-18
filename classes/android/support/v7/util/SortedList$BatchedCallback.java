package android.support.v7.util;

public class SortedList$BatchedCallback<T2> extends SortedList$Callback<T2> {
  private final BatchingListUpdateCallback mBatchingListUpdateCallback;
  
  final SortedList$Callback<T2> mWrappedCallback;
  
  public SortedList$BatchedCallback(SortedList$Callback<T2> paramSortedList$Callback) {
    this.mWrappedCallback = paramSortedList$Callback;
    this.mBatchingListUpdateCallback = new BatchingListUpdateCallback(this.mWrappedCallback);
  }
  
  public boolean areContentsTheSame(T2 paramT21, T2 paramT22) {
    return this.mWrappedCallback.areContentsTheSame(paramT21, paramT22);
  }
  
  public boolean areItemsTheSame(T2 paramT21, T2 paramT22) {
    return this.mWrappedCallback.areItemsTheSame(paramT21, paramT22);
  }
  
  public int compare(T2 paramT21, T2 paramT22) {
    return this.mWrappedCallback.compare(paramT21, paramT22);
  }
  
  public void dispatchLastEvent() {
    this.mBatchingListUpdateCallback.dispatchLastEvent();
  }
  
  public void onChanged(int paramInt1, int paramInt2) {
    this.mBatchingListUpdateCallback.onChanged(paramInt1, paramInt2, null);
  }
  
  public void onInserted(int paramInt1, int paramInt2) {
    this.mBatchingListUpdateCallback.onInserted(paramInt1, paramInt2);
  }
  
  public void onMoved(int paramInt1, int paramInt2) {
    this.mBatchingListUpdateCallback.onMoved(paramInt1, paramInt2);
  }
  
  public void onRemoved(int paramInt1, int paramInt2) {
    this.mBatchingListUpdateCallback.onRemoved(paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\SortedList$BatchedCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */