import com.santander.app.components.model.ListValueString;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "pagamentoResponse")
public class jsr extends gnb implements Serializable {
  private HashMap<String, ListValueString> a;
  
  @Element(required = false)
  private String agencia;
  
  private String b;
  
  @Element(required = false)
  private String codigoBarra;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String dtAgendamentoYYYYMMDD;
  
  @Element(required = false)
  private String dtVencimentoYYYYMMDD;
  
  @Element(required = false)
  private String flagAgendamento;
  
  @Element(required = false)
  private String flagDtVencimento;
  
  @Element(required = false)
  private String flagEditaValor;
  
  @Element(required = false)
  private String flagFavorecido;
  
  @Element(required = false)
  private String flagOfertaDebitoAutomatico;
  
  @Element(required = false)
  private String flagPagamentoCartao;
  
  @ElementList(name = "fields", required = false)
  private ArrayList<gku> listaFields;
  
  @Element(required = false)
  private String nomeConvenio;
  
  @Element(required = false)
  private String numCartaoCredito;
  
  @Element(required = false)
  private String objSerial;
  
  @Element(required = false)
  private String transacao;
  
  @Element(required = false)
  private String valor;
  
  @Element(required = false)
  private String valorTaxaCartao;
  
  public String a() {
    return this.flagAgendamento;
  }
  
  public void a(String paramString) {
    this.flagAgendamento = paramString;
  }
  
  public void a(ArrayList<gku> paramArrayList) {
    this.listaFields = paramArrayList;
  }
  
  public void a(HashMap<String, ListValueString> paramHashMap) {
    this.a = paramHashMap;
  }
  
  public String b() {
    return this.conta;
  }
  
  public void b(String paramString) {
    this.conta = paramString;
  }
  
  public String c() {
    return this.agencia;
  }
  
  public void c(String paramString) {
    this.agencia = paramString;
  }
  
  public String d() {
    return this.numCartaoCredito;
  }
  
  public void d(String paramString) {
    this.numCartaoCredito = paramString;
  }
  
  public String e() {
    return this.codigoBarra;
  }
  
  public void e(String paramString) {
    this.codigoBarra = paramString;
  }
  
  public String f() {
    return this.flagEditaValor;
  }
  
  public void f(String paramString) {
    this.flagEditaValor = paramString;
  }
  
  public String g() {
    return this.nomeConvenio;
  }
  
  public void g(String paramString) {
    this.nomeConvenio = paramString;
  }
  
  public String h() {
    return this.transacao;
  }
  
  public void h(String paramString) {
    this.transacao = paramString;
  }
  
  public String i() {
    return this.flagPagamentoCartao;
  }
  
  public void i(String paramString) {
    this.flagPagamentoCartao = paramString;
  }
  
  public String j() {
    return this.valorTaxaCartao;
  }
  
  public void j(String paramString) {
    this.valorTaxaCartao = paramString;
  }
  
  public String k() {
    return this.valor;
  }
  
  public void k(String paramString) {
    this.valor = paramString;
  }
  
  public String l() {
    return this.objSerial;
  }
  
  public void l(String paramString) {
    this.objSerial = paramString;
  }
  
  public ArrayList<gku> m() {
    return this.listaFields;
  }
  
  public void m(String paramString) {
    this.flagOfertaDebitoAutomatico = paramString;
  }
  
  public String n() {
    return this.flagOfertaDebitoAutomatico;
  }
  
  public void n(String paramString) {
    this.b = paramString;
  }
  
  public String o() {
    return this.b;
  }
  
  public void o(String paramString) {
    this.flagDtVencimento = paramString;
  }
  
  public String p() {
    return this.flagDtVencimento;
  }
  
  public void p(String paramString) {
    this.dtVencimentoYYYYMMDD = paramString;
  }
  
  public String q() {
    return this.dtVencimentoYYYYMMDD;
  }
  
  public void q(String paramString) {
    this.flagFavorecido = paramString;
  }
  
  public String r() {
    return this.flagFavorecido;
  }
  
  public void r(String paramString) {
    this.dtAgendamentoYYYYMMDD = paramString;
  }
  
  public String s() {
    return this.dtAgendamentoYYYYMMDD;
  }
  
  public HashMap<String, ListValueString> t() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jsr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */