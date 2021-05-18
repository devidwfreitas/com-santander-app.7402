import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class ltz extends RecyclerView.Adapter<lub> {
  private List<kvp> a;
  
  private luc b;
  
  private String[] c;
  
  private AppCompatActivity d;
  
  public ltz(List<kvp> paramList, AppCompatActivity paramAppCompatActivity) {
    this.a = paramList;
    this.d = paramAppCompatActivity;
  }
  
  public lub a(ViewGroup paramViewGroup, int paramInt) {
    return new lub(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969430, paramViewGroup, false));
  }
  
  public luc a() {
    return (this.b != null) ? this.b : null;
  }
  
  public void a(lub paramlub, int paramInt) {
    kvp kvp = this.a.get(paramInt);
    lub.a(paramlub).setOnClickListener(new lua(this, kvp));
    lub.b(paramlub).setText(mhj.p(kvp.h()));
    if (kvp.e() != null) {
      lub.c(paramlub).setText(mhj.a(kvp.e(), "dd/MM"));
    } else {
      lub.c(paramlub).setText("");
    } 
    lub.d(paramlub).setText(mhj.p(kvp.j()));
    if (kvp.f() != null) {
      lub.e(paramlub).setText(mhj.a(kvp.f()));
    } else {
      lub.e(paramlub).setText("");
    } 
    lub.f(paramlub).setText(kvp.u());
  }
  
  public void a(luc paramluc) {
    this.b = paramluc;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ltz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */