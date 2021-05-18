import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

class rq extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private List<tb> a;
  
  rq(List<tb> paramList) {
    this.a = paramList;
  }
  
  public rs a(ViewGroup paramViewGroup, int paramInt) {
    return new rs(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_produtos_children_benefifiarios, paramViewGroup, false), null);
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    rs.a((rs)paramViewHolder).setText(((ta)((tb)this.a.get(paramInt)).a().get(0)).a().b());
    rs.b((rs)paramViewHolder).setText(((ta)((tb)this.a.get(paramInt)).a().get(1)).a().b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\rq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */