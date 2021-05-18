import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.santander.app.seguros.ui.consultative.activities.BillingActivity;
import java.util.List;

public class lhw extends RecyclerView.Adapter<lhx> {
  private List<knx> a;
  
  private BillingActivity b;
  
  public lhw(List<knx> paramList, BillingActivity paramBillingActivity) {
    this.a = paramList;
    this.b = paramBillingActivity;
  }
  
  public lhx a(ViewGroup paramViewGroup, int paramInt) {
    return new lhx(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969428, paramViewGroup, false));
  }
  
  public void a(lhx paramlhx, int paramInt) {
    knx knx = this.a.get(paramInt);
    if (knx.d().equalsIgnoreCase("PAGA")) {
      lhx.a(paramlhx).setText(mhj.a(knx.g()));
      lhx.b(paramlhx).setText(mhj.a(knx.a()));
      lhx.c(paramlhx).setBackgroundColor(this.b.getResources().getColor(2131624091));
      lhx.a(paramlhx).setTextColor(this.b.getResources().getColor(2131624091));
      return;
    } 
    if (knx.d().equalsIgnoreCase("a vencer")) {
      lhx.a(paramlhx).setText(mhj.a(knx.e()));
      lhx.b(paramlhx).setText(mhj.a(knx.b()));
      lhx.c(paramlhx).setBackgroundColor(this.b.getResources().getColor(2131624056));
      lhx.a(paramlhx).setTextColor(this.b.getResources().getColor(2131624056));
      return;
    } 
    lhx.a(paramlhx).setText(mhj.a(knx.e()));
    lhx.b(paramlhx).setText(mhj.a(knx.b()));
    lhx.c(paramlhx).setBackgroundColor(this.b.getResources().getColor(2131624113));
    lhx.a(paramlhx).setTextColor(this.b.getResources().getColor(2131624113));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */