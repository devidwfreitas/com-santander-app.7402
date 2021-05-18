import org.xml.sax.Attributes;

public class fyy extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public fyy(fyx paramfyx) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (fyx.a(this.a) != null)
      fyx.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      fyx.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      fyx.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataHash")) {
      this.c = false;
      fyx.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("referOper")) {
      this.c = false;
      fyx.a(this.a).b(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("return") || paramString3.equals("usuarioSNNMResponse"))
      fyx.a(this.a, new fyo()); 
    if (paramString3.equals("codigoRetorno")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("dataHash")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("referOper")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fyy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */