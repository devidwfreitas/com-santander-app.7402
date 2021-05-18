import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class jhr extends RecyclerView.Adapter<jhs> {
  private List<jdy> a;
  
  public jhr(List<jdy> paramList) {
    this.a = paramList;
  }
  
  public jhs a(ViewGroup paramViewGroup, int paramInt) {
    return new jhs(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968784, paramViewGroup, false));
  }
  
  public void a(jhs paramjhs, int paramInt) {
    jdy jdy = this.a.get(paramInt);
    jhs.a(paramjhs).setText(jdy.a());
    jhs.b(paramjhs).setText(jdy.b());
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */