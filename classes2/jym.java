import org.xml.sax.Attributes;

public class jym extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jym(jyl paramjyl) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyl.b(this.a) != null)
      jyl.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaCartao"))
      jyl.b(this.a).a().add(jyl.a(this.a)); 
    if (paramString3.equals("imagem")) {
      this.c = false;
      if (jyl.a(this.a).a() == null)
        jyl.a(this.a).a(this.b.toString()); 
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = false;
      jyl.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("valorTotal")) {
      this.c = true;
      jyl.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("valorPagamentoMinimo")) {
      this.c = true;
      jyl.a(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("valorSaldoParcial")) {
      this.c = true;
      jyl.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("mensagemFaturaAberto")) {
      this.c = true;
      jyl.a(this.a).f(this.b.toString());
    } 
    if (paramString3.equals("valorSaldoParcial")) {
      this.c = true;
      jyl.a(this.a).g(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaCartao"))
      jyl.a(this.a, new fvx()); 
    if (paramString3.equals("imagem")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("valorTotal")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("valorPagamentoMinimo")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("valorSaldoParcial")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("mensagemFaturaAberto")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jym.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */