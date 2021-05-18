import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class gcz extends RecyclerView.Adapter<gdb> {
  private List<gbb> a;
  
  private View.OnClickListener b;
  
  public gcz(List<gbb> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramList;
    this.b = paramOnClickListener;
  }
  
  public gdb a(ViewGroup paramViewGroup, int paramInt) {
    return new gdb(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968787, paramViewGroup, false));
  }
  
  public void a(gdb paramgdb, int paramInt) {
    gbb gbb = this.a.get(paramInt);
    paramgdb.a.setText(gbb.d());
    paramgdb.b.setText(gbb.e());
    if (gbb.e() == null)
      paramgdb.b.setVisibility(8); 
    if (Build.VERSION.SDK_INT < 21)
      paramgdb.c.setVisibility(8); 
    paramgdb.itemView.setOnClickListener(new gda(this, paramgdb, gbb));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */