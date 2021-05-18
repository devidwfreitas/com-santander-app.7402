import org.xml.sax.Attributes;

public class kai extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private boolean h = false;
  
  private boolean i = false;
  
  private boolean j = false;
  
  public kai(kah paramkah) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (kah.a(this.a) != null)
      kah.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaCdbHomeLogadaResultListResponse"))
      this.h = false; 
    if (paramString3.equals("listaPoupancaHomeLogadaResultListResponse"))
      this.i = false; 
    if (paramString3.equals("listaFundosHomeLogadaResultListResponse"))
      this.j = false; 
    if (paramString3.equals("valorDisponivel")) {
      this.c = false;
      if (this.h)
        kah.a(this.a).a(this.b.toString()); 
      if (this.i)
        kah.a(this.a).b(this.b.toString()); 
      if (this.j)
        kah.a(this.a).c(this.b.toString()); 
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaCdbHomeLogadaResultListResponse"))
      this.h = true; 
    if (paramString3.equals("listaPoupancaHomeLogadaResultListResponse"))
      this.i = true; 
    if (paramString3.equals("listaFundosHomeLogadaResultListResponse"))
      this.j = true; 
    if (paramString3.equals("valorDisponivel")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */