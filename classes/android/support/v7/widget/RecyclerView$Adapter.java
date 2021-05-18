package android.support.v7.widget;

import android.support.v4.os.TraceCompat;
import android.view.ViewGroup;
import java.util.List;

public abstract class RecyclerView$Adapter<VH extends RecyclerView$ViewHolder> {
  private boolean mHasStableIds = false;
  
  private final RecyclerView$AdapterDataObservable mObservable = new RecyclerView$AdapterDataObservable();
  
  public final void bindViewHolder(VH paramVH, int paramInt) {
    ((RecyclerView$ViewHolder)paramVH).mPosition = paramInt;
    if (hasStableIds())
      ((RecyclerView$ViewHolder)paramVH).mItemId = getItemId(paramInt); 
    paramVH.setFlags(1, 519);
    TraceCompat.beginSection("RV OnBindView");
    onBindViewHolder(paramVH, paramInt, paramVH.getUnmodifiedPayloads());
    paramVH.clearPayload();
    ViewGroup.LayoutParams layoutParams = ((RecyclerView$ViewHolder)paramVH).itemView.getLayoutParams();
    if (layoutParams instanceof RecyclerView$LayoutParams)
      ((RecyclerView$LayoutParams)layoutParams).mInsetsDirty = true; 
    TraceCompat.endSection();
  }
  
  public final VH createViewHolder(ViewGroup paramViewGroup, int paramInt) {
    TraceCompat.beginSection("RV CreateView");
    paramViewGroup = (ViewGroup)onCreateViewHolder(paramViewGroup, paramInt);
    ((RecyclerView$ViewHolder)paramViewGroup).mItemViewType = paramInt;
    TraceCompat.endSection();
    return (VH)paramViewGroup;
  }
  
  public abstract int getItemCount();
  
  public long getItemId(int paramInt) {
    return -1L;
  }
  
  public int getItemViewType(int paramInt) {
    return 0;
  }
  
  public final boolean hasObservers() {
    return this.mObservable.hasObservers();
  }
  
  public final boolean hasStableIds() {
    return this.mHasStableIds;
  }
  
  public final void notifyDataSetChanged() {
    this.mObservable.notifyChanged();
  }
  
  public final void notifyItemChanged(int paramInt) {
    this.mObservable.notifyItemRangeChanged(paramInt, 1);
  }
  
  public final void notifyItemChanged(int paramInt, Object paramObject) {
    this.mObservable.notifyItemRangeChanged(paramInt, 1, paramObject);
  }
  
  public final void notifyItemInserted(int paramInt) {
    this.mObservable.notifyItemRangeInserted(paramInt, 1);
  }
  
  public final void notifyItemMoved(int paramInt1, int paramInt2) {
    this.mObservable.notifyItemMoved(paramInt1, paramInt2);
  }
  
  public final void notifyItemRangeChanged(int paramInt1, int paramInt2) {
    this.mObservable.notifyItemRangeChanged(paramInt1, paramInt2);
  }
  
  public final void notifyItemRangeChanged(int paramInt1, int paramInt2, Object paramObject) {
    this.mObservable.notifyItemRangeChanged(paramInt1, paramInt2, paramObject);
  }
  
  public final void notifyItemRangeInserted(int paramInt1, int paramInt2) {
    this.mObservable.notifyItemRangeInserted(paramInt1, paramInt2);
  }
  
  public final void notifyItemRangeRemoved(int paramInt1, int paramInt2) {
    this.mObservable.notifyItemRangeRemoved(paramInt1, paramInt2);
  }
  
  public final void notifyItemRemoved(int paramInt) {
    this.mObservable.notifyItemRangeRemoved(paramInt, 1);
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView) {}
  
  public abstract void onBindViewHolder(VH paramVH, int paramInt);
  
  public void onBindViewHolder(VH paramVH, int paramInt, List<Object> paramList) {
    onBindViewHolder(paramVH, paramInt);
  }
  
  public abstract VH onCreateViewHolder(ViewGroup paramViewGroup, int paramInt);
  
  public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView) {}
  
  public boolean onFailedToRecycleView(VH paramVH) {
    return false;
  }
  
  public void onViewAttachedToWindow(VH paramVH) {}
  
  public void onViewDetachedFromWindow(VH paramVH) {}
  
  public void onViewRecycled(VH paramVH) {}
  
  public void registerAdapterDataObserver(RecyclerView$AdapterDataObserver paramRecyclerView$AdapterDataObserver) {
    this.mObservable.registerObserver(paramRecyclerView$AdapterDataObserver);
  }
  
  public void setHasStableIds(boolean paramBoolean) {
    if (hasObservers())
      throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers."); 
    this.mHasStableIds = paramBoolean;
  }
  
  public void unregisterAdapterDataObserver(RecyclerView$AdapterDataObserver paramRecyclerView$AdapterDataObserver) {
    this.mObservable.unregisterObserver(paramRecyclerView$AdapterDataObserver);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */