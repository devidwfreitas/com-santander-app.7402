import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.HashMap;

public class ama extends RecyclerView.Adapter<amb> {
  private HashMap<String, String> a;
  
  public ama(HashMap<String, String> paramHashMap) {
    this.a = paramHashMap;
  }
  
  public amb a(ViewGroup paramViewGroup, int paramInt) {
    return new amb(LayoutInflater.from(paramViewGroup.getContext()).inflate(alu.santander_adapter_comprovante, paramViewGroup, false));
  }
  
  public void a(amb paramamb, int paramInt) {
    String str = this.a.keySet().toArray()[paramInt].toString();
    paramamb.a(str, this.a.get(str));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ama.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */