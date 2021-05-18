import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lke extends RecyclerView.Adapter<lkg> {
  private List<kqi> a;
  
  private lkh b;
  
  public lke(List<kqi> paramList) {
    this.a = paramList;
  }
  
  public lkg a(ViewGroup paramViewGroup, int paramInt) {
    return new lkg(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969452, paramViewGroup, false));
  }
  
  public void a(lkg paramlkg, int paramInt) {
    kqi kqi = this.a.get(paramlkg.getAdapterPosition());
    lkg.a(paramlkg).setOnClickListener(null);
    lkg.a(paramlkg).setOnClickListener(new lkf(this, paramlkg, kqi));
    lkg.b(paramlkg).setText(String.format("XXXX-%s", new Object[] { kqi.a() }));
  }
  
  public void a(lkh paramlkh) {
    this.b = paramlkh;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lke.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */