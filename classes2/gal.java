import org.xml.sax.Attributes;

public class gal extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private StringBuffer h = null;
  
  public gal(gak paramgak) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (gak.b(this.a) != null)
      gak.b(this.a).a(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("empresasConveniadas")) {
      gak.b(this.a).a(gak.a(this.a));
      return;
    } 
    if (paramString3.equals("agencia")) {
      this.c = false;
      gak.a(this.a).a(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("banco")) {
      this.c = false;
      gak.a(this.a).b(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("conta")) {
      this.c = false;
      gak.a(this.a).c(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("nome")) {
      this.c = false;
      gak.a(this.a).d(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("tamanhoMax")) {
      this.c = false;
      gak.a(this.a).e(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("codigoErro")) {
      this.c = false;
      gak.b(this.a).a(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("mensagemErro")) {
      this.c = false;
      gak.b(this.a).b(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      gak.b(this.a).c(this.b.toString().trim());
      return;
    } 
    if (paramString3.equalsIgnoreCase("descricaoIdConsumidor")) {
      this.c = false;
      gak.a(this.a).f(this.b.toString().trim());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("empresasConveniadas")) {
      gak.a(this.a, new gae());
      return;
    } 
    if (paramString3.equals("agencia") || paramString3.equals("banco") || paramString3.equals("conta") || paramString3.equals("nome") || paramString3.equals("tokenTransacao") || paramString3.equals("tamanhoMax") || paramString3.equals("descricaoIdConsumidor")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */