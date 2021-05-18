import android.app.Activity;
import com.santander.app.perfil.activity.InvestimentosNoAtmActivity;

public class kbh extends gne<kca, Void, kbu> {
  private kbu b;
  
  private jrn c;
  
  private Activity d;
  
  public kbh(InvestimentosNoAtmActivity paramInvestimentosNoAtmActivity, jrn paramjrn, Activity paramActivity) {
    this.c = paramjrn;
    this.d = paramActivity;
  }
  
  protected kbu a(kca... paramVarArgs) {
    kca kca1 = new kca();
    kca1.setConnUuid(this.a.v.i());
    kca1.setTokenTransacao(this.a.v.f().m());
    kca1.setTokenSessao(this.a.v.j());
    kca1.a("0033" + InvestimentosNoAtmActivity.h(this.a).getAgencia() + InvestimentosNoAtmActivity.h(this.a).getCuenta());
    this.b = (new gog<kca, kbu>()).a(kca1, kbu.class, has.a(), "statusVisualizacaoInvestimentosATM", "return");
    return this.b;
  }
  
  protected void a() {
    super.a();
    InvestimentosNoAtmActivity.a(this.a, mxn.b((Activity)this.a));
  }
  
  protected void a(kbu paramkbu) {
    super.a(paramkbu);
    if (InvestimentosNoAtmActivity.i(this.a) != null && InvestimentosNoAtmActivity.i(this.a).isShowing()) {
      InvestimentosNoAtmActivity.i(this.a).cancel();
      InvestimentosNoAtmActivity.a(this.a, null);
    } 
    if (paramkbu == null) {
      hat.d().a(this.a.i, null, true, true);
      return;
    } 
    if (paramkbu.getConfirmacao() != null && paramkbu.getConfirmacao().equalsIgnoreCase("ERRO")) {
      hat.d().a(this.a.i, paramkbu.getMensagemErro());
      return;
    } 
    InvestimentosNoAtmActivity.a(this.a, paramkbu);
    InvestimentosNoAtmActivity.j(this.a).a(InvestimentosNoAtmActivity.h(this.a).getAgencia());
    InvestimentosNoAtmActivity.j(this.a).b(InvestimentosNoAtmActivity.h(this.a).getCuenta());
    this.a.v.f().i(InvestimentosNoAtmActivity.j(this.a).getTokenTransacao());
    InvestimentosNoAtmActivity.a(this.a, this.a.a(InvestimentosNoAtmActivity.j(this.a).g(), InvestimentosNoAtmActivity.j(this.a).c()));
    InvestimentosNoAtmActivity.k(this.a).setText(InvestimentosNoAtmActivity.j(this.a).c());
    this.c.a(Integer.valueOf(InvestimentosNoAtmActivity.g(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */