import org.xml.sax.Attributes;

public class jzc extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jzc(jzb paramjzb) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzb.a(this.a) != null)
      jzb.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("cotacaoDolar")) {
      this.c = false;
      jzb.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jzb.a(this.a).i(this.b.toString());
    } 
    if (paramString3.equals("contratoCartao")) {
      this.c = false;
      jzb.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = false;
      jzb.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("despesaConvertida")) {
      this.c = false;
      jzb.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("despesaReal")) {
      this.c = false;
      jzb.a(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("referOper")) {
      this.c = false;
      jzb.a(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("valorPagamento")) {
      this.c = false;
      jzb.a(this.a).j(this.b.toString());
    } 
    if (paramString3.equals("valorPagamentoParcial")) {
      this.c = false;
      jzb.a(this.a).n(this.b.toString());
    } 
    if (paramString3.equals("valorPagamentoMinimo")) {
      this.c = false;
      jzb.a(this.a).g(this.b.toString());
    } 
    if (paramString3.equals("valorTotal")) {
      this.c = false;
      jzb.a(this.a).h(this.b.toString());
    } 
    if (paramString3.equals("valorAtualizadoFatura")) {
      this.c = false;
      jzb.a(this.a).m(this.b.toString());
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      jzb.a(this.a).k(this.b.toString());
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      jzb.a(this.a).l(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("cotacaoDolar") || paramString3.equals("codigoRetorno") || paramString3.equals("contratoCartao") || paramString3.equals("dataVencimento") || paramString3.equals("despesaConvertida") || paramString3.equals("despesaReal") || paramString3.equals("referOper") || paramString3.equals("valorPagamento") || paramString3.equals("mensagemRetorno") || paramString3.equals("valorPagamentoMinimo") || paramString3.equals("valorTotal") || paramString3.equals("valorAtualizadoFatura") || paramString3.equals("tokenTransacao") || paramString3.equals("valorPagamentoParcial")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */