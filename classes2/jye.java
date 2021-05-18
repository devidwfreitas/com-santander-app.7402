import org.xml.sax.Attributes;

public class jye extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jye(jyd paramjyd) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyd.a(this.a) != null)
      jyd.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("agenciaCredito")) {
      this.c = false;
      jyd.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("agenciaDebito")) {
      this.c = false;
      jyd.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("autenticacaoBancaria")) {
      this.c = false;
      jyd.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("contaCredito")) {
      this.c = false;
      jyd.a(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("contaDebito")) {
      this.c = false;
      jyd.a(this.a).A(this.b.toString());
    } 
    if (paramString3.equals("cpf")) {
      this.c = false;
      jyd.a(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("dataHoraTransacao")) {
      this.c = false;
      jyd.a(this.a).g(this.b.toString());
    } 
    if (paramString3.equals("modalidade")) {
      this.c = false;
      jyd.a(this.a).h(this.b.toString());
    } 
    if (paramString3.equals("subProduto")) {
      this.c = false;
      jyd.a(this.a).i(this.b.toString());
    } 
    if (paramString3.equals("titular")) {
      this.c = false;
      jyd.a(this.a).j(this.b.toString());
    } 
    if (paramString3.equals("valor")) {
      this.c = false;
      jyd.a(this.a).x(this.b.toString());
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      jyd.a(this.a).p(this.b.toString());
    } 
    if (paramString3.equals("mensagemErro")) {
      this.c = false;
      jyd.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      jyd.a(this.a).z(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("agenciaCredito") || paramString3.equals("agenciaDebito") || paramString3.equals("autenticacaoBancaria") || paramString3.equals("contaCredito") || paramString3.equals("contaDebitocontaDebito") || paramString3.equals("cpf") || paramString3.equals("dataHoraTransacao") || paramString3.equals("modalidade") || paramString3.equals("subProduto") || paramString3.equals("dataContabil") || paramString3.equals("valor") || paramString3.equals("mensagemErro") || paramString3.equals("titular") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jye.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */