import org.xml.sax.Attributes;

public class jyi extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jyi(jyh paramjyh) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyh.a(this.a) != null)
      jyh.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      jyh.a(this.a).q(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jyh.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      jyh.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataEfetivacao")) {
      this.c = false;
      jyh.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("horaEfetivacao")) {
      this.c = false;
      jyh.a(this.a).p(this.b.toString());
      return;
    } 
    if (paramString3.equals("prazo")) {
      this.c = false;
      jyh.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("produto")) {
      this.c = false;
      jyh.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("taxaCDI")) {
      this.c = false;
      jyh.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorAplicado")) {
      this.c = false;
      jyh.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorBruto")) {
      this.c = false;
      jyh.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorBrutoAtualizado")) {
      this.c = false;
      jyh.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorIOF")) {
      this.c = false;
      jyh.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorIR")) {
      this.c = false;
      jyh.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorLiquido")) {
      this.c = false;
      jyh.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemErro")) {
      this.c = false;
      jyh.a(this.a).m(this.b.toString());
      return;
    } 
    if (paramString3.equals("autenticacaoBancaria")) {
      this.c = false;
      jyh.a(this.a).o(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      jyh.a(this.a).n(this.b.toString());
      jyh.a(this.a).setFaultstring(this.b.toString());
      jyh.a(this.a).setFaultcode(this.b.toString());
      fvv fvv = new fvv();
      fvv.d(this.b.toString());
      jyh.a(this.a).setErrorDetail(fvv);
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("codigoRetorno") || paramString3.equals("dataContabil") || paramString3.equals("dataEfetivacao") || paramString3.equals("horaEfetivacao") || paramString3.equals("prazo") || paramString3.equals("produto") || paramString3.equals("taxaCDI") || paramString3.equals("valorAplicado") || paramString3.equals("valorBruto") || paramString3.equals("valorBrutoAtualizado") || paramString3.equals("valorIOF") || paramString3.equals("valorIR") || paramString3.equals("valorLiquido") || paramString3.equals("autenticacaoBancaria") || paramString3.equals("mensagemRetorno") || paramString3.equals("tokenTransacao") || paramString3.equals("mensagemErro")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */