import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;

public class mmq implements mmo {
  private Activity a;
  
  private mmp b;
  
  private mqn c;
  
  private mip d;
  
  public mmq(Activity paramActivity, mmp parammmp) {
    this.a = paramActivity;
    this.b = parammmp;
    this.c = new mqn(paramActivity);
    this.d = (mip)miq.C();
  }
  
  private mla b(mlr parammlr) {
    mla mla = new mla();
    mla.c(parammlr.e());
    mla.a(parammlr.a());
    mla.b(parammlr.b());
    mla.setConnUuid(this.d.i());
    mla.setTokenSessao(this.d.j());
    return mla;
  }
  
  private mlc b(Conta paramConta, mlr parammlr) {
    mlc mlc = new mlc();
    mlc.a(paramConta.getAgencia());
    mlc.b(naj.a(paramConta.getCuenta(), 12));
    mlc.e(parammlr.e());
    mlc.c(parammlr.a());
    mlc.d(parammlr.b());
    mlc.setConnUuid(this.d.i());
    mlc.setTokenSessao(this.d.j());
    mlc.setTokenTransacao(this.d.f().m());
    return mlc;
  }
  
  public void a(Conta paramConta, mlr parammlr) {
    this.c.a(new mms(this), b(paramConta, parammlr));
  }
  
  public void a(mlr parammlr) {
    this.c.a(new mmr(this), b(parammlr));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mmq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */