import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class hfd extends RecyclerView.Adapter<hfe> {
  private List<hga> a = new ArrayList<hga>();
  
  public hfe a(ViewGroup paramViewGroup, int paramInt) {
    return new hfe(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968762, paramViewGroup, false));
  }
  
  public void a(hfe paramhfe, int paramInt) {
    if (paramInt == 0) {
      paramhfe.a("Número do contrato", "Valor");
      return;
    } 
    paramhfe.a(this.a.get(paramInt - 1));
  }
  
  public void a(List<hga> paramList) {
    this.a.clear();
    this.a.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return this.a.size() + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */