import android.support.annotation.Nullable;
import com.santander.app.contacorrente.domain.Conta;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hfk extends goe {
  @Element(required = false)
  private String dataPrimeiraParcela;
  
  @Element(required = false)
  private String diaAniversarioPagamento;
  
  @Element(required = false)
  private String formaPagamento;
  
  @Element(required = false)
  private String numeroProposta;
  
  @Element(required = false)
  private String quantidadeParcelas;
  
  @Element(required = false)
  private String valorDividaTotal;
  
  public hfk() {
    miq miq = miq.C();
    setTokenSessao(miq.j());
    setTokenTransacao(miq.f().m());
    setConnUuid(miq.i());
  }
  
  public hfk(@Nullable Conta paramConta, hfx paramhfx, String paramString1, @hfr int paramInt, String paramString2) {
    this();
    if (paramConta != null) {
      setAgencia(paramConta.getAgencia());
      setConta(paramConta.getCuenta());
    } 
    this.dataPrimeiraParcela = paramhfx.F();
    this.diaAniversarioPagamento = paramString1;
    this.formaPagamento = String.valueOf(paramInt);
    this.numeroProposta = paramhfx.i();
    this.quantidadeParcelas = paramString2;
    this.valorDividaTotal = paramhfx.b().b();
  }
  
  public hfk(String paramString, int paramInt) {
    this();
    this.numeroProposta = paramString;
    this.formaPagamento = String.valueOf(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hfk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */