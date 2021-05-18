import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosDDAActivity;

public class juz extends gmz {
  public juz(FormaPagamentosDDAActivity paramFormaPagamentosDDAActivity) {}
  
  public void a(gmw paramgmw) {
    ghu ghu = paramgmw.e();
    FormaPagamentosDDAActivity.d(this.a).a(ghu);
    FormaPagamentosDDAActivity.d(this.a).a(paramgmw);
    frq.d("Pagamentos_Pagamento_Acao", "SelecionarContaOrigem");
  }
  
  public void a(gmx paramgmx) {
    Conta conta = paramgmx.f();
    FormaPagamentosDDAActivity.d(this.a).a(conta);
    FormaPagamentosDDAActivity.d(this.a).a(paramgmx);
    frq.d("Pagamentos_Pagamento_Acao", "SelecionarContaOrigem");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\juz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */