import com.santander.app.SaldoActivity;
import com.santander.app.contacorrente.domain.SaldoDetalhado;

public class fni implements gwc {
  public fni(SaldoActivity paramSaldoActivity) {}
  
  public void a(SaldoDetalhado paramSaldoDetalhado) {
    SaldoActivity.a(this.a, paramSaldoDetalhado);
    SaldoActivity.b(this.a);
    SaldoActivity.c(this.a);
  }
  
  public void b(SaldoDetalhado paramSaldoDetalhado) {
    SaldoActivity.c(this.a);
    String str = null;
    if (paramSaldoDetalhado != null)
      str = paramSaldoDetalhado.getMensagemRetorno(); 
    SaldoActivity.a(this.a, str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fni.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */