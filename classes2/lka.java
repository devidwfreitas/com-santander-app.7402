import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class lka extends RecyclerView.Adapter<lkc> {
  private View a;
  
  private lkd b;
  
  private List<kqd> c;
  
  private List<kqe> d;
  
  public lka(List<kqd> paramList, List<kqe> paramList1) {
    this.c = paramList;
    this.d = paramList1;
  }
  
  public lkc a(ViewGroup paramViewGroup, int paramInt) {
    this.a = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968892, paramViewGroup, false);
    return new lkc(this, this.a);
  }
  
  public void a(lkc paramlkc, int paramInt) {
    kqd kqd = this.c.get(paramInt);
    if (paramInt == this.c.size() - 1)
      lkc.a(paramlkc).setVisibility(8); 
    for (paramInt = 0; paramInt < this.d.size(); paramInt++) {
      if (kqd.a().equals(((kqe)this.d.get(paramInt)).a())) {
        lkc.b(paramlkc).setText(mhj.q(((kqe)this.d.get(paramInt)).b()));
        lkc.c(paramlkc).setOnClickListener(new lkb(this, paramInt));
      } 
    } 
  }
  
  public void a(lkd paramlkd) {
    this.b = paramlkd;
  }
  
  public int getItemCount() {
    return this.c.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */