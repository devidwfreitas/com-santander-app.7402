import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosActivity;

public class jur extends gmz {
  public jur(FormaPagamentosActivity paramFormaPagamentosActivity) {}
  
  public void a(gmw paramgmw) {
    ghu ghu = paramgmw.e();
    FormaPagamentosActivity.d(this.a).a(ghu);
    frq.d("Pagamentos_Pagamento_Acao", "SelecionarContaOrigem");
  }
  
  public void a(gmx paramgmx) {
    Conta conta = paramgmx.f();
    FormaPagamentosActivity.d(this.a).a(conta);
    frq.d("Pagamentos_Pagamento_Acao", "SelecionarContaOrigem");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jur.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */