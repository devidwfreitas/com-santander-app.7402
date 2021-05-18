package android.support.v7.widget;

import android.util.SparseArray;
import java.util.ArrayList;

public class RecyclerView$RecycledViewPool {
  private static final int DEFAULT_MAX_SCRAP = 5;
  
  private int mAttachCount = 0;
  
  SparseArray<RecyclerView$RecycledViewPool$ScrapData> mScrap = new SparseArray();
  
  private RecyclerView$RecycledViewPool$ScrapData getScrapDataForType(int paramInt) {
    RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData2 = (RecyclerView$RecycledViewPool$ScrapData)this.mScrap.get(paramInt);
    RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData1 = recyclerView$RecycledViewPool$ScrapData2;
    if (recyclerView$RecycledViewPool$ScrapData2 == null) {
      recyclerView$RecycledViewPool$ScrapData1 = new RecyclerView$RecycledViewPool$ScrapData();
      this.mScrap.put(paramInt, recyclerView$RecycledViewPool$ScrapData1);
    } 
    return recyclerView$RecycledViewPool$ScrapData1;
  }
  
  void attach(RecyclerView$Adapter paramRecyclerView$Adapter) {
    this.mAttachCount++;
  }
  
  public void clear() {
    for (int i = 0; i < this.mScrap.size(); i++)
      ((RecyclerView$RecycledViewPool$ScrapData)this.mScrap.valueAt(i)).mScrapHeap.clear(); 
  }
  
  void detach() {
    this.mAttachCount--;
  }
  
  void factorInBindTime(int paramInt, long paramLong) {
    RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData = getScrapDataForType(paramInt);
    recyclerView$RecycledViewPool$ScrapData.mBindRunningAverageNs = runningAverage(recyclerView$RecycledViewPool$ScrapData.mBindRunningAverageNs, paramLong);
  }
  
  void factorInCreateTime(int paramInt, long paramLong) {
    RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData = getScrapDataForType(paramInt);
    recyclerView$RecycledViewPool$ScrapData.mCreateRunningAverageNs = runningAverage(recyclerView$RecycledViewPool$ScrapData.mCreateRunningAverageNs, paramLong);
  }
  
  public RecyclerView$ViewHolder getRecycledView(int paramInt) {
    RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData = (RecyclerView$RecycledViewPool$ScrapData)this.mScrap.get(paramInt);
    if (recyclerView$RecycledViewPool$ScrapData != null && !recyclerView$RecycledViewPool$ScrapData.mScrapHeap.isEmpty()) {
      ArrayList<RecyclerView$ViewHolder> arrayList = recyclerView$RecycledViewPool$ScrapData.mScrapHeap;
      return arrayList.remove(arrayList.size() - 1);
    } 
    return null;
  }
  
  public int getRecycledViewCount(int paramInt) {
    return (getScrapDataForType(paramInt)).mScrapHeap.size();
  }
  
  void onAdapterChanged(RecyclerView$Adapter paramRecyclerView$Adapter1, RecyclerView$Adapter paramRecyclerView$Adapter2, boolean paramBoolean) {
    if (paramRecyclerView$Adapter1 != null)
      detach(); 
    if (!paramBoolean && this.mAttachCount == 0)
      clear(); 
    if (paramRecyclerView$Adapter2 != null)
      attach(paramRecyclerView$Adapter2); 
  }
  
  public void putRecycledView(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    int i = paramRecyclerView$ViewHolder.getItemViewType();
    ArrayList<RecyclerView$ViewHolder> arrayList = (getScrapDataForType(i)).mScrapHeap;
    if (((RecyclerView$RecycledViewPool$ScrapData)this.mScrap.get(i)).mMaxScrap <= arrayList.size())
      return; 
    paramRecyclerView$ViewHolder.resetInternal();
    arrayList.add(paramRecyclerView$ViewHolder);
  }
  
  long runningAverage(long paramLong1, long paramLong2) {
    return (paramLong1 == 0L) ? paramLong2 : (paramLong1 / 4L * 3L + paramLong2 / 4L);
  }
  
  public void setMaxRecycledViews(int paramInt1, int paramInt2) {
    RecyclerView$RecycledViewPool$ScrapData recyclerView$RecycledViewPool$ScrapData = getScrapDataForType(paramInt1);
    recyclerView$RecycledViewPool$ScrapData.mMaxScrap = paramInt2;
    ArrayList<RecyclerView$ViewHolder> arrayList = recyclerView$RecycledViewPool$ScrapData.mScrapHeap;
    if (arrayList != null)
      while (arrayList.size() > paramInt2)
        arrayList.remove(arrayList.size() - 1);  
  }
  
  int size() {
    int i = 0;
    int j;
    for (j = 0; i < this.mScrap.size(); j = k) {
      ArrayList<RecyclerView$ViewHolder> arrayList = ((RecyclerView$RecycledViewPool$ScrapData)this.mScrap.valueAt(i)).mScrapHeap;
      int k = j;
      if (arrayList != null)
        k = j + arrayList.size(); 
      i++;
    } 
    return j;
  }
  
  boolean willBindInTime(int paramInt, long paramLong1, long paramLong2) {
    long l = (getScrapDataForType(paramInt)).mBindRunningAverageNs;
    return (l == 0L || l + paramLong1 < paramLong2);
  }
  
  boolean willCreateInTime(int paramInt, long paramLong1, long paramLong2) {
    long l = (getScrapDataForType(paramInt)).mCreateRunningAverageNs;
    return (l == 0L || l + paramLong1 < paramLong2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$RecycledViewPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */