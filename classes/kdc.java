import java.io.Serializable;
import org.simpleframework.xml.Element;

public class kdc extends gnb implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String banco;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String dataContratacao;
  
  @Element(required = false)
  private String dataInicioRenda;
  
  @Element(required = false)
  private String dataInicioVigencia;
  
  @Element(required = false)
  private String dataNascimento;
  
  @Element(required = false)
  private String diaPagamento;
  
  @Element(required = false)
  private String formaCobranca;
  
  @Element(required = false)
  private String nomeProduto;
  
  @Element(required = false)
  private String numeroBeneficio;
  
  @Element(required = false)
  private String numeroCertificado;
  
  @Element(required = false)
  private String periodicidade;
  
  @Element(required = false)
  private String situacaoPlano;
  
  @Element(required = false)
  private String tipoPlano;
  
  @Element(required = false)
  private String tipoRenda;
  
  @Element(required = false)
  private String valorBeneficio;
  
  @Element(required = false)
  private String valorContribuicaoPremio;
  
  @Element(required = false)
  private String valorSaldoBruto;
  
  public String a() {
    return this.agencia;
  }
  
  public String b() {
    return this.banco;
  }
  
  public String c() {
    return this.conta;
  }
  
  public String d() {
    return this.dataContratacao;
  }
  
  public String e() {
    return this.dataInicioRenda;
  }
  
  public String f() {
    return this.dataInicioVigencia;
  }
  
  public String g() {
    return this.dataNascimento;
  }
  
  public String h() {
    return this.diaPagamento;
  }
  
  public String i() {
    return this.formaCobranca;
  }
  
  public String j() {
    return this.nomeProduto;
  }
  
  public String k() {
    return this.numeroBeneficio;
  }
  
  public String l() {
    return this.numeroCertificado;
  }
  
  public String m() {
    return this.periodicidade;
  }
  
  public String n() {
    return this.situacaoPlano;
  }
  
  public String o() {
    return this.tipoPlano;
  }
  
  public String p() {
    return this.tipoRenda;
  }
  
  public String q() {
    return this.valorBeneficio;
  }
  
  public String r() {
    return this.valorContribuicaoPremio;
  }
  
  public String s() {
    return this.valorSaldoBruto;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kdc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */