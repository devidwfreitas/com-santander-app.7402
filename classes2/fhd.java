import android.widget.TabHost;
import com.santander.app.ContaMovementActivity;

public class fhd implements TabHost.OnTabChangeListener {
  public fhd(ContaMovementActivity paramContaMovementActivity) {}
  
  public void onTabChanged(String paramString) {
    ContaMovementActivity.a(this.a, ContaMovementActivity.c(this.a).getCurrentTab());
    if (ContaMovementActivity.d(this.a) == 0) {
      hau.a().e(0);
      frq.d("ContaCorrente_Acao", "TipoLancTodos");
      ContaMovementActivity.a(this.a, ContaMovementActivity.e(this.a));
      ContaMovementActivity.a(this.a, ContaMovementActivity.f(this.a));
      ContaMovementActivity.g(this.a);
      return;
    } 
    if (ContaMovementActivity.d(this.a) == 1) {
      hau.a().e(2);
      frq.d("ContaCorrente_Acao", "TipoLancDebito");
      ContaMovementActivity.a(this.a, ContaMovementActivity.h(this.a));
      ContaMovementActivity.a(this.a, ContaMovementActivity.i(this.a));
      ContaMovementActivity.g(this.a);
      return;
    } 
    if (ContaMovementActivity.d(this.a) == 2) {
      hau.a().e(1);
      frq.d("ContaCorrente_Acao", "TipoLancCredito");
      ContaMovementActivity.a(this.a, ContaMovementActivity.j(this.a));
      ContaMovementActivity.a(this.a, ContaMovementActivity.k(this.a));
      ContaMovementActivity.g(this.a);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */