import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lld extends RecyclerView.Adapter<llj> {
  private List<krt> a;
  
  private Context b;
  
  private lll c;
  
  public lld(List<krt> paramList, Context paramContext) {
    this.a = paramList;
    this.b = paramContext;
  }
  
  private void a(llj paramllj) {
    llj.g(paramllj).setVisibility(0);
    llj.a(paramllj).requestFocus();
  }
  
  private void a(llj paramllj, krt paramkrt) {
    if (paramkrt.c() != null && paramkrt.c().equals("S")) {
      llj.b(paramllj).setChecked(true);
      return;
    } 
    if (paramkrt.c() != null && paramkrt.c().equals("N")) {
      llj.c(paramllj).setChecked(true);
      return;
    } 
    b(paramllj);
  }
  
  private boolean a() {
    for (krt krt : this.a) {
      if (krt.c() == null || ((krt.b() == null || krt.b().trim().equals("")) && krt.c() != null && !krt.c().equals(krt.e())))
        return false; 
    } 
    return true;
  }
  
  private void b(llj paramllj) {
    llj.a(paramllj).setText("");
    llj.g(paramllj).setVisibility(8);
  }
  
  public llj a(ViewGroup paramViewGroup, int paramInt) {
    return new llj(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968891, paramViewGroup, false));
  }
  
  public void a(llj paramllj, int paramInt) {
    paramllj.a((Runnable)null);
    krt krt = this.a.get(paramInt);
    llj.a(paramllj).setText(krt.b());
    paramllj.a(new lle(this, krt, paramllj));
    llj.b(paramllj).setOnCheckedChangeListener(null);
    llj.b(paramllj).setOnCheckedChangeListener(new llf(this, krt, paramllj));
    llj.c(paramllj).setOnCheckedChangeListener(null);
    llj.c(paramllj).setOnCheckedChangeListener(new llg(this, paramllj, krt));
    a(paramllj, krt);
    llj.d(paramllj).setOnClickListener(null);
    llj.d(paramllj).setOnClickListener(new llh(this, paramllj));
    llj.e(paramllj).setOnClickListener(new lli(this, paramllj));
    String str = mhj.I(krt.a());
    llj.f(paramllj).setText(str);
  }
  
  public void a(lll paramlll) {
    this.c = paramlll;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */