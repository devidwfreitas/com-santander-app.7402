import org.xml.sax.Attributes;

public class fyw extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public fyw(fyv paramfyv) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (fyv.a(this.a) != null)
      fyv.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      fyv.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      fyv.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataHash")) {
      this.c = false;
      fyv.a(this.a).c(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("return"))
      fyv.a(this.a, new fyj()); 
    if (paramString3.equals("codigoRetorno") || paramString3.equals("mensagemRetorno") || paramString3.equals("dataHash") || paramString3.equals("status")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fyw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */