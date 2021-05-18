import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class laq extends RecyclerView.Adapter<lat> {
  private las a;
  
  private List<kph> b;
  
  private Context c;
  
  public laq(List<kph> paramList) {
    this.b = paramList;
  }
  
  public lat a(ViewGroup paramViewGroup, int paramInt) {
    this.c = paramViewGroup.getContext();
    return new lat(((LayoutInflater)this.c.getSystemService("layout_inflater")).inflate(2130969268, paramViewGroup, false));
  }
  
  public void a(las paramlas) {
    this.a = paramlas;
  }
  
  public void a(lat paramlat, int paramInt) {
    kph kph = this.b.get(paramInt);
    paramlat.e.setText(kph.a());
    paramlat.d.setText(this.c.getString(2131298295, new Object[] { kph.b() }));
    paramlat.b.setText(this.c.getString(2131296536, new Object[] { kph.i().b() }));
    paramlat.c.setText(this.c.getString(2131298423, new Object[] { kph.f() }));
    paramlat.itemView.setOnClickListener(new lar(this, kph));
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\laq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */