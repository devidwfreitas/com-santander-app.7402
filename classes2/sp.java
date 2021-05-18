import android.app.Activity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.ca.android.app.CaMDOProgressBar;
import java.util.List;

public class sp extends RecyclerView.Adapter<sr> {
  private List<ace> a;
  
  private Activity b;
  
  public sp(Activity paramActivity, List<ace> paramList) {
    this.a = paramList;
    this.b = paramActivity;
  }
  
  public sr a(ViewGroup paramViewGroup, int paramInt) {
    return new sr(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_efetivacao_item, paramViewGroup, false));
  }
  
  public void a(List<ace> paramList) {
    this.a = paramList;
    notifyDataSetChanged();
  }
  
  public void a(sr paramsr, int paramInt) {
    paramsr.a = this.a.get(paramInt);
    paramsr.c.setBackgroundColor(paramsr.a.g().intValue());
    paramsr.d.setText(paramsr.a.f().k());
    if (paramsr.a.r().a() == null || paramsr.a.r().a().isEmpty()) {
      paramsr.e.setText(this.b.getString(lg.cart_novo_contrato));
    } else {
      paramsr.e.setText(paramsr.a.f().l() + ": " + paramsr.a.r().a());
    } 
    if (paramsr.a.p() != null) {
      paramsr.g.setVisibility(0);
      CaMDOProgressBar.setVisibility(paramsr.f, 8);
      if (!paramsr.a.p().booleanValue()) {
        paramsr.g.setImageResource(kz.ic_error_grey);
        for (acb acb : paramsr.a.r().i()) {
          if (acb.c().equalsIgnoreCase("E"))
            paramsr.g.setOnClickListener(new sq(this, acb, paramsr)); 
        } 
      } 
    } 
    if (paramInt == this.a.size() - 1)
      paramsr.b.setVisibility(8); 
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\sp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */