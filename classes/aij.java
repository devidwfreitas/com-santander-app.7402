import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class aij extends RecyclerView.Adapter<aik> {
  private Context a;
  
  private Activity b;
  
  private ajv c;
  
  private List<ajw> d;
  
  public aij(ajv paramajv, Activity paramActivity) {
    this.c = paramajv;
    this.b = paramActivity;
    this.d = paramajv.j();
  }
  
  public aik a(ViewGroup paramViewGroup, int paramInt) {
    View view = LayoutInflater.from(paramViewGroup.getContext()).inflate(agi.remanejamento_list_item_ajuste_manual, paramViewGroup, false);
    this.a = paramViewGroup.getContext();
    return new aik(this, view);
  }
  
  public void a(aik paramaik, int paramInt) {
    this.d.get(paramInt);
  }
  
  public int getItemCount() {
    return this.d.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aij.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */