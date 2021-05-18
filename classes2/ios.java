import org.xml.sax.Attributes;

public class ios extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private ioj h = null;
  
  public ios(ior paramior) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (ior.a(this.a) != null)
      ior.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    this.c = false;
    if (paramString3.equals("listaPaises")) {
      this.c = false;
      ior.a(this.a).a().add(this.h);
      return;
    } 
    if (paramString3.equals("codigoPais")) {
      this.c = false;
      this.h.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomePais")) {
      this.c = false;
      this.h.b(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("tokenTransacao")) {
      this.c = false;
      ior.a(this.a).f(this.b.toString().trim());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaPaises"))
      this.h = new ioj(); 
    if (paramString3.equals("codigoPais") || paramString3.equals("nomePais") || paramString3.equalsIgnoreCase("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ios.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */