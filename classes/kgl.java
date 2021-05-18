import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kgl implements Serializable {
  @Element(required = false)
  private String agenciaDebito = "";
  
  @Element(required = false)
  private String agendamento = "";
  
  @Element(required = false)
  private String areaCelular = "";
  
  @Element(required = false)
  private String connUuid = "";
  
  @Element(required = false)
  private String contaDebito = "";
  
  @Element(required = false)
  private String dataAgendamentoUnico = "";
  
  @Element(required = false)
  private String dataCadastroAgend = "";
  
  @Element(required = false)
  private String dataContabil = "";
  
  @Element(required = false)
  private String dataFim = "";
  
  @Element(required = false)
  private String dataInicio = "";
  
  @Element(required = false)
  private String excluirMantendoProximaRecarga = "";
  
  @Element(required = false)
  private String horaCadastroAgend = "";
  
  @Element(required = false)
  private String mensagemAea = "";
  
  @Element(required = false)
  private String numCelular = "";
  
  @Element(required = false)
  private String numProtocoloAgend = "";
  
  @Element(required = false)
  private String numeroAutenticacao = "";
  
  @Element(required = false)
  private String numeroOperacao = "";
  
  @Element(required = false)
  private String operadoraAgencia = "";
  
  @Element(required = false)
  private String operadoraBanco = "";
  
  @Element(required = false)
  private String operadoraConta = "";
  
  @Element(required = false)
  private String periodo = "";
  
  @Element(required = false)
  private String periodoIndeterminado = "";
  
  @Element(required = false)
  private String produto = "";
  
  @Element(required = false)
  private String subProduto = "";
  
  @Element(required = false)
  private String tipoContaDebito = "";
  
  @Element(required = false)
  private String tokenSessao = "";
  
  @Element(required = false)
  private String tokenTransacao = "";
  
  @Element(required = false)
  private String valorRecarga = "";
  
  public void A(String paramString) {
    this.tokenTransacao = paramString;
  }
  
  public void B(String paramString) {
    this.valorRecarga = paramString;
  }
  
  public void a(String paramString) {
    this.agenciaDebito = paramString;
  }
  
  public void b(String paramString) {
    this.agendamento = paramString;
  }
  
  public void c(String paramString) {
    this.areaCelular = paramString;
  }
  
  public void d(String paramString) {
    this.connUuid = paramString;
  }
  
  public void e(String paramString) {
    this.contaDebito = paramString;
  }
  
  public void f(String paramString) {
    this.dataAgendamentoUnico = paramString;
  }
  
  public void g(String paramString) {
    this.dataCadastroAgend = paramString;
  }
  
  public void h(String paramString) {
    this.dataContabil = paramString;
  }
  
  public void i(String paramString) {
    this.dataFim = paramString;
  }
  
  public void j(String paramString) {
    this.dataInicio = paramString;
  }
  
  public void k(String paramString) {
    this.excluirMantendoProximaRecarga = paramString;
  }
  
  public void l(String paramString) {
    this.horaCadastroAgend = paramString;
  }
  
  public void m(String paramString) {
    this.mensagemAea = paramString;
  }
  
  public void n(String paramString) {
    this.numCelular = paramString;
  }
  
  public void o(String paramString) {
    this.numeroAutenticacao = paramString;
  }
  
  public void p(String paramString) {
    this.numeroOperacao = paramString;
  }
  
  public void q(String paramString) {
    this.numProtocoloAgend = paramString;
  }
  
  public void r(String paramString) {
    this.operadoraAgencia = paramString;
  }
  
  public void s(String paramString) {
    this.operadoraBanco = paramString;
  }
  
  public void t(String paramString) {
    this.operadoraConta = paramString;
  }
  
  public void u(String paramString) {
    this.periodo = paramString;
  }
  
  public void v(String paramString) {
    this.periodoIndeterminado = paramString;
  }
  
  public void w(String paramString) {
    this.produto = paramString;
  }
  
  public void x(String paramString) {
    this.subProduto = paramString;
  }
  
  public void y(String paramString) {
    this.tipoContaDebito = paramString;
  }
  
  public void z(String paramString) {
    this.tokenSessao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kgl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */