import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class lag extends RecyclerView.Adapter<laj> {
  private lai a;
  
  private List<kom> b = new ArrayList<kom>();
  
  public laj a(ViewGroup paramViewGroup, int paramInt) {
    return new laj(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969254, paramViewGroup, false));
  }
  
  public void a(List<kom> paramList) {
    this.b = paramList;
    notifyDataSetChanged();
  }
  
  public void a(lai paramlai) {
    this.a = paramlai;
  }
  
  public void a(laj paramlaj, int paramInt) {
    kom kom = this.b.get(paramInt);
    laj.a(paramlaj).setText(kom.a());
    laj.b(paramlaj).setOnClickListener(new lah(this, kom));
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */