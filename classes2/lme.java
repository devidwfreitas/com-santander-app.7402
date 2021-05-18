import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class lme extends RecyclerView.Adapter<lmg> {
  private List<krn> a;
  
  private View b;
  
  private lmh c;
  
  public lme(List<krn> paramList) {
    this.a = paramList;
  }
  
  public lmg a(ViewGroup paramViewGroup, int paramInt) {
    this.b = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968894, paramViewGroup, false);
    return new lmg(this, this.b);
  }
  
  public void a(lmg paramlmg, int paramInt) {
    krn krn = this.a.get(paramInt);
    if (krn.c() != null && !krn.c().isEmpty()) {
      String str = mhj.a(krn.c() + "00", '0', 15);
      lmg.a(paramlmg).setText("R$ " + mhj.c(Double.valueOf(mhj.G(str))));
    } else {
      lmg.a(paramlmg).setText("");
    } 
    lmg.b(paramlmg).setOnClickListener(new lmf(this, paramInt));
  }
  
  public void a(lmh paramlmh) {
    this.c = paramlmh;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */