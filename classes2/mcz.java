import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.List;

public abstract class mcz<Item extends mdt> extends RecyclerView.Adapter implements mdm<Item> {
  private mda<Item> a;
  
  public mcz a(mda<Item> parammda) {
    this.a = parammda;
    this.a.a(this);
    return this;
  }
  
  public mcz a(mdm<Item> parammdm) {
    this.a = parammdm.a();
    this.a.a(this);
    return this;
  }
  
  public mda<Item> a() {
    return this.a;
  }
  
  public Item a(int paramInt) {
    return (Item)this.a.b(paramInt);
  }
  
  public void a(Iterable<Item> paramIterable) {
    if (paramIterable != null) {
      Iterator<Item> iterator = paramIterable.iterator();
      while (iterator.hasNext())
        a(iterator.next()); 
    } 
  }
  
  public void a(Item paramItem) {
    this.a.a((mdt)paramItem);
  }
  
  public int getItemCount() {
    return this.a.getItemCount();
  }
  
  public long getItemId(int paramInt) {
    return this.a.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt) {
    return this.a.getItemViewType(paramInt);
  }
  
  public void l_() {
    this.a.e();
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView) {
    this.a.onAttachedToRecyclerView(paramRecyclerView);
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    this.a.onBindViewHolder(paramViewHolder, paramInt);
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt, List paramList) {
    this.a.onBindViewHolder(paramViewHolder, paramInt, paramList);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return this.a.onCreateViewHolder(paramViewGroup, paramInt);
  }
  
  public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView) {
    this.a.onDetachedFromRecyclerView(paramRecyclerView);
  }
  
  public boolean onFailedToRecycleView(RecyclerView.ViewHolder paramViewHolder) {
    return this.a.onFailedToRecycleView(paramViewHolder);
  }
  
  public void onViewAttachedToWindow(RecyclerView.ViewHolder paramViewHolder) {
    this.a.onViewAttachedToWindow(paramViewHolder);
  }
  
  public void onViewDetachedFromWindow(RecyclerView.ViewHolder paramViewHolder) {
    this.a.onViewDetachedFromWindow(paramViewHolder);
  }
  
  public void onViewRecycled(RecyclerView.ViewHolder paramViewHolder) {
    this.a.onViewRecycled(paramViewHolder);
  }
  
  public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver paramAdapterDataObserver) {
    super.registerAdapterDataObserver(paramAdapterDataObserver);
    if (this.a != null)
      this.a.registerAdapterDataObserver(paramAdapterDataObserver); 
  }
  
  public void setHasStableIds(boolean paramBoolean) {
    this.a.setHasStableIds(paramBoolean);
  }
  
  public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver paramAdapterDataObserver) {
    super.unregisterAdapterDataObserver(paramAdapterDataObserver);
    if (this.a != null)
      this.a.unregisterAdapterDataObserver(paramAdapterDataObserver); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */