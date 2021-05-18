import org.xml.sax.Attributes;

public class kaa extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public kaa(jzz paramjzz) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzz.a(this.a) != null)
      jzz.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("return") || paramString3.equals("retorno")) {
      this.c = false;
      jzz.a(this.a).a(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("transferenciaResponse")) {
      jzz.a(this.a, new fvj());
      return;
    } 
    if (paramString3.equals("return") || paramString3.equals("retorno")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kaa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */