package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;

class ViewInfoStore {
  private static final boolean DEBUG = false;
  
  @VisibleForTesting
  final ArrayMap<RecyclerView$ViewHolder, ViewInfoStore$InfoRecord> mLayoutHolderMap = new ArrayMap();
  
  @VisibleForTesting
  final LongSparseArray<RecyclerView$ViewHolder> mOldChangedHolders = new LongSparseArray();
  
  private RecyclerView$ItemAnimator$ItemHolderInfo popFromLayoutStep(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, int paramInt) {
    RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2 = null;
    int i = this.mLayoutHolderMap.indexOfKey(paramRecyclerView$ViewHolder);
    if (i < 0)
      return recyclerView$ItemAnimator$ItemHolderInfo2; 
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.valueAt(i);
    RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo1 = recyclerView$ItemAnimator$ItemHolderInfo2;
    if (viewInfoStore$InfoRecord != null) {
      recyclerView$ItemAnimator$ItemHolderInfo1 = recyclerView$ItemAnimator$ItemHolderInfo2;
      if ((viewInfoStore$InfoRecord.flags & paramInt) != 0) {
        RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo;
        viewInfoStore$InfoRecord.flags &= paramInt ^ 0xFFFFFFFF;
        if (paramInt == 4) {
          recyclerView$ItemAnimator$ItemHolderInfo = viewInfoStore$InfoRecord.preInfo;
        } else if (paramInt == 8) {
          recyclerView$ItemAnimator$ItemHolderInfo = viewInfoStore$InfoRecord.postInfo;
        } else {
          throw new IllegalArgumentException("Must provide flag PRE or POST");
        } 
        recyclerView$ItemAnimator$ItemHolderInfo1 = recyclerView$ItemAnimator$ItemHolderInfo;
        if ((viewInfoStore$InfoRecord.flags & 0xC) == 0) {
          this.mLayoutHolderMap.removeAt(i);
          ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecord);
          return recyclerView$ItemAnimator$ItemHolderInfo;
        } 
      } 
    } 
    return recyclerView$ItemAnimator$ItemHolderInfo1;
  }
  
  void addToAppearedInPreLayoutHolders(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo) {
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord2 = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.get(paramRecyclerView$ViewHolder);
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord1 = viewInfoStore$InfoRecord2;
    if (viewInfoStore$InfoRecord2 == null) {
      viewInfoStore$InfoRecord1 = ViewInfoStore$InfoRecord.obtain();
      this.mLayoutHolderMap.put(paramRecyclerView$ViewHolder, viewInfoStore$InfoRecord1);
    } 
    viewInfoStore$InfoRecord1.flags |= 0x2;
    viewInfoStore$InfoRecord1.preInfo = paramRecyclerView$ItemAnimator$ItemHolderInfo;
  }
  
  void addToDisappearedInLayout(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord2 = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.get(paramRecyclerView$ViewHolder);
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord1 = viewInfoStore$InfoRecord2;
    if (viewInfoStore$InfoRecord2 == null) {
      viewInfoStore$InfoRecord1 = ViewInfoStore$InfoRecord.obtain();
      this.mLayoutHolderMap.put(paramRecyclerView$ViewHolder, viewInfoStore$InfoRecord1);
    } 
    viewInfoStore$InfoRecord1.flags |= 0x1;
  }
  
  void addToOldChangeHolders(long paramLong, RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    this.mOldChangedHolders.put(paramLong, paramRecyclerView$ViewHolder);
  }
  
  void addToPostLayout(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo) {
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord2 = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.get(paramRecyclerView$ViewHolder);
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord1 = viewInfoStore$InfoRecord2;
    if (viewInfoStore$InfoRecord2 == null) {
      viewInfoStore$InfoRecord1 = ViewInfoStore$InfoRecord.obtain();
      this.mLayoutHolderMap.put(paramRecyclerView$ViewHolder, viewInfoStore$InfoRecord1);
    } 
    viewInfoStore$InfoRecord1.postInfo = paramRecyclerView$ItemAnimator$ItemHolderInfo;
    viewInfoStore$InfoRecord1.flags |= 0x8;
  }
  
  void addToPreLayout(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo) {
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord2 = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.get(paramRecyclerView$ViewHolder);
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord1 = viewInfoStore$InfoRecord2;
    if (viewInfoStore$InfoRecord2 == null) {
      viewInfoStore$InfoRecord1 = ViewInfoStore$InfoRecord.obtain();
      this.mLayoutHolderMap.put(paramRecyclerView$ViewHolder, viewInfoStore$InfoRecord1);
    } 
    viewInfoStore$InfoRecord1.preInfo = paramRecyclerView$ItemAnimator$ItemHolderInfo;
    viewInfoStore$InfoRecord1.flags |= 0x4;
  }
  
  void clear() {
    this.mLayoutHolderMap.clear();
    this.mOldChangedHolders.clear();
  }
  
  RecyclerView$ViewHolder getFromOldChangeHolders(long paramLong) {
    return (RecyclerView$ViewHolder)this.mOldChangedHolders.get(paramLong);
  }
  
  boolean isDisappearing(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.get(paramRecyclerView$ViewHolder);
    return (viewInfoStore$InfoRecord != null && (viewInfoStore$InfoRecord.flags & 0x1) != 0);
  }
  
  boolean isInPreLayout(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.get(paramRecyclerView$ViewHolder);
    return (viewInfoStore$InfoRecord != null && (viewInfoStore$InfoRecord.flags & 0x4) != 0);
  }
  
  void onDetach() {
    ViewInfoStore$InfoRecord.drainCache();
  }
  
  public void onViewDetached(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    removeFromDisappearedInLayout(paramRecyclerView$ViewHolder);
  }
  
  @Nullable
  RecyclerView$ItemAnimator$ItemHolderInfo popFromPostLayout(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return popFromLayoutStep(paramRecyclerView$ViewHolder, 8);
  }
  
  @Nullable
  RecyclerView$ItemAnimator$ItemHolderInfo popFromPreLayout(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return popFromLayoutStep(paramRecyclerView$ViewHolder, 4);
  }
  
  void process(ViewInfoStore$ProcessCallback paramViewInfoStore$ProcessCallback) {
    for (int i = this.mLayoutHolderMap.size() - 1; i >= 0; i--) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = (RecyclerView$ViewHolder)this.mLayoutHolderMap.keyAt(i);
      ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.removeAt(i);
      if ((viewInfoStore$InfoRecord.flags & 0x3) == 3) {
        paramViewInfoStore$ProcessCallback.unused(recyclerView$ViewHolder);
      } else if ((viewInfoStore$InfoRecord.flags & 0x1) != 0) {
        if (viewInfoStore$InfoRecord.preInfo == null) {
          paramViewInfoStore$ProcessCallback.unused(recyclerView$ViewHolder);
        } else {
          paramViewInfoStore$ProcessCallback.processDisappeared(recyclerView$ViewHolder, viewInfoStore$InfoRecord.preInfo, viewInfoStore$InfoRecord.postInfo);
        } 
      } else if ((viewInfoStore$InfoRecord.flags & 0xE) == 14) {
        paramViewInfoStore$ProcessCallback.processAppeared(recyclerView$ViewHolder, viewInfoStore$InfoRecord.preInfo, viewInfoStore$InfoRecord.postInfo);
      } else if ((viewInfoStore$InfoRecord.flags & 0xC) == 12) {
        paramViewInfoStore$ProcessCallback.processPersistent(recyclerView$ViewHolder, viewInfoStore$InfoRecord.preInfo, viewInfoStore$InfoRecord.postInfo);
      } else if ((viewInfoStore$InfoRecord.flags & 0x4) != 0) {
        paramViewInfoStore$ProcessCallback.processDisappeared(recyclerView$ViewHolder, viewInfoStore$InfoRecord.preInfo, null);
      } else if ((viewInfoStore$InfoRecord.flags & 0x8) != 0) {
        paramViewInfoStore$ProcessCallback.processAppeared(recyclerView$ViewHolder, viewInfoStore$InfoRecord.preInfo, viewInfoStore$InfoRecord.postInfo);
      } else if ((viewInfoStore$InfoRecord.flags & 0x2) != 0) {
      
      } 
      ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecord);
    } 
  }
  
  void removeFromDisappearedInLayout(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.get(paramRecyclerView$ViewHolder);
    if (viewInfoStore$InfoRecord == null)
      return; 
    viewInfoStore$InfoRecord.flags &= 0xFFFFFFFE;
  }
  
  void removeViewHolder(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    int i = this.mOldChangedHolders.size() - 1;
    while (true) {
      if (i >= 0)
        if (paramRecyclerView$ViewHolder == this.mOldChangedHolders.valueAt(i)) {
          this.mOldChangedHolders.removeAt(i);
        } else {
          i--;
          continue;
        }  
      ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord)this.mLayoutHolderMap.remove(paramRecyclerView$ViewHolder);
      if (viewInfoStore$InfoRecord != null)
        ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecord); 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ViewInfoStore.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */