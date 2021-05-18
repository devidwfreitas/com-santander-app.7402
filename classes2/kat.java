import org.xml.sax.Attributes;

public class kat extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public kat(kas paramkas) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (kas.a(this.a) != null)
      kas.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      kas.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      kas.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("idCard")) {
      this.c = false;
      kas.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("desafio")) {
      this.c = false;
      kas.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("sequencia")) {
      this.c = false;
      kas.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataHash")) {
      this.c = false;
      kas.a(this.a).f(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("sorteioDesafioNMResponse"))
      kas.a(this.a, new fwx()); 
    if (paramString3.equals("codigoRetorno") || paramString3.equals("mensagemRetorno") || paramString3.equals("idCard") || paramString3.equals("desafio") || paramString3.equals("sequencia") || paramString3.equals("dataHash")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */