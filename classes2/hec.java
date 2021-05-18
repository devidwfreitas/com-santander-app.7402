import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.dpp.DPPPreenchimentoActivity;

public class hec implements nfd {
  public hec(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void a(int paramInt) {
    String str;
    if (DPPPreenchimentoActivity.a(this.a)) {
      str = "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Acao";
    } else {
      str = "Investimentos_Poupanca_DepositoProgramado_Terceiros_Acao";
    } 
    frq.d(str, "SelecionarContaOrigem");
    DPPPreenchimentoActivity.r(this.a).setAutorizado(((Conta)DPPPreenchimentoActivity.o(this.a).g().get(paramInt)).getAutorizado());
    DPPPreenchimentoActivity.r(this.a).setCpf(((Conta)DPPPreenchimentoActivity.o(this.a).g().get(paramInt)).getCpf());
    DPPPreenchimentoActivity.r(this.a).setAgencia(((Conta)DPPPreenchimentoActivity.o(this.a).g().get(paramInt)).getAgencia());
    DPPPreenchimentoActivity.r(this.a).setCuenta(((Conta)DPPPreenchimentoActivity.o(this.a).g().get(paramInt)).getCuenta());
    DPPPreenchimentoActivity.r(this.a).setBanco(((Conta)DPPPreenchimentoActivity.o(this.a).g().get(paramInt)).getBanco());
    (new hed(this.a)).execute((Object[])new Void[0]);
  }
  
  public void b(int paramInt) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */