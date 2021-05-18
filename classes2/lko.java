import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class lko extends RecyclerView.Adapter<lkr> {
  private View a;
  
  private lks b;
  
  private List<kqo> c;
  
  private List<kqq> d;
  
  public lko(List<kqo> paramList, List<kqq> paramList1) {
    this.c = paramList;
    this.d = paramList1;
  }
  
  public lkr a(ViewGroup paramViewGroup, int paramInt) {
    this.a = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968893, paramViewGroup, false);
    return new lkr(this, this.a);
  }
  
  public void a(lkr paramlkr, int paramInt) {
    kqo kqo = this.c.get(paramInt);
    if (paramInt == this.c.size() - 1)
      lkr.a(paramlkr).setVisibility(8); 
    for (paramInt = 0; paramInt < this.d.size(); paramInt++) {
      if (kqo.a().equals(((kqq)this.d.get(paramInt)).a())) {
        lkr.b(paramlkr).setText(((kqq)this.d.get(paramInt)).b());
        lkr.c(paramlkr).setOnClickListener(new lkp(this, paramInt));
        lkr.b(paramlkr).setOnClickListener(new lkq(this, paramInt));
      } 
    } 
    lkr.d(paramlkr).setText(mhj.a(mhj.G(kqo.l().b())));
  }
  
  public void a(lks paramlks) {
    this.b = paramlks;
  }
  
  public int getItemCount() {
    return this.c.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */