import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class ob extends RecyclerView.Adapter<oc> {
  private List<acc> a;
  
  public ob(List<acc> paramList) {
    this.a = paramList;
  }
  
  public oc a(ViewGroup paramViewGroup, int paramInt) {
    return new oc(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_notas_item, paramViewGroup, false));
  }
  
  public void a(oc paramoc, int paramInt) {
    String str1 = ((acc)this.a.get(paramInt)).a();
    String str2 = str1 + " " + aat.a(this.a.get(paramInt));
    paramoc.a.setText((CharSequence)aat.c(str2, str1));
    Log.e("###", "bold: " + str1 + " full: " + str2 + paramoc.a.getText());
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */