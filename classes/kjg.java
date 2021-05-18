import java.io.Serializable;
import org.simpleframework.xml.Element;

public class kjg extends gnb implements Serializable {
  @Element(required = false)
  private String agenciaDebito = "";
  
  @Element(required = false)
  private String agendamento = "";
  
  @Element(required = false)
  private String areaCelular = "";
  
  @Element(required = false)
  private String codigoRetorno = "";
  
  @Element(required = false)
  private String confirmarRecargar = "";
  
  @Element(required = false)
  private String contaDebito = "";
  
  @Element(required = false)
  private String dataContabil = "";
  
  @Element(required = false)
  private String dataFim = "";
  
  @Element(required = false)
  private String dataInicio = "";
  
  @Element(required = false)
  private String excluirMantendoProximaRecarga = "";
  
  @Element(required = false)
  private String mensagemAEA = "";
  
  @Element(required = false)
  private String numCelular = "";
  
  @Element(required = false)
  private String numeroOperacao = "";
  
  @Element(required = false)
  private String periodoIndeterminado = "";
  
  @Element(required = false)
  private String produto = "";
  
  @Element(required = false)
  private String subProduto = "";
  
  @Element(required = false)
  private String valorRecarga = "";
  
  public String a() {
    return this.mensagemAEA;
  }
  
  public String b() {
    return this.agenciaDebito;
  }
  
  public String c() {
    return this.agendamento;
  }
  
  public String d() {
    return this.areaCelular;
  }
  
  public String e() {
    return this.codigoRetorno;
  }
  
  public String f() {
    return this.contaDebito;
  }
  
  public String g() {
    return this.dataContabil;
  }
  
  public String h() {
    return this.dataFim;
  }
  
  public String i() {
    return this.dataInicio;
  }
  
  public String j() {
    return this.excluirMantendoProximaRecarga;
  }
  
  public String k() {
    return this.numCelular;
  }
  
  public String l() {
    return this.numeroOperacao;
  }
  
  public String m() {
    return this.periodoIndeterminado;
  }
  
  public String n() {
    return this.produto;
  }
  
  public String o() {
    return this.subProduto;
  }
  
  public String p() {
    return this.valorRecarga;
  }
  
  public String q() {
    return this.confirmarRecargar;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kjg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */