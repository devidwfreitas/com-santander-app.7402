import org.xml.sax.Attributes;

public class jzo extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jzo(jzn paramjzn) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzn.b(this.a) != null)
      jzn.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("resultList"))
      jzn.b(this.a).a().add(jzn.a(this.a)); 
    if (paramString3.equals("message")) {
      this.c = false;
      jzn.b(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("moedaContrato")) {
      this.c = false;
      jzn.a(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("numeroExtrato")) {
      this.c = false;
      jzn.a(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("saldoFatura")) {
      this.c = false;
      jzn.a(this.a).g(this.b.toString());
    } 
    if (paramString3.equals("dataVencimentoFatura")) {
      this.c = false;
      jzn.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("dataEmissaoFatura")) {
      this.c = false;
      jzn.a(this.a).h(this.b.toString());
    } 
    if (paramString3.equals("cotacaoDolar")) {
      this.c = false;
      jzn.b(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("dataVenctoFatura")) {
      this.c = false;
      jzn.b(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("jurosMora")) {
      this.c = false;
      jzn.b(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("multaPorAtraso")) {
      this.c = false;
      jzn.b(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("percentEncargoOpNormPeri")) {
      this.c = false;
      jzn.b(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("percentEncargoSaque")) {
      this.c = false;
      jzn.b(this.a).g(this.b.toString());
    } 
    if (paramString3.equals("percentEncargoTransParc")) {
      this.c = false;
      jzn.b(this.a).h(this.b.toString());
    } 
    if (paramString3.equals("saldoAnterior")) {
      this.c = false;
      jzn.b(this.a).i(this.b.toString());
    } 
    if (paramString3.equals("saldoFatura")) {
      this.c = false;
      jzn.b(this.a).j(this.b.toString());
    } 
    if (paramString3.equals("situacaoFatura")) {
      this.c = false;
      jzn.b(this.a).k(this.b.toString());
    } 
    if (paramString3.equals("totalConvertido")) {
      this.c = false;
      jzn.b(this.a).l(this.b.toString());
    } 
    if (paramString3.equals("totalDespesa")) {
      this.c = false;
      jzn.b(this.a).m(this.b.toString());
    } 
    if (paramString3.equals("valorEncargo")) {
      this.c = false;
      jzn.b(this.a).n(this.b.toString());
    } 
    if (paramString3.equals("valorLimiteCompra")) {
      this.c = false;
      jzn.b(this.a).o(this.b.toString());
    } 
    if (paramString3.equals("valorLimiteSaque")) {
      this.c = false;
      jzn.b(this.a).p(this.b.toString());
    } 
    if (paramString3.equals("valorPagamento")) {
      this.c = false;
      jzn.b(this.a).q(this.b.toString());
    } 
    if (paramString3.equals("valorSaldoParcVencer")) {
      this.c = false;
      jzn.b(this.a).r(this.b.toString());
    } 
    if (paramString3.equals("limiteTotalCredito")) {
      this.c = false;
      jzn.b(this.a).s(this.b.toString());
    } 
    if (paramString3.equals("totalParcelaVencer")) {
      this.c = false;
      jzn.b(this.a).t(this.b.toString());
    } 
    if (paramString3.equals("dataFechamentoPrevistoProxFatura")) {
      this.c = false;
      jzn.b(this.a).u(this.b.toString());
    } 
    if (paramString3.equals("limiteParaSaqueVista")) {
      this.c = false;
      jzn.b(this.a).v(this.b.toString());
    } 
    if (paramString3.equals("limiteDisponivelEm")) {
      this.c = false;
      jzn.b(this.a).w(this.b.toString());
    } 
    if (paramString3.equals("limiteDisponivelEmData")) {
      this.c = false;
      jzn.b(this.a).x(this.b.toString());
    } 
    if (paramString3.equals("totalPagamento")) {
      this.c = false;
      jzn.b(this.a).y(this.b.toString());
    } 
    if (paramString3.equals("limiteDisponivel")) {
      this.c = false;
      jzn.b(this.a).A(this.b.toString());
    } 
    if (paramString3.equals("valorSaldoParcVencer")) {
      this.c = false;
      jzn.b(this.a).r(this.b.toString());
    } 
    if (paramString3.equals("cotacaoDolarDia")) {
      this.c = false;
      jzn.b(this.a).z(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("resultList"))
      jzn.a(this.a, new fue()); 
    if (paramString3.equals("moedaContrato") || paramString3.equals("numeroExtrato") || paramString3.equals("saldoFatura") || paramString3.equals("dataVencimentoFatura") || paramString3.equals("dataEmissaoFatura") || paramString3.equals("message") || paramString3.equals("cotacaoDolar") || paramString3.equals("jurosMora") || paramString3.equals("multaPorAtraso") || paramString3.equals("percentEncargoOpNormPeri") || paramString3.equals("percentEncargoSaque") || paramString3.equals("percentEncargoTransParc") || paramString3.equals("saldoAnterior") || paramString3.equals("situacaoFatura") || paramString3.equals("totalConvertido") || paramString3.equals("totalDespesa") || paramString3.equals("valorEncargo") || paramString3.equals("valorLimiteCompra") || paramString3.equals("valorLimiteSaque") || paramString3.equals("valorPagamento") || paramString3.equals("valorSaldoParcVencer") || paramString3.equals("limiteTotalCredito") || paramString3.equals("totalParcelaVencer") || paramString3.equals("dataFechamentoPrevistoProxFatura") || paramString3.equals("limiteParaSaqueVista") || paramString3.equals("limiteDisponivelEm") || paramString3.equals("limiteDisponivelEmData") || paramString3.equals("totalPagamento") || paramString3.equals("limiteDisponivel") || paramString3.equals("totalDespesa") || paramString3.equals("cotacaoDolarDia")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */