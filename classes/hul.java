import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hul extends goe {
  @Element(required = false)
  private String codigoRenegociacao;
  
  @Element(required = false)
  private String contratacaoComSeguro;
  
  @Element(required = false)
  private String diaDoVencimentoMensal;
  
  @Element(required = false)
  private String identificacaoProduto;
  
  @Element(required = false)
  private String quantidadeMaximaParcelas;
  
  @Element(required = false)
  private String quantidadeMinimaParcelas;
  
  @Element(required = false)
  private String quantidadeParcelas;
  
  @Element(required = false)
  private String valorCoberturaComSeguro;
  
  @Element(required = false)
  private String valorLimiteRisco;
  
  @Element(required = false)
  private String valorTotalDivida;
  
  public hul(int paramInt1, int paramInt2, boolean paramBoolean, hus paramhus) {
    String str;
    miq miq = miq.C();
    setTokenSessao(miq.j());
    setTokenTransacao(miq.f().m());
    setConnUuid(miq.i());
    setConta(miq.f().g());
    this.diaDoVencimentoMensal = String.valueOf(paramInt1);
    this.quantidadeParcelas = String.valueOf(paramInt2);
    if (paramBoolean) {
      str = "S";
    } else {
      str = "N";
    } 
    this.contratacaoComSeguro = str;
    this.identificacaoProduto = paramhus.identificacaoProduto;
    this.codigoRenegociacao = paramhus.codigoRenegociacao;
    this.quantidadeMaximaParcelas = paramhus.quantidadeMaximaParcelas;
    this.quantidadeMinimaParcelas = paramhus.quantidadeMinimaParcelas;
    this.valorCoberturaComSeguro = paramhus.valorCoberturaComSeguro;
    this.valorLimiteRisco = paramhus.valorLimiteRisco;
    this.valorTotalDivida = paramhus.valorTotalDivida;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hul.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */