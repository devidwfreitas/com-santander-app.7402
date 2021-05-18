import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class llb extends RecyclerView.Adapter<llc> {
  private List<kqo> a;
  
  private View b;
  
  private Context c;
  
  private List<kqq> d;
  
  public llb(List<kqo> paramList, Context paramContext, List<kqq> paramList1) {
    this.a = paramList;
    this.c = paramContext;
    this.d = paramList1;
  }
  
  public llc a(ViewGroup paramViewGroup, int paramInt) {
    this.b = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969415, paramViewGroup, false);
    return new llc(this, this.b);
  }
  
  public void a(llc paramllc, int paramInt) {
    kqo kqo = this.a.get(paramInt);
    for (paramInt = 0; paramInt < this.d.size(); paramInt++) {
      if (kqo.a().equals(((kqq)this.d.get(paramInt)).a()))
        paramllc.a.setText(mhj.q(((kqq)this.d.get(paramInt)).d().toLowerCase())); 
    } 
    paramllc.b.setText(mhj.a(mhj.G(kqo.l().b())));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */