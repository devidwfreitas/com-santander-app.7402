import android.content.Context;
import android.content.Intent;
import com.santander.app.PagamentoFacturaCartoesActivity;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;
import com.santander.app.faturas.activity.FaturasActivity;

class hbw extends hbt {
  private final mir b = miq.C().f();
  
  hbw(hbv paramhbv) {
    super(paramhbv);
  }
  
  private void a(Runnable paramRunnable) {
    if (this.b.s().i()) {
      paramRunnable.run();
      return;
    } 
    mzp mzp1 = mzp.RELOAD_CARTOES;
    mzp mzp2 = mzp.RELOAD_CARTOES_DESBLOQUEIO;
    mzn mzn = new mzn();
    hby hby = new hby(this, paramRunnable);
    mzn.a(new mzp[] { mzp1, mzp2 }, hby);
  }
  
  private void b() {
    frq.d("DeepLink_CartoesParcelamentoFatura", "Elegivel");
  }
  
  private void c() {
    frq.d("DeepLink_CartoesParcelamentoFatura", "NaoElegivel");
  }
  
  private void c(Context paramContext) {
    hbu hbu;
    if (this.b.s().h()) {
      d();
      hbu = new hbu(new Intent(paramContext, FaturasActivity.class));
    } else {
      e();
      hbu = new hbu(paramContext.getString(2131297121));
    } 
    this.a.a(paramContext, hbu);
  }
  
  private void d() {
    frq.d("DeepLink_CartoesConsultaFatura", "Elegivel");
  }
  
  private void d(Context paramContext) {
    hbu hbu;
    if (a()) {
      b(paramContext);
      return;
    } 
    if (this.b.s().h()) {
      f();
      hbu = new hbu(new Intent(paramContext, PagamentoFacturaCartoesActivity.class));
    } else {
      g();
      hbu = new hbu(paramContext.getString(2131297121));
    } 
    this.a.a(paramContext, hbu);
  }
  
  private void e() {
    frq.d("DeepLink_CartoesConsultaFatura", "NaoElegivel");
  }
  
  private void e(Context paramContext) {
    hbu hbu;
    if (a()) {
      b(paramContext);
      return;
    } 
    if (this.b.s().h()) {
      b();
      hbu = new hbu(new Intent(paramContext, ParcelamentoFaturaActivity.class));
    } else {
      c();
      hbu = new hbu(paramContext.getString(2131297121));
    } 
    this.a.a(paramContext, hbu);
  }
  
  private void f() {
    frq.d("DeepLink_CartoesPagamentoFatura", "Elegivel");
  }
  
  private void g() {
    frq.d("DeepLink_CartoesPagamentoFatura", "NaoElegivel");
  }
  
  public void a(Context paramContext, hbp paramhbp) {
    a(new hbx(this, paramhbp, paramContext));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */