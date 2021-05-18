import org.xml.sax.Attributes;

public class gai extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private StringBuffer h = null;
  
  public gai(gah paramgah) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (gah.a(this.a) != null)
      gah.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equalsIgnoreCase("autenticacao")) {
      this.c = false;
      gah.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("confirmacao")) {
      this.c = false;
      gah.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("dataTransacao")) {
      this.c = false;
      gah.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("horaTransacao")) {
      this.c = false;
      gah.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("codigoErro")) {
      this.c = false;
      gah.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("mensagemErro")) {
      this.c = false;
      gah.a(this.a).a(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equalsIgnoreCase("autenticacao") || paramString3.equalsIgnoreCase("confirmacao") || paramString3.equalsIgnoreCase("dataTransacao") || paramString3.equalsIgnoreCase("horaTransacao") || paramString3.equalsIgnoreCase("codigoErro") || paramString3.equalsIgnoreCase("mensagemErro")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */