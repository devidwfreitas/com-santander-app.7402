import android.support.annotation.LayoutRes;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class hff extends RecyclerView.Adapter<hfh> {
  private List<hgb> a;
  
  private hfg b;
  
  @LayoutRes
  private int c;
  
  public hff(List<hgb> paramList) {
    this(paramList, 2130968763);
  }
  
  public hff(List<hgb> paramList, @LayoutRes int paramInt) {
    this.a = paramList;
    this.c = paramInt;
  }
  
  public hfh a(ViewGroup paramViewGroup, int paramInt) {
    return new hfh(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(this.c, paramViewGroup, false));
  }
  
  public void a(hfg paramhfg) {
    this.b = paramhfg;
  }
  
  public void a(hfh paramhfh, int paramInt) {
    paramhfh.a(this.a.get(paramInt));
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */