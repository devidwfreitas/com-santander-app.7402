import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class jif extends RecyclerView.Adapter<jih> {
  private List<jdw> a;
  
  private View.OnClickListener b;
  
  public jif(List<jdw> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramList;
    this.b = paramOnClickListener;
  }
  
  public jih a(ViewGroup paramViewGroup, int paramInt) {
    return new jih(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968783, paramViewGroup, false));
  }
  
  public void a(jih paramjih, int paramInt) {
    jdw jdw = this.a.get(paramInt);
    jih.a(paramjih).setText(jdw.b());
    if (!jdw.a()) {
      jih.b(paramjih).setVisibility(4);
      jih.a(paramjih).setTypeface(null, 0);
    } else {
      jih.b(paramjih).setVisibility(0);
      jih.a(paramjih).setTypeface(null, 1);
    } 
    paramjih.itemView.setOnClickListener(new jig(this, paramjih, jdw));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jif.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */