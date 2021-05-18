import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lkt extends RecyclerView.Adapter<lky> {
  private List<lkx> a;
  
  private lkz b;
  
  public lkt(List<lkx> paramList) {
    this.a = paramList;
  }
  
  private void a(lky paramlky, lkx paramlkx) {
    if (paramlkx.a() instanceof kql) {
      kql kql = (kql)paramlkx.a();
      lky.c(paramlky).setOnClickListener(new lkv(this, kql, paramlkx));
      lky.b(paramlky).setText(kql.a().e());
    } else if (paramlkx.a() instanceof ksd) {
      ksd ksd = (ksd)paramlkx.a();
      lky.c(paramlky).setOnClickListener(new lkw(this, ksd, paramlkx));
      lky.b(paramlky).setText(ksd.a().f());
    } 
    lky.a(paramlky).setVisibility(0);
  }
  
  private int b() {
    return 2130969451;
  }
  
  public lky a(ViewGroup paramViewGroup, int paramInt) {
    return new lky(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(b(), paramViewGroup, false));
  }
  
  public void a() {
    if (getItemCount() >= 2) {
      lkx lkx = this.a.remove(1);
      notifyItemRemoved(1);
      this.a.add(0, lkx);
      notifyItemInserted(0);
    } 
  }
  
  public void a(Object paramObject, int paramInt) {
    ((lkx)this.a.get(paramInt)).a(paramObject);
    notifyItemChanged(paramInt);
  }
  
  public void a(lky paramlky, int paramInt) {
    lkx lkx = this.a.get(paramlky.getAdapterPosition());
    if (lkx.b() != null && lkx.b() == lla.ACCOUNT) {
      lky.a(paramlky).setText(paramlky.itemView.getResources().getString(2131296344));
    } else if (lkx.b() != null && lkx.b() == lla.CREDITCARD) {
      lky.a(paramlky).setText(paramlky.itemView.getResources().getString(2131297045));
    } 
    if (lkx.a() != null) {
      a(paramlky, lkx);
      return;
    } 
    lky.a(paramlky).setVisibility(8);
    if (lkx.b() != null && lkx.b() == lla.ACCOUNT) {
      lky.b(paramlky).setText(paramlky.itemView.getResources().getString(2131296344));
    } else if (lkx.b() != null && lkx.b() == lla.CREDITCARD) {
      lky.b(paramlky).setText(paramlky.itemView.getResources().getString(2131297045));
    } 
    lky.c(paramlky).setOnClickListener(new lku(this, lkx));
  }
  
  public void a(lkz paramlkz) {
    this.b = paramlkz;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lkt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */