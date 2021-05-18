import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class gcw extends RecyclerView.Adapter<gcy> {
  private List<gbd> a;
  
  private View.OnClickListener b;
  
  public gcw(List<gbd> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramList;
    this.b = paramOnClickListener;
  }
  
  public gcy a(ViewGroup paramViewGroup, int paramInt) {
    return new gcy(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968782, paramViewGroup, false));
  }
  
  public void a(gcy paramgcy, int paramInt) {
    gbd gbd = this.a.get(paramInt);
    paramgcy.a.setText(gbd.d());
    if (Build.VERSION.SDK_INT < 21)
      paramgcy.b.setVisibility(8); 
    paramgcy.itemView.setOnClickListener(new gcx(this, paramgcy, gbd));
  }
  
  public void a(List<gbd> paramList) {
    this.a.clear();
    this.a.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */