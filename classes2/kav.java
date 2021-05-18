import org.xml.sax.Attributes;

public class kav extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public kav(kau paramkau) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (kau.a(this.a) != null)
      kau.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigo")) {
      this.c = false;
      kau.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagem")) {
      this.c = false;
      kau.a(this.a).b(this.b.toString());
      if (!this.b.toString().contains("validado com sucesso")) {
        kau.a(this.a).setFaultstring(this.b.toString());
        kau.a(this.a).setFaultcode(this.b.toString());
        fvv fvv = new fvv();
        fvv.d(this.b.toString());
        kau.a(this.a).setErrorDetail(fvv);
        return;
      } 
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("codigo") || paramString3.equals("mensagem")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */