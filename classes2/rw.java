import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

class rw extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private List<acc> a;
  
  rw(List<acc> paramList) {
    this.a = paramList;
  }
  
  public ry a(ViewGroup paramViewGroup, int paramInt) {
    return new ry(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_produtos_children_tipo, paramViewGroup, false), null);
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    ry.a((ry)paramViewHolder).setText(((acc)this.a.get(paramInt)).a());
    ry.b((ry)paramViewHolder).setText(((acc)this.a.get(paramInt)).b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\rw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */