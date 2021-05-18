import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lhm extends RecyclerView.Adapter<lhn> {
  private List<kpw> a;
  
  private double b;
  
  public lhm(kpu paramkpu) {
    this.a = paramkpu.b();
    try {
      this.b = Double.parseDouble(paramkpu.a());
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  public lhn a(ViewGroup paramViewGroup, int paramInt) {
    return new lhn(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969426, paramViewGroup, false));
  }
  
  public void a(lhn paramlhn, int paramInt) {
    kpw kpw = this.a.get(paramInt);
    lhn.a(paramlhn).setEnabled(false);
    lhn.a(paramlhn).setMax(100);
    lhn.a(paramlhn).setProgress(Integer.valueOf(kpw.d()).intValue());
    lhn.b(paramlhn).setText(mhj.s(kpw.b()));
    lhn.c(paramlhn).setText(mhj.p(kpw.c()));
    lhn.d(paramlhn).setText(String.format("%s%%", new Object[] { kpw.d() }));
    double d = this.b;
    String str = mhj.a(Double.valueOf(Double.parseDouble(kpw.d()) * d / 100.0D));
    lhn.e(paramlhn).setText(str);
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */