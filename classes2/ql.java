import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class ql extends RecyclerView.Adapter<qm> {
  private Context a;
  
  private List<qk> b = new ArrayList<qk>();
  
  public ql(Context paramContext, List<qk> paramList) {
    this.a = paramContext;
    this.b = paramList;
  }
  
  private qk a(int paramInt) {
    return !this.b.isEmpty() ? this.b.get(paramInt) : null;
  }
  
  public qm a(ViewGroup paramViewGroup, int paramInt) {
    return new qm(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.recyclerview_configurar_investimentos_row, paramViewGroup, false));
  }
  
  public void a(qm paramqm, int paramInt) {
    qk qk = a(paramInt);
    if (qk != null) {
      paramqm.c().setText(qk.b());
      paramqm.b().setText(qk.a());
      paramqm.a().setImageDrawable(qk.e());
      if (!qk.d().booleanValue()) {
        paramqm.d().setClickable(false);
        paramqm.b().setTextColor(ContextCompat.getColor(this.a, kx.inv_warm_grey_two));
        paramqm.c().setTextColor(ContextCompat.getColor(this.a, kx.inv_warm_grey_two));
        paramqm.e().setVisibility(8);
        return;
      } 
    } else {
      return;
    } 
    paramqm.d().setClickable(true);
    paramqm.d().setOnClickListener(qk.c());
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */