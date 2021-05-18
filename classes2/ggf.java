import android.app.Activity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class ggf extends RecyclerView.Adapter<ggg> {
  private List<gev> a;
  
  private Activity b;
  
  public ggf(List<gev> paramList, Activity paramActivity) {
    this.a = paramList;
    this.b = paramActivity;
  }
  
  public ggg a(ViewGroup paramViewGroup, int paramInt) {
    return new ggg(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968780, paramViewGroup, false));
  }
  
  public void a(ggg paramggg, int paramInt) {
    gev gev = this.a.get(paramInt);
    if (gev.b().contains("-"))
      ggg.a(paramggg).setTextColor(this.b.getResources().getColor(2131624099)); 
    ggg.a(paramggg).setText(naj.b(gev.b()));
    ggg.b(paramggg).setText(gev.a());
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ggf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */