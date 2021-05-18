import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class mpm extends RecyclerView.Adapter<mpp> {
  private List<mlr> a;
  
  private View.OnClickListener b;
  
  private View.OnLongClickListener c;
  
  public mpm(List<mlr> paramList, View.OnClickListener paramOnClickListener, View.OnLongClickListener paramOnLongClickListener) {
    this.a = paramList;
    this.b = paramOnClickListener;
    this.c = paramOnLongClickListener;
  }
  
  public mpp a(ViewGroup paramViewGroup, int paramInt) {
    return new mpp(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968789, paramViewGroup, false));
  }
  
  public void a(mpp parammpp, int paramInt) {
    mlr mlr = this.a.get(paramInt);
    parammpp.a.setText(mlr.c());
    parammpp.b.setText(mlr.f());
    parammpp.c.setText(naj.f(mlr.g()));
    if (Build.VERSION.SDK_INT < 21)
      parammpp.d.setVisibility(8); 
    parammpp.itemView.setOnLongClickListener(new mpn(this, parammpp, mlr));
    parammpp.itemView.setOnClickListener(new mpo(this, parammpp, mlr));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */