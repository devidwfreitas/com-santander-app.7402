import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;

public class mnh implements mnf {
  private mip a;
  
  private Activity b;
  
  private mng c;
  
  private mqn d;
  
  public mnh(Activity paramActivity, mng parammng) {
    this.b = paramActivity;
    this.c = parammng;
    this.a = (mip)miq.C();
    this.d = new mqn(paramActivity);
  }
  
  private mll b(Conta paramConta) {
    mll mll = new mll();
    mll.a(paramConta.getAgencia());
    mll.b(paramConta.getCuenta());
    mll.setTokenSessao(this.a.j());
    mll.setTokenTransacao(this.a.f().m());
    mll.setConnUuid(this.a.i());
    return mll;
  }
  
  public void a() {
    if (this.a.f().q().a() != null && this.a.f().q().a().size() > 0)
      this.c.a(this.a.f().q().a()); 
  }
  
  public void a(Conta paramConta) {
    this.d.a(new mni(this), b(paramConta));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */