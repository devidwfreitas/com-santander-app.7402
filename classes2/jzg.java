import org.xml.sax.Attributes;

public class jzg extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jzg(jzf paramjzf) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzf.b(this.a) != null)
      jzf.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("lancamento"))
      jzf.b(this.a).e().add(jzf.a(this.a)); 
    if (paramString3.equals("listaLancamento"))
      jzf.a(this.a, false); 
    if (paramString3.equals("dataFechamento")) {
      this.c = false;
      jzf.b(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = false;
      jzf.b(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("pagamentoMinimo")) {
      this.c = false;
      jzf.b(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("totalFatura")) {
      this.c = false;
      jzf.b(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("real")) {
      this.c = false;
      jzf.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("data")) {
      this.c = false;
      jzf.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("historico")) {
      this.c = false;
      jzf.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("valor")) {
      this.c = false;
      jzf.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("moedaContrato")) {
      this.c = false;
      jzf.b(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("dataFechamentoPrevistoProxFatura")) {
      this.c = false;
      jzf.b(this.a).C(this.b.toString());
    } 
    if (paramString3.equals("limiteTotalCredito")) {
      this.c = false;
      jzf.b(this.a).D(this.b.toString());
    } 
    if (paramString3.equals("limiteParaSaqueVista")) {
      this.c = false;
      jzf.b(this.a).E(this.b.toString());
    } 
    if (paramString3.equals("limiteDisponivelEm")) {
      this.c = false;
      jzf.b(this.a).F(this.b.toString());
    } 
    if (paramString3.equals("limiteDisponivelEmData")) {
      this.c = false;
      jzf.b(this.a).G(this.b.toString());
    } 
    if (paramString3.equals("totalPagamento")) {
      this.c = false;
      jzf.b(this.a).H(this.b.toString());
    } 
    if (paramString3.equals("limiteDisponivel")) {
      this.c = false;
      jzf.b(this.a).I(this.b.toString());
    } 
    if (paramString3.equals("totalCredito")) {
      this.c = false;
      jzf.b(this.a).J(this.b.toString());
    } 
    if (paramString3.equals("totalDeCreditos")) {
      this.c = false;
      jzf.b(this.a).J(this.b.toString());
    } 
    if (paramString3.equals("despesasDebitos")) {
      this.c = false;
      jzf.b(this.a).K(this.b.toString());
    } 
    if (paramString3.equals("saldoAnterior")) {
      this.c = false;
      jzf.b(this.a).s(this.b.toString());
    } 
    if (paramString3.equals("totalDespesa")) {
      this.c = false;
      jzf.b(this.a).w(this.b.toString());
    } 
    if (paramString3.equals("totalConvertido")) {
      this.c = false;
      jzf.b(this.a).v(this.b.toString());
    } 
    if (paramString3.equals("cotacaoDolar")) {
      this.c = false;
      jzf.b(this.a).k(this.b.toString());
    } 
    if (paramString3.equals("cotacaoDolarDia")) {
      this.c = false;
      jzf.b(this.a).l(this.b.toString());
    } 
    if (paramString3.equals("multaPorAtraso")) {
      this.c = false;
      jzf.b(this.a).o(this.b.toString());
    } 
    if (paramString3.equals("jurosMora")) {
      this.c = false;
      jzf.b(this.a).n(this.b.toString());
    } 
    if (paramString3.equals("totalParcelaVencer")) {
      this.c = false;
      jzf.b(this.a).L(this.b.toString());
    } 
    if (paramString3.equals("comprasParcProxFatura")) {
      this.c = false;
      jzf.b(this.a).M(this.b.toString());
    } 
    if (paramString3.equals("comprasParcTotalVencer")) {
      this.c = false;
      jzf.b(this.a).N(this.b.toString());
    } 
    if (paramString3.equals("comprasParcJuroProxFatura")) {
      this.c = false;
      jzf.b(this.a).O(this.b.toString());
    } 
    if (paramString3.equals("comprasParcJuroTotalVencer")) {
      this.c = false;
      jzf.b(this.a).P(this.b.toString());
    } 
    if (paramString3.equals("parcelamentoFaturaProxima")) {
      this.c = false;
      jzf.b(this.a).Q(this.b.toString());
    } 
    if (paramString3.equals("parcelamentoFaturaTotalVencer")) {
      this.c = false;
      jzf.b(this.a).R(this.b.toString());
    } 
    if (paramString3.equals("pagamentoParcial")) {
      this.c = false;
      jzf.b(this.a).S(this.b.toString());
    } 
    if (paramString3.equals("valorPagamentoParcial")) {
      this.c = false;
      jzf.b(this.a).T(this.b.toString());
    } 
    if (paramString3.equals("saques")) {
      this.c = false;
      jzf.b(this.a).U(this.b.toString());
    } 
    if (paramString3.equals("comprasParceladasComJuros")) {
      this.c = false;
      jzf.b(this.a).V(this.b.toString());
    } 
    if (paramString3.equals("situacaoFatura")) {
      this.c = false;
      jzf.b(this.a).u(this.b.toString());
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      if (jzf.c(this.a)) {
        jzf.b(this.a).j(this.b.toString());
        return;
      } 
    } else {
      return;
    } 
    jzf.b(this.a).i(this.b.toString());
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("lancamento"))
      jzf.a(this.a, new fuj()); 
    if (paramString3.equals("listaLancamento"))
      jzf.a(this.a, true); 
    if (paramString3.equals("dataFechamento") || paramString3.equals("dataVencimento") || paramString3.equals("pagamentoMinimo") || paramString3.equals("totalFatura") || paramString3.equals("data") || paramString3.equals("historico") || paramString3.equals("valor") || paramString3.equals("moedaContrato") || paramString3.equals("real") || paramString3.equals("mensagemRetorno") || paramString3.equals("dataFechamentoPrevistoProxFatura") || paramString3.equals("limiteTotalCredito") || paramString3.equals("limiteParaSaqueVista") || paramString3.equals("limiteDisponivelEm") || paramString3.equals("limiteDisponivelEmData") || paramString3.equals("saldoAnterior") || paramString3.equals("totalPagamento") || paramString3.equals("limiteDisponivel") || paramString3.equals("totalCredito") || paramString3.equals("totalDeCreditos") || paramString3.equals("despesasDebitos") || paramString3.equals("totalDespesa") || paramString3.equals("totalConvertido") || paramString3.equals("cotacaoDolar") || paramString3.equals("cotacaoDolarDia") || paramString3.equals("multaPorAtraso") || paramString3.equals("jurosMora") || paramString3.equals("totalParcelaVencer") || paramString3.equals("comprasParcProxFatura") || paramString3.equals("comprasParcTotalVencer") || paramString3.equals("comprasParcJuroProxFatura") || paramString3.equals("comprasParcJuroTotalVencer") || paramString3.equals("parcelamentoFaturaProxima") || paramString3.equals("parcelamentoFaturaTotalVencer") || paramString3.equals("pagamentoParcial") || paramString3.equals("valorPagamentoParcial") || paramString3.equals("saques") || paramString3.equals("comprasParceladasComJuros") || paramString3.equals("melhorDataCompra") || paramString3.equals("situacaoFatura")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */