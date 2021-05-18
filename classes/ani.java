import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import br.com.santander.uisdk.error.SantanderErrorItem;
import java.util.ArrayList;
import java.util.List;

public class ani extends RecyclerView.Adapter<anj> {
  private List<SantanderErrorItem> a = new ArrayList<SantanderErrorItem>();
  
  public anj a(ViewGroup paramViewGroup, int paramInt) {
    return new anj(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(alu.santander_adapter_error_item, paramViewGroup, false));
  }
  
  public void a(anj paramanj, int paramInt) {
    SantanderErrorItem santanderErrorItem = this.a.get(paramInt);
    anj.a(paramanj).setImageResource(santanderErrorItem.a());
    anj.b(paramanj).setText(santanderErrorItem.c());
    anj.c(paramanj).setText(santanderErrorItem.b());
  }
  
  void a(SantanderErrorItem paramSantanderErrorItem) {
    this.a.add(paramSantanderErrorItem);
    notifyDataSetChanged();
  }
  
  public void a(List<SantanderErrorItem> paramList) {
    this.a = paramList;
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ani.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */