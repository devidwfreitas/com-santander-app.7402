import org.xml.sax.Attributes;

public class hez extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public hez(hey paramhey) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (hey.a(this.a) != null)
      hey.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    this.c = false;
    if (paramString3.equalsIgnoreCase("codigoRetorno")) {
      this.c = false;
      hey.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("mensagemAEA")) {
      this.c = false;
      hey.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("mensagemRetorno")) {
      this.c = false;
      hey.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("valorMiminoDPP")) {
      this.c = false;
      hey.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("tokenTransacao")) {
      this.c = false;
      hey.a(this.a).e(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equalsIgnoreCase("codigoRetorno") || paramString3.equalsIgnoreCase("mensagemAEA") || paramString3.equalsIgnoreCase("mensagemRetorno") || paramString3.equalsIgnoreCase("valorMiminoDPP") || paramString3.equalsIgnoreCase("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hez.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */