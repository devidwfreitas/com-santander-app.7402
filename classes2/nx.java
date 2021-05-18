import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class nx extends RecyclerView.Adapter<ny> {
  private List<acc> a;
  
  public nx(List<acc> paramList) {
    this.a = paramList;
  }
  
  public ny a(ViewGroup paramViewGroup, int paramInt) {
    return new ny(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_item_comprovante_efetivacao_recycler_item, paramViewGroup, false));
  }
  
  public void a(ny paramny, int paramInt) {
    String str = ((acc)this.a.get(paramInt)).a() + ":";
    paramny.a.setText(str);
    paramny.b.setText(((acc)this.a.get(paramInt)).b());
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */