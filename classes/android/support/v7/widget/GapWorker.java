package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.v4.os.TraceCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

final class GapWorker implements Runnable {
  static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<GapWorker>();
  
  static Comparator<GapWorker$Task> sTaskComparator = new GapWorker$1();
  
  long mFrameIntervalNs;
  
  long mPostTimeNs;
  
  ArrayList<RecyclerView> mRecyclerViews = new ArrayList<RecyclerView>();
  
  private ArrayList<GapWorker$Task> mTasks = new ArrayList<GapWorker$Task>();
  
  private void buildTaskList() {
    int k = this.mRecyclerViews.size();
    int j = 0;
    int i = 0;
    while (j < k) {
      RecyclerView recyclerView = this.mRecyclerViews.get(j);
      if (recyclerView.getWindowVisibility() == 0) {
        recyclerView.mPrefetchRegistry.collectPrefetchPositionsFromView(recyclerView, false);
        i = recyclerView.mPrefetchRegistry.mCount + i;
      } 
      j++;
    } 
    this.mTasks.ensureCapacity(i);
    j = 0;
    i = 0;
    label34: while (j < k) {
      RecyclerView recyclerView = this.mRecyclerViews.get(j);
      if (recyclerView.getWindowVisibility() != 0)
        continue; 
      GapWorker$LayoutPrefetchRegistryImpl gapWorker$LayoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
      int n = Math.abs(gapWorker$LayoutPrefetchRegistryImpl.mPrefetchDx) + Math.abs(gapWorker$LayoutPrefetchRegistryImpl.mPrefetchDy);
      int m = 0;
      while (true) {
        if (m < gapWorker$LayoutPrefetchRegistryImpl.mCount * 2) {
          boolean bool;
          GapWorker$Task gapWorker$Task;
          if (i >= this.mTasks.size()) {
            gapWorker$Task = new GapWorker$Task();
            this.mTasks.add(gapWorker$Task);
          } else {
            gapWorker$Task = this.mTasks.get(i);
          } 
          int i1 = gapWorker$LayoutPrefetchRegistryImpl.mPrefetchArray[m + 1];
          if (i1 <= n) {
            bool = true;
          } else {
            bool = false;
          } 
          gapWorker$Task.immediate = bool;
          gapWorker$Task.viewVelocity = n;
          gapWorker$Task.distanceToItem = i1;
          gapWorker$Task.view = recyclerView;
          gapWorker$Task.position = gapWorker$LayoutPrefetchRegistryImpl.mPrefetchArray[m];
          i++;
          m += 2;
          continue;
        } 
        j++;
        continue label34;
      } 
    } 
    Collections.sort(this.mTasks, sTaskComparator);
  }
  
  private void flushTaskWithDeadline(GapWorker$Task paramGapWorker$Task, long paramLong) {
    long l;
    if (paramGapWorker$Task.immediate) {
      l = Long.MAX_VALUE;
    } else {
      l = paramLong;
    } 
    RecyclerView$ViewHolder recyclerView$ViewHolder = prefetchPositionWithDeadline(paramGapWorker$Task.view, paramGapWorker$Task.position, l);
    if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.mNestedRecyclerView != null)
      prefetchInnerRecyclerViewWithDeadline(recyclerView$ViewHolder.mNestedRecyclerView.get(), paramLong); 
  }
  
  private void flushTasksWithDeadline(long paramLong) {
    int i = 0;
    while (true) {
      if (i < this.mTasks.size()) {
        GapWorker$Task gapWorker$Task = this.mTasks.get(i);
        if (gapWorker$Task.view != null) {
          flushTaskWithDeadline(gapWorker$Task, paramLong);
          gapWorker$Task.clear();
          i++;
          continue;
        } 
      } 
      return;
    } 
  }
  
  static boolean isPrefetchPositionAttached(RecyclerView paramRecyclerView, int paramInt) {
    boolean bool = false;
    int j = paramRecyclerView.mChildHelper.getUnfilteredChildCount();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramRecyclerView.mChildHelper.getUnfilteredChildAt(i));
        if (recyclerView$ViewHolder.mPosition == paramInt && !recyclerView$ViewHolder.isInvalid())
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  private void prefetchInnerRecyclerViewWithDeadline(@Nullable RecyclerView paramRecyclerView, long paramLong) {
    if (paramRecyclerView != null) {
      if (paramRecyclerView.mDataSetHasChangedAfterLayout && paramRecyclerView.mChildHelper.getUnfilteredChildCount() != 0)
        paramRecyclerView.removeAndRecycleViews(); 
      GapWorker$LayoutPrefetchRegistryImpl gapWorker$LayoutPrefetchRegistryImpl = paramRecyclerView.mPrefetchRegistry;
      gapWorker$LayoutPrefetchRegistryImpl.collectPrefetchPositionsFromView(paramRecyclerView, true);
      if (gapWorker$LayoutPrefetchRegistryImpl.mCount != 0)
        try {
          TraceCompat.beginSection("RV Nested Prefetch");
          paramRecyclerView.mState.prepareForNestedPrefetch(paramRecyclerView.mAdapter);
          int i;
          for (i = 0; i < gapWorker$LayoutPrefetchRegistryImpl.mCount * 2; i += 2)
            prefetchPositionWithDeadline(paramRecyclerView, gapWorker$LayoutPrefetchRegistryImpl.mPrefetchArray[i], paramLong); 
          return;
        } finally {
          TraceCompat.endSection();
        }  
    } 
  }
  
  private RecyclerView$ViewHolder prefetchPositionWithDeadline(RecyclerView paramRecyclerView, int paramInt, long paramLong) {
    if (isPrefetchPositionAttached(paramRecyclerView, paramInt))
      return null; 
    RecyclerView$Recycler recyclerView$Recycler = paramRecyclerView.mRecycler;
    RecyclerView$ViewHolder recyclerView$ViewHolder2 = recyclerView$Recycler.tryGetViewHolderForPositionByDeadline(paramInt, false, paramLong);
    RecyclerView$ViewHolder recyclerView$ViewHolder1 = recyclerView$ViewHolder2;
    if (recyclerView$ViewHolder2 != null) {
      if (recyclerView$ViewHolder2.isBound()) {
        recyclerView$Recycler.recycleView(recyclerView$ViewHolder2.itemView);
        return recyclerView$ViewHolder2;
      } 
      recyclerView$Recycler.addViewHolderToRecycledViewPool(recyclerView$ViewHolder2, false);
      return recyclerView$ViewHolder2;
    } 
    return recyclerView$ViewHolder1;
  }
  
  public void add(RecyclerView paramRecyclerView) {
    this.mRecyclerViews.add(paramRecyclerView);
  }
  
  void postFromTraversal(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {
    if (paramRecyclerView.isAttachedToWindow() && this.mPostTimeNs == 0L) {
      this.mPostTimeNs = paramRecyclerView.getNanoTime();
      paramRecyclerView.post(this);
    } 
    paramRecyclerView.mPrefetchRegistry.setPrefetchVector(paramInt1, paramInt2);
  }
  
  void prefetch(long paramLong) {
    buildTaskList();
    flushTasksWithDeadline(paramLong);
  }
  
  public void remove(RecyclerView paramRecyclerView) {
    this.mRecyclerViews.remove(paramRecyclerView);
  }
  
  public void run() {
    try {
      TraceCompat.beginSection("RV Prefetch");
      boolean bool = this.mRecyclerViews.isEmpty();
      if (bool)
        return; 
      int j = this.mRecyclerViews.size();
      int i = 0;
      long l = 0L;
      while (i < j) {
        RecyclerView recyclerView = this.mRecyclerViews.get(i);
        if (recyclerView.getWindowVisibility() == 0)
          l = Math.max(recyclerView.getDrawingTime(), l); 
        i++;
      } 
      if (l == 0L)
        return; 
      prefetch(TimeUnit.MILLISECONDS.toNanos(l) + this.mFrameIntervalNs);
      return;
    } finally {
      this.mPostTimeNs = 0L;
      TraceCompat.endSection();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GapWorker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */