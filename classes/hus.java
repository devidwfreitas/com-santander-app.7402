import android.util.Log;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hus extends gnb implements hxn {
  @Element(required = false)
  protected String codigoAutenticacao;
  
  @Element(required = false)
  protected String codigoRenegociacao;
  
  @ElementList(required = false)
  protected List<hut> contratosCartaoCredito;
  
  @ElementList(required = false)
  protected List<huu> contratosContaCorrente;
  
  @ElementList(required = false)
  protected List<huv> contratosCreditoPessoal;
  
  @Element(required = false)
  protected String dataDaDivida;
  
  @Element(required = false)
  protected String dataHoraCalculo;
  
  @Element(required = false)
  protected String dataTransacao;
  
  @Element(required = false)
  protected String dataVencimentoPrimeiraParcela;
  
  @Element(required = false)
  protected String dataVencimentoUltimaParcela;
  
  @Element(required = false)
  protected String diaDoVencimentoMensal;
  
  @Element(required = false)
  protected String horaTransacao;
  
  @Element(required = false)
  protected String identificacaoProduto;
  
  @Element(required = false)
  protected String numeroComprovate;
  
  @Element(required = false)
  protected String objSerial;
  
  @Element(required = false)
  protected String percentualDevidoNaContratacao;
  
  @Element(required = false)
  protected String percentualIOF;
  
  @Element(required = false)
  protected String percentualSeguro;
  
  @Element(required = false)
  protected String percentualTotalLiberado;
  
  @Element(required = false)
  protected String possuiElegibilidade;
  
  @Element(required = false)
  protected String quantidadeMaximaParcelas;
  
  @Element(required = false)
  protected String quantidadeMinimaParcelas;
  
  @Element(required = false)
  protected String quantidadeParcelas;
  
  @Element(required = false)
  protected String taxaCETAno;
  
  @Element(required = false)
  protected String taxaCETMes;
  
  @Element(required = false)
  protected String taxaJurosAnual;
  
  @Element(required = false)
  protected String taxaJurosMensal;
  
  @Element(required = false)
  protected String textoDocumento;
  
  @Element(required = false)
  protected String totalCartaoCredito;
  
  @Element(required = false)
  protected String totalChequeEspecial;
  
  @Element(required = false)
  protected String totalCreditoPessoal;
  
  @Element(required = false)
  protected String totalParcelasSeguro;
  
  @Element(required = false)
  protected String valorCoberturaComSeguro;
  
  @Element(required = false)
  protected String valorIOF;
  
  @Element(required = false)
  protected String valorLimiteRisco;
  
  @Element(required = false)
  protected String valorMaximoSeguro;
  
  @Element(required = false)
  protected String valorParcela;
  
  @Element(required = false)
  protected String valorSeguro;
  
  @Element(required = false)
  protected String valorSorteioMensal;
  
  @Element(required = false)
  protected String valorTotalDivida;
  
  @Element(required = false)
  protected String valorTotalLiberado;
  
  public String A() {
    return String.format("R$ %s", new Object[] { this.valorTotalLiberado });
  }
  
  public String B() {
    return String.format("%s%%", new Object[] { this.percentualTotalLiberado });
  }
  
  public String C() {
    return String.format("R$ %s", new Object[] { this.valorIOF });
  }
  
  public String D() {
    return String.format("%s%%", new Object[] { this.percentualIOF });
  }
  
  public String E() {
    return String.format("R$ %s", new Object[] { this.valorSeguro });
  }
  
  public String F() {
    return String.format("%s%%", new Object[] { this.percentualSeguro });
  }
  
  public String G() {
    return String.format("R$ %s", new Object[] { this.valorParcela });
  }
  
  public String H() {
    return String.format("%s", new Object[] { this.dataHoraCalculo });
  }
  
  public String I() {
    return this.dataVencimentoPrimeiraParcela;
  }
  
  public String J() {
    return this.dataVencimentoUltimaParcela;
  }
  
  public String K() {
    return this.diaDoVencimentoMensal;
  }
  
  public String L() {
    return String.format("%s", new Object[] { this.numeroComprovate });
  }
  
  public String a(boolean paramBoolean) {
    String str1 = f() + "%";
    String str2 = g() + "%";
    StringBuilder stringBuilder = (new StringBuilder()).append(str1).append(" a.m.");
    if (paramBoolean) {
      str1 = "\n";
      return stringBuilder.append(str1).append(str2).append(" a.a.").toString();
    } 
    str1 = "";
    return stringBuilder.append(str1).append(str2).append(" a.a.").toString();
  }
  
  public void a(Object paramObject) {
    Class<?> clazz = getClass();
    for (Field field : paramObject.getClass().getDeclaredFields()) {
      try {
        Field field1 = clazz.getDeclaredField(field.getName());
        Object object = field.get(paramObject);
        if (object != null)
          field1.set(this, object); 
      } catch (Exception exception) {
        Log.e(getClass().getSimpleName(), "update", exception);
      } 
    } 
  }
  
  public void a(String paramString) {
    this.diaDoVencimentoMensal = paramString;
  }
  
  public boolean a() {
    return (Double.valueOf(Double.parseDouble(this.valorSeguro.replace(".", "").replace(",", "."))).doubleValue() > 0.0D);
  }
  
  public int b() {
    try {
      return Integer.parseInt(this.quantidadeMaximaParcelas);
    } catch (Exception exception) {
      return 0;
    } 
  }
  
  public String b(boolean paramBoolean) {
    String str1 = h() + "%";
    String str2 = i() + "%";
    StringBuilder stringBuilder = (new StringBuilder()).append(str1).append(" a.m.");
    if (paramBoolean) {
      str1 = "\n";
      return stringBuilder.append(str1).append(str2).append(" a.a.").toString();
    } 
    str1 = "";
    return stringBuilder.append(str1).append(str2).append(" a.a.").toString();
  }
  
  public void b(String paramString) {
    this.quantidadeParcelas = paramString;
  }
  
  public int c() {
    try {
      return Integer.parseInt(this.quantidadeMinimaParcelas);
    } catch (Exception exception) {
      return 0;
    } 
  }
  
  public String d() {
    return this.valorTotalDivida;
  }
  
  public String e() {
    return this.valorParcela;
  }
  
  public String f() {
    return this.taxaJurosMensal;
  }
  
  public String g() {
    return this.taxaJurosAnual;
  }
  
  public String getAutenticacao() {
    return this.codigoAutenticacao;
  }
  
  public String getDataHoraTransacao() {
    return String.format("%s - %s", new Object[] { this.dataTransacao, this.horaTransacao });
  }
  
  public String h() {
    return this.taxaCETMes;
  }
  
  public String i() {
    return this.taxaCETAno;
  }
  
  public String j() {
    return this.dataDaDivida;
  }
  
  public List<huk> k() {
    ArrayList<huk> arrayList = new ArrayList();
    if (hyx.a(this.totalCartaoCredito) > 0.0F)
      arrayList.add(new huk("Cartão", this.totalCartaoCredito)); 
    if (hyx.a(this.totalChequeEspecial) > 0.0F)
      arrayList.add(new huk("Limite em conta", this.totalChequeEspecial)); 
    if (hyx.a(this.totalCreditoPessoal) > 0.0F)
      arrayList.add(new huk("Empréstimo", this.totalCreditoPessoal)); 
    return arrayList;
  }
  
  public List<huk> l() {
    ArrayList<hut> arrayList = new ArrayList();
    if (this.contratosCartaoCredito != null)
      arrayList.addAll(this.contratosCartaoCredito); 
    if (this.contratosContaCorrente != null)
      arrayList.addAll(this.contratosContaCorrente); 
    if (this.contratosCreditoPessoal != null)
      arrayList.addAll(this.contratosCreditoPessoal); 
    return (List)arrayList;
  }
  
  public int m() {
    try {
      return Integer.parseInt(this.quantidadeParcelas);
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.getMessage());
      return 0;
    } 
  }
  
  public String n() {
    return this.dataVencimentoPrimeiraParcela;
  }
  
  public int o() {
    try {
      return Integer.parseInt(this.diaDoVencimentoMensal);
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.getMessage());
      return 0;
    } 
  }
  
  public int p() {
    try {
      return Integer.parseInt(this.valorSeguro.replace(".", "").replace(",", ""));
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.getMessage());
      return 0;
    } 
  }
  
  public int q() {
    try {
      return Integer.parseInt(this.dataVencimentoPrimeiraParcela);
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.getMessage());
      return 0;
    } 
  }
  
  public String r() {
    return this.dataVencimentoUltimaParcela;
  }
  
  public boolean s() {
    return (this.identificacaoProduto != null && this.identificacaoProduto.equalsIgnoreCase("REORGANIZACAO"));
  }
  
  public String t() {
    return getMensagemErro();
  }
  
  public String u() {
    return this.quantidadeParcelas + "x";
  }
  
  public String v() {
    try {
      int i = hyx.a(this.dataVencimentoPrimeiraParcela, "dd/MM/yyyy").get(5);
      return String.valueOf(i);
    } catch (Exception exception) {
      return "dd/MM/yyyy";
    } 
  }
  
  public String w() {
    try {
      return "R$ " + d();
    } catch (NullPointerException nullPointerException) {
      Log.e(getClass().getSimpleName(), nullPointerException.getMessage());
      return "0,00";
    } 
  }
  
  public String x() {
    return String.format("%s%%", new Object[] { this.percentualDevidoNaContratacao });
  }
  
  public String y() {
    try {
      return "R$ " + e();
    } catch (NullPointerException nullPointerException) {
      Log.e(getClass().getSimpleName(), nullPointerException.getMessage());
      return "0,00";
    } 
  }
  
  public String z() {
    try {
      return f() + "%";
    } catch (NullPointerException nullPointerException) {
      Log.e(getClass().getSimpleName(), nullPointerException.getMessage());
      return "0,00";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */