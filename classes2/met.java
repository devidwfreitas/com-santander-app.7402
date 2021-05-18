import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public abstract class met<Item extends mdt> extends RecyclerView.Adapter {
  private List<Item> a = new ArrayList<Item>();
  
  private RecyclerView.Adapter b;
  
  public met(List<Item> paramList) {
    this.a = paramList;
  }
  
  public List<Item> a() {
    return this.a;
  }
  
  public met a(RecyclerView.Adapter paramAdapter) {
    this.b = paramAdapter;
    return this;
  }
  
  public void a(List<Item> paramList) {
    this.a = paramList;
  }
  
  public abstract boolean a(int paramInt);
  
  public abstract int b(int paramInt);
  
  public RecyclerView.Adapter b() {
    return this.b;
  }
  
  public Item c(int paramInt) {
    return (Item)(a(paramInt) ? (mdt)this.a.get(b(paramInt - 1)) : null);
  }
  
  public int getItemCount() {
    int i = this.b.getItemCount();
    return i + b(i);
  }
  
  public long getItemId(int paramInt) {
    return a(paramInt) ? c(paramInt).j() : this.b.getItemId(paramInt - b(paramInt));
  }
  
  public int getItemViewType(int paramInt) {
    return a(paramInt) ? c(paramInt).b() : this.b.getItemViewType(paramInt - b(paramInt));
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView) {
    this.b.onAttachedToRecyclerView(paramRecyclerView);
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {}
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt, List paramList) {
    if (a(paramInt)) {
      c(paramInt).a(paramViewHolder, paramList);
      return;
    } 
    this.b.onBindViewHolder(paramViewHolder, paramInt - b(paramInt), paramList);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    for (mdt mdt : this.a) {
      if (mdt.b() == paramInt)
        return (RecyclerView.ViewHolder)mdt.a(paramViewGroup); 
    } 
    return this.b.onCreateViewHolder(paramViewGroup, paramInt);
  }
  
  public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView) {
    this.b.onDetachedFromRecyclerView(paramRecyclerView);
  }
  
  public boolean onFailedToRecycleView(RecyclerView.ViewHolder paramViewHolder) {
    return this.b.onFailedToRecycleView(paramViewHolder);
  }
  
  public void onViewAttachedToWindow(RecyclerView.ViewHolder paramViewHolder) {
    this.b.onViewAttachedToWindow(paramViewHolder);
  }
  
  public void onViewDetachedFromWindow(RecyclerView.ViewHolder paramViewHolder) {
    this.b.onViewDetachedFromWindow(paramViewHolder);
  }
  
  public void onViewRecycled(RecyclerView.ViewHolder paramViewHolder) {
    this.b.onViewRecycled(paramViewHolder);
  }
  
  public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver paramAdapterDataObserver) {
    super.registerAdapterDataObserver(paramAdapterDataObserver);
    if (this.b != null)
      this.b.registerAdapterDataObserver(paramAdapterDataObserver); 
  }
  
  public void setHasStableIds(boolean paramBoolean) {
    this.b.setHasStableIds(paramBoolean);
  }
  
  public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver paramAdapterDataObserver) {
    super.unregisterAdapterDataObserver(paramAdapterDataObserver);
    if (this.b != null)
      this.b.unregisterAdapterDataObserver(paramAdapterDataObserver); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\met.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */