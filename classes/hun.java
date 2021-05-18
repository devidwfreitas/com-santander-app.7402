import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hun extends goe {
  @Element(required = false)
  protected String codigoRenegociacao;
  
  @Element(required = false)
  protected String identificacaoProduto;
  
  @Element(required = false)
  protected String objSerial;
  
  public hun(hus paramhus) {
    miq miq = miq.C();
    setTokenSessao(miq.j());
    setTokenTransacao(miq.f().m());
    setConnUuid(miq.i());
    setAgencia(miq.f().f());
    setConta(miq.f().g());
    this.codigoRenegociacao = paramhus.codigoRenegociacao;
    this.identificacaoProduto = paramhus.identificacaoProduto;
    this.objSerial = paramhus.objSerial;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */