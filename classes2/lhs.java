import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class lhs extends RecyclerView.Adapter<lhu> {
  private List<kpz> a = new ArrayList<kpz>();
  
  private double b = 0.0D;
  
  private lhv c;
  
  public lhs(kpv paramkpv) {
    if (paramkpv != null)
      try {
        if (paramkpv.a() != null && paramkpv.a().size() > 0) {
          this.a.addAll(paramkpv.a());
          this.b = Double.parseDouble(paramkpv.b());
        } 
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        this.b = 0.0D;
        return;
      }  
  }
  
  public lhu a(ViewGroup paramViewGroup, int paramInt) {
    return new lhu(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969427, paramViewGroup, false));
  }
  
  public void a(lhu paramlhu, int paramInt) {
    kqa kqa = ((kpz)this.a.get(paramInt)).a();
    lhu.a(paramlhu).setImageResource(2130838476);
    lhu.b(paramlhu).setText(mhj.s(nab.a().c(kqa.e())));
    lhu.c(paramlhu).setText(mhj.p(kqa.g().b()));
    lhu.d(paramlhu).setText(String.format("%s%%", new Object[] { kqa.f() }));
    String str = mhj.a(Double.valueOf(this.b * Double.parseDouble(kqa.f()) / 100.0D));
    lhu.e(paramlhu).setText(str);
    lhu.f(paramlhu).setImageResource(2130838436);
    lhu.f(paramlhu).setOnClickListener(new lht(this, kqa));
  }
  
  public void a(lhv paramlhv) {
    this.c = paramlhv;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */