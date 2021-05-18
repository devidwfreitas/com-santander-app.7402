import org.xml.sax.Attributes;

public class gan extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private StringBuffer h = null;
  
  public gan(gam paramgam) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (gam.b(this.a) != null)
      gam.b(this.a).a(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("tipoConta")) {
      gam.b(this.a).a(gam.a(this.a));
      return;
    } 
    if (paramString3.equals("requestId")) {
      this.c = false;
      gam.b(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricao")) {
      this.c = false;
      gam.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("produto")) {
      this.c = false;
      gam.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("subProduto")) {
      this.c = false;
      gam.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoErro")) {
      this.c = false;
      gam.b(this.a).h(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("mensagemErro")) {
      this.c = false;
      gam.b(this.a).i(this.b.toString().trim());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("tipoConta")) {
      gam.a(this.a, new gaf());
      return;
    } 
    if (paramString3.equals("requestId") || paramString3.equals("descricao") || paramString3.equals("produto") || paramString3.equals("subProduto") || paramString3.equals("codigoErro") || paramString3.equals("mensagemErro")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */