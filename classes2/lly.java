import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class lly extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private final boolean a = true;
  
  private final int b = 1;
  
  private final int c = 2;
  
  private final int d = 3;
  
  private List<ktn> e = new ArrayList<ktn>();
  
  private lmd f;
  
  public lly(List<ktn> paramList) {
    this.e.addAll(paramList);
  }
  
  public void a(lmd paramlmd) {
    this.f = paramlmd;
  }
  
  public int getItemCount() {
    return (this.e.size() <= 0) ? this.e.size() : (this.e.size() + 1);
  }
  
  public int getItemViewType(int paramInt) {
    return (paramInt > 0 && paramInt == getItemCount() - 1) ? 3 : (((ktn)this.e.get(paramInt)).a() ? 1 : 2);
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    if (paramViewHolder instanceof lma && getItemViewType(paramInt) == 3) {
      paramViewHolder = paramViewHolder;
      lma.a((lma)paramViewHolder).setOnClickListener(null);
      lma.a((lma)paramViewHolder).setOnClickListener(new llz(this));
      return;
    } 
    if (paramViewHolder instanceof lmc && getItemViewType(paramInt) == 2) {
      ktn ktn = this.e.get(paramViewHolder.getAdapterPosition());
      paramViewHolder = paramViewHolder;
      lmc.a((lmc)paramViewHolder).setText("");
      lmc.a((lmc)paramViewHolder).setText(ktn.c());
      return;
    } 
    if (paramViewHolder instanceof lmb && getItemViewType(paramInt) == 1) {
      ktn ktn = this.e.get(paramViewHolder.getAdapterPosition());
      lmb.a((lmb)paramViewHolder).setText(ktn.b());
      return;
    } 
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    switch (paramInt) {
      default:
        return new lmc(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969458, paramViewGroup, false));
      case 2:
        return new lmc(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969458, paramViewGroup, false));
      case 1:
        return new lmb(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969457, paramViewGroup, false));
      case 3:
        break;
    } 
    return new lma(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969456, paramViewGroup, false));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */