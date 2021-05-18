import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class nde extends RecyclerView.Adapter<ndf> {
  private Context a;
  
  private List<gyv> b;
  
  private ndg c;
  
  public nde(Context paramContext, List<gyv> paramList) {
    this.a = paramContext;
    this.b = paramList;
  }
  
  public ndf a(ViewGroup paramViewGroup, int paramInt) {
    return new ndf(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968775, paramViewGroup, false));
  }
  
  public void a(ndf paramndf, int paramInt) {
    if (((gyv)this.b.get(paramInt)).c() == null || ((gyv)this.b.get(paramInt)).c().isEmpty())
      return; 
    paramndf.a.setText(nai.i(nag.b(((gyv)this.b.get(paramInt)).c())));
  }
  
  public void a(ndg paramndg) {
    this.c = paramndg;
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nde.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */