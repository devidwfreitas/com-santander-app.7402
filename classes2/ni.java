import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class ni extends RecyclerView.Adapter<nk> {
  private List<nc> a = new ArrayList<nc>();
  
  private Context b;
  
  public ni(List<nc> paramList, Context paramContext) {
    this.a.addAll(paramList);
    this.b = paramContext;
  }
  
  public nk a(ViewGroup paramViewGroup, int paramInt) {
    return new nk(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layoout_cdb_progressivo_lista, paramViewGroup, false), null);
  }
  
  public void a(nk paramnk, int paramInt) {
    Double double_ = Double.valueOf(((nc)this.a.get(paramInt)).c().substring(0, ((nc)this.a.get(paramInt)).c().length() - 1));
    String str = aat.c(Double.valueOf(double_.doubleValue() / 10000.0D)) + " do CDI";
    nk.a(paramnk).setText(str);
    nk.b(paramnk).setText(this.b.getResources().getString(lg.app_de_ate, new Object[] { aat.f(((nc)this.a.get(paramInt)).a()), aat.f(((nc)this.a.get(paramInt)).b()) }));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ni.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */