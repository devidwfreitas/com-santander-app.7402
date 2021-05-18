import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lhz extends RecyclerView.Adapter<lia> {
  private List<kny> a;
  
  public lhz(List<kny> paramList) {
    this.a = paramList;
  }
  
  public lia a(ViewGroup paramViewGroup, int paramInt) {
    return new lia(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969429, paramViewGroup, false));
  }
  
  public void a(lia paramlia, int paramInt) {
    kny kny = this.a.get(paramInt);
    if (getItemCount() == 1) {
      lia.a(paramlia).setVisibility(8);
      lia.b(paramlia).setVisibility(8);
    } else if (paramInt == 0) {
      lia.a(paramlia).setVisibility(8);
      lia.b(paramlia).setVisibility(0);
    } else if (paramInt == getItemCount() - 1) {
      lia.a(paramlia).setVisibility(0);
      lia.b(paramlia).setVisibility(8);
    } else {
      lia.a(paramlia).setVisibility(0);
      lia.b(paramlia).setVisibility(0);
    } 
    lia.c(paramlia).setBackgroundColor(lia.c(paramlia).getResources().getColor(2131624121));
    lia.d(paramlia).setText(mhj.p(kny.b()));
    lia.e(paramlia).setText(mhj.a(Double.valueOf(Double.parseDouble(kny.a()))));
    lia.f(paramlia).setImageResource(2130838584);
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */