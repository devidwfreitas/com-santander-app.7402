import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lak extends RecyclerView.Adapter {
  private final int a = 0;
  
  private final int b = 1;
  
  private lal c;
  
  private Context d;
  
  private List<kpo> e;
  
  private boolean f;
  
  public lak(Context paramContext, List<kpo> paramList, boolean paramBoolean) {
    this.d = paramContext;
    this.e = paramList;
    this.f = paramBoolean;
  }
  
  public void a(lal paramlal) {
    this.c = paramlal;
  }
  
  public int getItemCount() {
    return this.f ? (this.e.size() + 1) : this.e.size();
  }
  
  public int getItemViewType(int paramInt) {
    return (paramInt == 0 && this.f) ? 0 : 1;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    if (paramViewHolder instanceof lam) {
      int i = paramInt;
      if (this.f)
        i = paramInt - 1; 
      kpo kpo = this.e.get(i);
      ((lam)paramViewHolder).a(kpo);
      return;
    } 
    ((lan)paramViewHolder).a();
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return (RecyclerView.ViewHolder)((paramInt == 0) ? new lan(this, LayoutInflater.from(this.d).inflate(2130969266, paramViewGroup, false)) : new lam(this, LayoutInflater.from(this.d).inflate(2130969267, paramViewGroup, false)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */