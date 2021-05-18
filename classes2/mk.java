import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

class mk extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private List<acc> a;
  
  private boolean b;
  
  mk(List<acc> paramList, boolean paramBoolean) {
    this.a = paramList;
    this.b = paramBoolean;
  }
  
  public mm a(ViewGroup paramViewGroup, int paramInt) {
    return new mm(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_carrinho_propriedades, paramViewGroup, false), null);
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    mm.a((mm)paramViewHolder).setText(((acc)this.a.get(paramInt)).a());
    mm.b((mm)paramViewHolder).setText(((acc)this.a.get(paramInt)).b());
    if (!this.b && paramInt == this.a.size() - 1)
      mm.c((mm)paramViewHolder).setVisibility(8); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */