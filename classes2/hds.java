import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hds implements nfd {
  public hds(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void a(int paramInt) {
    String str;
    if (DPPPreenchimentoActivity.a(this.a)) {
      str = "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Acao";
    } else {
      str = "Investimentos_Poupanca_DepositoProgramado_Terceiros_Acao";
    } 
    frq.d(str, "SelecionarContaDestino");
    if (DPPPreenchimentoActivity.p(this.a).getCount() - 1 == paramInt) {
      DPPPreenchimentoActivity.b(this.a, true);
    } else {
      DPPPreenchimentoActivity.b(this.a, false);
    } 
    DPPPreenchimentoActivity.m(this.a).c(((ftl)DPPPreenchimentoActivity.p(this.a).g().get(paramInt)).l());
    DPPPreenchimentoActivity.m(this.a).f(((ftl)DPPPreenchimentoActivity.p(this.a).g().get(paramInt)).m());
    (new hed(this.a)).execute((Object[])new Void[0]);
    DPPPreenchimentoActivity.a(this.a, this.a.v.f().q().a());
  }
  
  public void b(int paramInt) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */