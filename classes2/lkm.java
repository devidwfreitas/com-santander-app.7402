import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class lkm extends RecyclerView.Adapter<lkn> {
  private List<kpw> a = new ArrayList<kpw>();
  
  public lkm() {}
  
  public lkm(List<kpw> paramList) {
    this.a = paramList;
  }
  
  public lkn a(ViewGroup paramViewGroup, int paramInt) {
    return new lkn(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969442, paramViewGroup, false));
  }
  
  public void a(List<kpw> paramList) {
    this.a = paramList;
    notifyDataSetChanged();
  }
  
  public void a(lkn paramlkn, int paramInt) {
    kpw kpw = this.a.get(paramInt);
    lkn.a(paramlkn).setImageResource(2130838638);
    lkn.b(paramlkn).setText(kpw.b());
    lkn.c(paramlkn).setText(String.format("%s%%", new Object[] { kpw.d() }));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lkm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */