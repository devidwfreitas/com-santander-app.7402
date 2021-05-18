import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class hky extends RecyclerView.Adapter<hku> {
  private List<hxl> a = new ArrayList<hxl>();
  
  private hkt b;
  
  public hky(hkt paramhkt) {
    this.b = paramhkt;
  }
  
  public hku a(ViewGroup paramViewGroup, int paramInt) {
    return (hku)((paramInt == 11) ? new hkx(paramViewGroup, this.b) : new hks(paramViewGroup, this.b));
  }
  
  public void a() {
    this.a.clear();
    notifyDataSetChanged();
  }
  
  public void a(hku paramhku, int paramInt) {
    paramhku.a(this.a.get(paramInt));
  }
  
  public void a(List<hxl> paramList) {
    this.a.clear();
    this.a.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public int getItemViewType(int paramInt) {
    return ((hxl)this.a.get(paramInt)).a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */