import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class lud extends RecyclerView.Adapter<luf> {
  private List<kvq> a;
  
  private View b;
  
  private lug c;
  
  public lud(List<kvq> paramList) {
    this.a = paramList;
  }
  
  public luf a(ViewGroup paramViewGroup, int paramInt) {
    this.b = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969489, paramViewGroup, false);
    return new luf(this, this.b);
  }
  
  public void a(luf paramluf, int paramInt) {
    kvq kvq = this.a.get(paramInt);
    luf.a(paramluf).setText(kvq.c());
    luf.b(paramluf).setOnClickListener(new lue(this, paramInt));
  }
  
  public void a(lug paramlug) {
    this.c = paramlug;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */