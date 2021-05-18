import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class ggc extends RecyclerView.Adapter<gge> {
  private List<gev> a;
  
  private View.OnClickListener b;
  
  public ggc(List<gev> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramList;
    this.b = paramOnClickListener;
  }
  
  public gge a(ViewGroup paramViewGroup, int paramInt) {
    return new gge(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968778, paramViewGroup, false));
  }
  
  public void a() {
    this.a.clear();
    notifyDataSetChanged();
  }
  
  public void a(gge paramgge, int paramInt) {
    gev gev = this.a.get(paramInt);
    gge.a(paramgge).setText(gev.a());
    gge.b(paramgge).setText(naj.b(gev.b()));
    if (gev.g()) {
      gge.c(paramgge).setVisibility(0);
      paramgge.itemView.setOnClickListener(new ggd(this, paramgge, gev));
    } 
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ggc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */