import org.xml.sax.Attributes;

class jxm extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jxm(jxl paramjxl) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (this.a.a() != null)
      this.a.a().setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("agenciaDebito")) {
      this.c = false;
      this.a.a().a(this.b.toString());
      return;
    } 
    if (paramString3.equals("agenciaCredito")) {
      this.c = false;
      this.a.a().n(this.b.toString());
      return;
    } 
    if (paramString3.equals("autenticacaoBancaria")) {
      this.c = false;
      this.a.a().b(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaCredito")) {
      this.c = false;
      this.a.a().c(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaDebito")) {
      this.c = false;
      this.a.a().d(this.b.toString());
      return;
    } 
    if (paramString3.equals("cpf")) {
      this.c = false;
      this.a.a().e(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      this.a.a().f(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataHoraTransacao")) {
      this.c = false;
      this.a.a().g(this.b.toString());
      return;
    } 
    if (paramString3.equals("modalidade")) {
      this.c = false;
      this.a.a().l(this.b.toString());
      return;
    } 
    if (paramString3.equals("produto")) {
      this.c = false;
      this.a.a().h(this.b.toString());
      return;
    } 
    if (paramString3.equals("subProduto")) {
      this.c = false;
      this.a.a().i(this.b.toString());
      return;
    } 
    if (paramString3.equals("titular")) {
      this.c = false;
      this.a.a().j(this.b.toString());
      return;
    } 
    if (paramString3.equals("valor")) {
      this.c = false;
      this.a.a().k(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemErro")) {
      this.c = false;
      this.a.a().m(this.b.toString());
      return;
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      this.a.a().o(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("agenciaDebito") || paramString3.equals("agenciaCredito") || paramString3.equals("autenticacaoBancaria") || paramString3.equals("contaCredito") || paramString3.equals("contaDebito") || paramString3.equals("cpf") || paramString3.equals("dataContabil") || paramString3.equals("dataHoraTransacao") || paramString3.equals("modalidade") || paramString3.equals("produto") || paramString3.equals("subProduto") || paramString3.equals("titular") || paramString3.equals("valor") || paramString3.equals("mensagemErro") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */