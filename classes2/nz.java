import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.List;

public class nz extends RecyclerView.Adapter<oa> {
  private List<abz> a;
  
  private Context b;
  
  public nz(List<abz> paramList, Context paramContext) {
    this.a = paramList;
    this.b = paramContext;
  }
  
  public oa a(ViewGroup paramViewGroup, int paramInt) {
    return new oa(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_notas_gurpos, paramViewGroup, false));
  }
  
  public void a(oa paramoa, int paramInt) {
    boolean bool;
    String str = ((abz)this.a.get(paramInt)).g();
    paramoa.a.setText(str);
    TextView textView = paramoa.a;
    if (str.isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    textView.setVisibility(bool);
    paramoa.b.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager(this.b));
    paramoa.b.setAdapter(new ob(((abz)this.a.get(paramInt)).d()));
    paramoa.b.setNestedScrollingEnabled(false);
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */