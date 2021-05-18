import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class llq extends RecyclerView.Adapter<llt> {
  private List<ksd> a;
  
  private boolean b;
  
  private llu c;
  
  public llq(List<ksd> paramList, boolean paramBoolean) {
    this.a = paramList;
    this.b = paramBoolean;
  }
  
  public llt a(ViewGroup paramViewGroup, int paramInt) {
    return new llt(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969454, paramViewGroup, false));
  }
  
  public void a(llt paramllt, int paramInt) {
    llt.a(paramllt).setOnClickListener(null);
    if (paramllt.getAdapterPosition() == getItemCount() - 1) {
      llt.b(paramllt).setVisibility(4);
    } else {
      llt.b(paramllt).setVisibility(0);
    } 
    if (paramllt.getAdapterPosition() > this.a.size() - 1) {
      llt.c(paramllt).setImageResource(0);
      llt.d(paramllt).setText(paramllt.itemView.getResources().getString(2131297608));
      llt.a(paramllt).setOnClickListener(new llr(this));
      return;
    } 
    ksd ksd = this.a.get(paramllt.getAdapterPosition());
    llt.a(paramllt).setOnClickListener(new lls(this, ksd));
    if (mgi.b(ksd.a().c()) == 0) {
      llt.c(paramllt).setImageResource(2130838681);
    } else if (mgi.b(ksd.a().c()) == 1) {
      llt.c(paramllt).setImageResource(2130838540);
    } else {
      llt.c(paramllt).setImageResource(0);
    } 
    llt.d(paramllt).setText(ksd.a().f());
  }
  
  public void a(llu paramllu) {
    this.c = paramllu;
  }
  
  public int getItemCount() {
    return this.b ? (this.a.size() + 1) : this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */