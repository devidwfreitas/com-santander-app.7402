import android.os.Handler;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lik extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  public static final int a = 1;
  
  public static final int b = 2;
  
  private List<ktq> c;
  
  private lir d;
  
  private RecyclerView e;
  
  public lik(List<ktq> paramList, RecyclerView paramRecyclerView) {
    this.c = paramList;
    this.e = paramRecyclerView;
  }
  
  public void a(lir paramlir) {
    this.d = paramlir;
  }
  
  public int getItemCount() {
    return (this.c != null) ? (this.c.size() + 1) : 1;
  }
  
  public int getItemViewType(int paramInt) {
    return (paramInt == 0) ? 1 : 2;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    if (paramViewHolder instanceof liq) {
      liq liq = (liq)paramViewHolder;
      ktq ktq = this.c.get(paramViewHolder.getAdapterPosition() - 1);
      liq.a(liq).setOnClickListener(null);
      liq.b(liq).setOnClickListener(null);
      liq.b(liq).setClickable(true);
      liq.c(liq).setImageResource(ktq.c());
      liq.d(liq).setText(ktq.e());
      liq.e(liq).setText(ktq.k());
      (new Handler()).postDelayed(new lil(this, liq, ktq), 100L);
      if (ktq.j()) {
        liq.a(liq).setOnClickListener(new lim(this, ktq));
        liq.a(liq).setVisibility(0);
      } else {
        liq.a(liq).setVisibility(8);
      } 
      liq.g(liq).setOnExpansionUpdateListener(null);
      if (ktq.a()) {
        liq.g(liq).b(false);
        liq.h(liq).setRotationX(180.0F);
      } else {
        liq.g(liq).c(false);
        liq.h(liq).setRotationX(0.0F);
      } 
      liq.b(liq).setOnClickListener(new lin(this, liq, ktq));
      liq.g(liq).setOnExpansionUpdateListener(new lio(this, liq, paramViewHolder));
    } 
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return (RecyclerView.ViewHolder)((paramInt == 2) ? new liq(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969446, paramViewGroup, false)) : ((paramInt == 1) ? new lip(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969445, paramViewGroup, false)) : null));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */