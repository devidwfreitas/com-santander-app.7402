import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;

public class jmf extends RecyclerView.Adapter<jmi> {
  private ArrayList<jlj> a = new ArrayList<jlj>();
  
  private jmj b;
  
  public jmf(jmj paramjmj) {
    this.b = paramjmj;
  }
  
  public jmi a(ViewGroup paramViewGroup, int paramInt) {
    return new jmi(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968792, paramViewGroup, false));
  }
  
  public void a(ArrayList<jlj> paramArrayList) {
    this.a = paramArrayList;
  }
  
  public void a(jmi paramjmi, int paramInt) {
    jlj jlj = this.a.get(paramInt);
    paramjmi.a.setText(jlj.a());
    paramjmi.b.setText(jlj.b());
    paramjmi.itemView.setOnClickListener(new jmg(this, paramInt));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jmf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */