import org.xml.sax.Attributes;

public class hcv extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private StringBuffer h = null;
  
  public hcv(hcu paramhcu) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (hcu.b(this.a) != null)
      hcu.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("return")) {
      hcu.b(this.a).a(hcu.a(this.a));
      return;
    } 
    if (paramString3.equals("bandeira")) {
      this.c = false;
      hcu.a(this.a).h(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("indicaDebito")) {
      this.c = false;
      hcu.a(this.a).m(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("nomeTitular")) {
      this.c = false;
      hcu.a(this.a).n(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("numReduzido")) {
      this.c = false;
      hcu.a(this.a).p(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("autenticacao")) {
      this.c = false;
      hcu.b(this.a).e(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("dataTransacao")) {
      this.c = false;
      hcu.b(this.a).c(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("horaTransacao")) {
      this.c = false;
      hcu.b(this.a).d(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("confirmacao")) {
      this.c = false;
      hcu.b(this.a).b(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("codigoErro")) {
      this.c = false;
      hcu.b(this.a).g(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("mensagemErro")) {
      this.c = false;
      hcu.b(this.a).f(this.b.toString().trim());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("return")) {
      hcu.a(this.a, new hct());
      return;
    } 
    if (paramString3.equals("bandeira") || paramString3.equals("indicaDebito") || paramString3.equals("nomeTitular") || paramString3.equals("numReduzido") || paramString3.equals("confirmacao") || paramString3.equals("dataTransacao") || paramString3.equals("horaTransacao") || paramString3.equals("autenticacao") || paramString3.equals("mensagemErro") || paramString3.equals("codigoErro")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */