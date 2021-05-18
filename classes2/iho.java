import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class iho extends RecyclerView.Adapter<ihq> {
  private List<igl> a;
  
  private View.OnClickListener b;
  
  public iho(List<igl> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramList;
    this.b = paramOnClickListener;
  }
  
  public ihq a(ViewGroup paramViewGroup, int paramInt) {
    return new ihq(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968791, paramViewGroup, false));
  }
  
  public void a(ihq paramihq, int paramInt) {
    igl igl = this.a.get(paramInt);
    paramihq.a.setText(igl.b());
    paramihq.b.setText(igl.c());
    paramihq.c.setText(String.valueOf(igl.a()));
    paramihq.itemView.setOnClickListener(new ihp(this, paramihq, igl));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */