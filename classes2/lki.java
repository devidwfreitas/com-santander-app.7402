import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lki extends RecyclerView.Adapter<lkk> {
  private List<kpw> a;
  
  private lkl b;
  
  public lki(List<kpw> paramList) {
    this.a = paramList;
  }
  
  public lkk a(ViewGroup paramViewGroup, int paramInt) {
    return new lkk(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969439, paramViewGroup, false));
  }
  
  public void a(int paramInt) {
    this.a.remove(paramInt);
    notifyDataSetChanged();
  }
  
  public void a(List<kpw> paramList) {
    this.a = paramList;
    notifyDataSetChanged();
  }
  
  public void a(kpw paramkpw) {
    boolean bool;
    this.a.add(paramkpw);
    if (this.a.size() > 0) {
      bool = this.a.size() - 1;
    } else {
      bool = false;
    } 
    notifyItemInserted(bool);
  }
  
  public void a(kpw paramkpw, int paramInt) {
    this.a.set(paramInt, paramkpw);
    notifyItemChanged(paramInt);
  }
  
  public void a(lkk paramlkk, int paramInt) {
    kpw kpw = this.a.get(paramlkk.getAdapterPosition());
    lkk.a(paramlkk).setText(kpw.b());
    lkk.b(paramlkk).setText(String.format("%s%%", new Object[] { kpw.d() }));
    lkk.c(paramlkk).setText(kpw.c());
    lkk.d(paramlkk).setText(mhj.a(kpw.a()));
    lkk.e(paramlkk).setOnClickListener(null);
    lkk.e(paramlkk).setOnClickListener(new lkj(this, paramlkk));
  }
  
  public void a(lkl paramlkl) {
    this.b = paramlkl;
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */