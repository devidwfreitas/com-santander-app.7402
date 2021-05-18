import java.io.Serializable;
import org.simpleframework.xml.Element;

public class kic extends gnb implements Serializable {
  @Element(required = false)
  private String CODSEGB = "";
  
  @Element(required = false)
  private String DESCONV = "";
  
  @Element(required = false)
  private String DESMSG = "";
  
  @Element(required = false)
  private String DSBLQ24 = "";
  
  @Element(required = false)
  private String DSBLQ48 = "";
  
  @Element(required = false)
  private String DSBLQCI = "";
  
  @Element(required = false)
  private String DSBLQIN = "";
  
  @Element(required = false)
  private String DSCANAL = "";
  
  @Element(required = false)
  private String DSCDRET = "";
  
  @Element(required = false)
  private String DSCMAIN = "";
  
  @Element(required = false)
  private String DSCODER = "";
  
  @Element(required = false)
  private String DSCPMF = "";
  
  @Element(required = false)
  private String DSCTACR = "";
  
  @Element(required = false)
  private String DSCTADB = "";
  
  @Element(required = false)
  private String DSLIMIT = "";
  
  @Element(required = false)
  private String DSMARCA = "";
  
  @Element(required = false)
  private String DSMSGER = "";
  
  @Element(required = false)
  private String DSNOMAG = "";
  
  @Element(required = false)
  private String DSNOMCL = "";
  
  @Element(required = false)
  private String DSNOMCR = "";
  
  @Element(required = false)
  private String DSPROD = "";
  
  @Element(required = false)
  private String DSSINAL = "";
  
  @Element(required = false)
  private String DSSLD = "";
  
  @Element(required = false)
  private String DSSUBPR = "";
  
  @Element(required = false)
  private String DSTPOPE = "";
  
  @Element(required = false)
  private String DSTRANS = "";
  
  @Element(required = false)
  private String NUMTRAN = "";
  
  @Element(required = false)
  private String PRCENTR = "";
  
  @Element(required = false)
  private String PRENTID = "";
  
  @Element(required = false)
  private String PRNTERM = "";
  
  @Element(required = false)
  private String PROTOC = "";
  
  @Element(required = false)
  private String PRTPRET = "";
  
  public String a = "";
  
  @Element(required = false)
  private String agenciaDebito = "";
  
  @Element(required = false)
  private String agendamento = "";
  
  @Element(required = false)
  private String areaCelular = "";
  
  public String b = "";
  
  public String c = "";
  
  @Element(required = false)
  private String confirmarRecargar = "";
  
  @Element(required = false)
  private String contaDebito = "";
  
  public String d = "";
  
  @Element(required = false)
  private String dataAgendamentoUnico = "";
  
  @Element(required = false)
  private String dataContabil = "";
  
  @Element(required = false)
  private String dataFim = "";
  
  @Element(required = false)
  private String dataInicio = "";
  
  public String e = "";
  
  @Element(required = false)
  private String excluirMantendoProximaRecarga = "";
  
  private String f = "";
  
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
  private String tipoContaDebito = "";
  
  @Element(required = false)
  private String valorRecarga = "";
  
  public String A() {
    return this.DSCTADB;
  }
  
  public String B() {
    return this.DSLIMIT;
  }
  
  public String C() {
    return this.DSMARCA;
  }
  
  public String D() {
    return this.DSMSGER;
  }
  
  public String E() {
    return this.DSNOMAG;
  }
  
  public String F() {
    return this.DSNOMCL;
  }
  
  public String G() {
    return this.DSNOMCR;
  }
  
  public String H() {
    return this.DSPROD;
  }
  
  public String I() {
    return this.DSSINAL;
  }
  
  public String J() {
    return this.DSSLD;
  }
  
  public String K() {
    return this.DSSUBPR;
  }
  
  public String L() {
    return this.DSTPOPE;
  }
  
  public String M() {
    return this.DSTRANS;
  }
  
  public String N() {
    return this.dataAgendamentoUnico;
  }
  
  public String O() {
    return this.dataContabil;
  }
  
  public String P() {
    return this.excluirMantendoProximaRecarga;
  }
  
  public String Q() {
    return this.NUMTRAN;
  }
  
  public String R() {
    return this.numCelular;
  }
  
  public String S() {
    return this.numeroOperacao;
  }
  
  public String T() {
    return this.PRCENTR;
  }
  
  public String U() {
    return this.PRENTID;
  }
  
  public String V() {
    return this.PRNTERM;
  }
  
  public String W() {
    return this.PROTOC;
  }
  
  public String X() {
    return this.PRTPRET;
  }
  
  public String Y() {
    return this.periodoIndeterminado;
  }
  
  public String Z() {
    return this.produto;
  }
  
  public String a() {
    return this.f;
  }
  
  public void a(String paramString) {
    this.f = paramString;
  }
  
  public String aa() {
    return this.subProduto;
  }
  
  public String ab() {
    return this.tipoContaDebito;
  }
  
  public String ac() {
    return this.valorRecarga;
  }
  
  public String ad() {
    return this.confirmarRecargar;
  }
  
  public String ae() {
    return (this.numCelular != null && this.numCelular.substring(0, 1).equals("0")) ? this.numCelular.substring(1, this.numCelular.length()) : this.numCelular;
  }
  
  public String b() {
    return this.c;
  }
  
  public String c() {
    return this.d;
  }
  
  public String d() {
    return this.b;
  }
  
  public String e() {
    return this.e;
  }
  
  public String f() {
    return this.a;
  }
  
  public String g() {
    return this.mensagemAEA;
  }
  
  public String h() {
    return this.agenciaDebito;
  }
  
  public String i() {
    return this.agendamento;
  }
  
  public String j() {
    return this.areaCelular;
  }
  
  public String k() {
    return this.CODSEGB;
  }
  
  public String l() {
    return this.contaDebito;
  }
  
  public String m() {
    return this.dataFim;
  }
  
  public String n() {
    return this.dataInicio;
  }
  
  public String o() {
    return this.DESCONV;
  }
  
  public String p() {
    return this.DESMSG;
  }
  
  public String q() {
    return this.DSBLQ24;
  }
  
  public String r() {
    return this.DSBLQ48;
  }
  
  public String s() {
    return this.DSBLQCI;
  }
  
  public String t() {
    return this.DSBLQIN;
  }
  
  public String u() {
    return this.DSCANAL;
  }
  
  public String v() {
    return this.DSCDRET;
  }
  
  public String w() {
    return this.DSCMAIN;
  }
  
  public String x() {
    return this.DSCODER;
  }
  
  public String y() {
    return this.DSCPMF;
  }
  
  public String z() {
    return this.DSCTACR;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */