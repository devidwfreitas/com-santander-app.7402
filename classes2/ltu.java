import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class ltu extends RecyclerView.Adapter<ltx> {
  private List<kux> a = new ArrayList<kux>();
  
  private lty b;
  
  public ltu() {}
  
  public ltu(List<kux> paramList) {}
  
  public ltx a(ViewGroup paramViewGroup, int paramInt) {
    return new ltx(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969025, paramViewGroup, false));
  }
  
  public void a(int paramInt) {
    this.a.remove(paramInt);
    notifyDataSetChanged();
  }
  
  public void a(List<kux> paramList) {
    this.a = paramList;
    notifyDataSetChanged();
  }
  
  public void a(kux paramkux) {
    this.a.add(paramkux);
    notifyDataSetChanged();
  }
  
  public void a(kux paramkux, int paramInt) {
    this.a.set(paramInt, paramkux);
    notifyDataSetChanged();
  }
  
  public void a(ltx paramltx, int paramInt) {
    kux kux = this.a.get(paramInt);
    ltx.a(paramltx).setText(kux.a());
    ltx.b(paramltx).setOnClickListener(new ltv(this, paramInt));
    ltx.a(paramltx).setOnClickListener(new ltw(this, paramInt));
  }
  
  public void a(lty paramlty) {
    this.b = paramlty;
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ltu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */