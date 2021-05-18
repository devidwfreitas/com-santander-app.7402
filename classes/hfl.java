import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hfl extends gnb implements hfx, hfy {
  @Element(required = false)
  private String codigoAutenticacao;
  
  @Element(required = false)
  private String codigoBarras;
  
  @Element(required = false)
  private String codigoErro;
  
  @ElementList(required = false)
  private List<hfo> condicoesGerais;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String contratoAcordo;
  
  @ElementList(required = false)
  private List<hfp> contratos;
  
  @Element(required = false)
  private String dataAtual;
  
  @Element(required = false)
  private String dataEfetivacao;
  
  @Element(required = false)
  private String dataPrimeiraParcela;
  
  @Element(required = false)
  private String dataSituacao;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String diaAniversarioPagamento;
  
  @Element(required = false)
  private hfq endereco;
  
  @Element(required = false)
  private String formaPagamento;
  
  @Element(required = false)
  @hfs
  private String formaPagamentoAtiva;
  
  @Element(required = false)
  private String horarioEfetivacao;
  
  @Element(required = false)
  private String numeroProposta;
  
  @Element(required = false)
  @hft
  private String opcoesDePagamento;
  
  @Element(required = false)
  private String percentualDescontoAvista;
  
  @Element(required = false)
  private String percentualDescontoParcelado;
  
  @Element(required = false)
  private String percentualIOF;
  
  @Element(required = false)
  private String possuiElegibilidade;
  
  @Element(required = false)
  private String quantidadeContratos;
  
  @Element(required = false)
  private String quantidadeMaximaParcelas;
  
  @Element(required = false)
  private String quantidadeMinimaParcelas;
  
  @Element(required = false)
  private String quantidadeParcelas;
  
  @Element(required = false)
  private String taxaCet;
  
  @Element(required = false)
  private String taxaJurosAVista;
  
  @Element(required = false)
  private String taxaJurosMensal;
  
  @Element(required = false)
  private String valorAVista;
  
  @Element(required = false)
  private String valorCartaoCredito;
  
  @Element(required = false)
  private String valorChequeEspecial;
  
  @Element(required = false)
  private String valorCreditoPessoal;
  
  @Element(required = false)
  private String valorDescontoAvista;
  
  @Element(required = false)
  private String valorDescontoParcelado;
  
  @Element(required = false)
  private String valorDividaTotal;
  
  @Element(required = false)
  private String valorFinanciado;
  
  @Element(required = false)
  private String valorIOF;
  
  @Element(required = false)
  private String valorParcela;
  
  @Element(required = false)
  private String valorRenegociacao;
  
  public String A() {
    return "R$ " + this.valorFinanciado;
  }
  
  public String B() {
    return this.dataAtual;
  }
  
  public int C() {
    return (this.contratos != null) ? this.contratos.size() : 0;
  }
  
  public String D() {
    return w() ? ("R$ " + this.valorDescontoAvista) : ("R$ " + this.valorDescontoParcelado);
  }
  
  public int E() {
    return (this.diaAniversarioPagamento != null) ? Integer.parseInt(this.diaAniversarioPagamento) : 0;
  }
  
  public String F() {
    return this.dataVencimento;
  }
  
  public String G() {
    return "R$ " + this.valorIOF;
  }
  
  public String H() {
    return this.percentualIOF + "%";
  }
  
  public String I() {
    return w() ? s() : r();
  }
  
  public String J() {
    return this.taxaCet + "%";
  }
  
  public String K() {
    return (this.endereco == null || this.endereco.c() == null) ? "" : String.format("%s, %s - %s CEP %s", new Object[] { this.endereco.c(), this.endereco.b(), this.endereco.d(), this.endereco.a() });
  }
  
  public List<hfo> L() {
    return this.condicoesGerais;
  }
  
  public String M() {
    return this.contratoAcordo;
  }
  
  public String N() {
    return this.conta;
  }
  
  public String O() {
    return this.codigoBarras;
  }
  
  public void a(hfl paramhfl) {
    Class<?> clazz = getClass();
    for (Field field : paramhfl.getClass().getDeclaredFields()) {
      try {
        Field field1 = clazz.getDeclaredField(field.getName());
        Object object = field.get(paramhfl);
        if (object != null)
          field1.set(this, object); 
      } catch (Exception exception) {
        Log.e("AcordoServiceResponse", "update", exception);
      } 
    } 
  }
  
  public void a(String paramString) {
    this.conta = paramString;
  }
  
  public boolean a() {
    return (getConfirmacao().equalsIgnoreCase("OK") && TextUtils.isEmpty(getMensagemErro()));
  }
  
  public hfz b() {
    return (hfz)new hfm(this);
  }
  
  @hft
  public String c() {
    return this.opcoesDePagamento;
  }
  
  @hfs
  public String d() {
    return this.formaPagamentoAtiva;
  }
  
  @hfr
  public int e() {
    return Integer.parseInt(this.formaPagamento);
  }
  
  public String f() {
    int i = e();
    return (i == 2) ? "Boleto" : ((i == 1) ? "Débito em Conta" : "");
  }
  
  public int g() {
    return (this.diaAniversarioPagamento != null) ? Integer.parseInt(this.diaAniversarioPagamento) : 0;
  }
  
  public String getAutenticacao() {
    return this.codigoAutenticacao;
  }
  
  public int h() {
    return (this.quantidadeParcelas != null) ? Integer.parseInt(this.quantidadeParcelas) : 0;
  }
  
  public String i() {
    return this.numeroProposta;
  }
  
  public String j() {
    return "R$ " + this.valorRenegociacao;
  }
  
  public String k() {
    return w() ? t() : j();
  }
  
  public String l() {
    return w() ? t() : m();
  }
  
  public String m() {
    return "R$ " + this.valorParcela;
  }
  
  public int n() {
    return (this.quantidadeParcelas != null) ? Integer.parseInt(this.quantidadeParcelas) : 0;
  }
  
  public int o() {
    return (this.quantidadeMaximaParcelas != null) ? Integer.parseInt(this.quantidadeMaximaParcelas) : 0;
  }
  
  public int p() {
    return (this.quantidadeMinimaParcelas != null) ? Integer.parseInt(this.quantidadeMinimaParcelas) : 0;
  }
  
  public String q() {
    return (this.quantidadeParcelas != null) ? (this.quantidadeParcelas + "x") : "";
  }
  
  public String r() {
    return this.taxaJurosMensal + "%";
  }
  
  public String s() {
    return this.taxaJurosAVista + "%";
  }
  
  public String t() {
    return "R$ " + this.valorAVista;
  }
  
  public String u() {
    return this.percentualDescontoParcelado + "%";
  }
  
  public String v() {
    return this.percentualDescontoAvista + "%";
  }
  
  public boolean w() {
    return (n() == 1);
  }
  
  public String x() {
    return this.dataEfetivacao;
  }
  
  public String y() {
    return this.horarioEfetivacao;
  }
  
  public String z() {
    return getMensagemErro();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hfl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */