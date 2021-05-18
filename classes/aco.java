import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;

public class aco extends RecyclerView.Adapter<acq> {
  private ArrayList<ou> a;
  
  private acy b;
  
  private acg c;
  
  public aco(ArrayList<ou> paramArrayList, acy paramacy, acg paramacg) {
    this.a = paramArrayList;
    this.b = paramacy;
    this.c = paramacg;
  }
  
  public acq a(ViewGroup paramViewGroup, int paramInt) {
    return new acq(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_item_carteira, paramViewGroup, false));
  }
  
  public void a(acq paramacq, int paramInt) {
    paramacq.b.setText(aat.b(((ou)this.a.get(paramInt)).e()));
    paramacq.c.setText(aat.b(((ou)this.a.get(paramInt)).h()));
    paramacq.a.setText(aat.a(((ou)this.a.get(paramInt)).m(), ((ou)this.a.get(paramInt)).d()));
    paramacq.d.setOnClickListener(new acp(this, paramInt));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aco.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */