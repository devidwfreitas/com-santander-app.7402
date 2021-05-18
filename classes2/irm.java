import android.support.annotation.NonNull;
import android.util.Log;
import org.json.JSONObject;

public class irm implements irr {
  private static final String d = "HomeLogadaRepository";
  
  private iru a = new iru();
  
  private mip b = (mip)miq.C();
  
  private gwa c = new gwe();
  
  private void a(@NonNull Runnable paramRunnable) {
    if (this.c.a()) {
      this.a.e(false);
      this.c.a(new iro(this, paramRunnable));
      return;
    } 
    this.a.e(true);
    paramRunnable.run();
  }
  
  private void a(mzp[] paramArrayOfmzp) {
    int j = paramArrayOfmzp.length;
    for (int i = 0; i < j; i++) {
      mzp mzp1 = paramArrayOfmzp[i];
      this.a.e(true);
      if (mzp1.equals(mzp.RELOAD_CONTA)) {
        this.a.i(true);
        this.a.g(true);
        this.a.h(true);
      } 
      if (mzp1.equals(mzp.RELOAD_CARTOES))
        this.a.c(true); 
      if (mzp1.equals(mzp.RELOAD_CARTOES_DESBLOQUEIO))
        this.a.d(true); 
      if (mzp1.equals(mzp.RELOAD_EMPRESTIMOS))
        hyb.j().h(); 
      if (mzp1.equals(mzp.RELOAD_INVESTIMENTO)) {
        this.a.i(true);
        this.a.g(true);
      } 
      if (mzp1.equals(mzp.RELOAD_POUPANCA))
        this.a.h(true); 
      hyb.j().h();
    } 
  }
  
  public void a(int paramInt, irt paramirt) {
    try {
      JSONObject jSONObject = new JSONObject(String.format("{ \"account\": { \"checkingAccountIndex\":\"%d\" } }", new Object[] { Integer.valueOf(paramInt) }));
      ir ir = gnp.a().a("loan/v1/check-elegibility", im.POST, jSONObject, true);
      gnz.a().d().a(ir, new irp(this, paramirt));
      return;
    } catch (Exception exception) {
      Log.e("HomeLogadaRepository", exception.toString());
      return;
    } 
  }
  
  public void a(iph paramiph) {
    if (paramiph != null) {
      this.b.f().a(paramiph);
      return;
    } 
    Log.e("HomeLogadaRepository", "Model null");
    frq.d("Outros_Reload_Home_Tratamento_Excecao", "Model null");
  }
  
  public void a(mzp[] paramArrayOfmzp, foh paramfoh) {
    a(paramArrayOfmzp);
    this.a.setTokenSessao(this.b.j());
    this.a.setConnUuid(this.b.i());
    a(new irn(this, paramfoh));
  }
  
  public void b(int paramInt, irt paramirt) {
    try {
      JSONObject jSONObject = new JSONObject(String.format("{ \"account\": { \"checkingAccountIndex\":\"%d\" } }", new Object[] { Integer.valueOf(paramInt) }));
      ir ir = gnp.a().a("loan/v1/check-elegibility-ir", im.POST, jSONObject, true);
      gnz.a().d().a(ir, new irq(this, paramirt));
      return;
    } catch (Exception exception) {
      Log.e("HomeLogadaRepository", exception.toString());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\irm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */