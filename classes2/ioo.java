import org.xml.sax.Attributes;

public class ioo extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public ioo(ion paramion) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (ion.a(this.a) != null)
      ion.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("pais")) {
      this.c = false;
      ion.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataIni")) {
      this.c = false;
      ion.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataFim")) {
      this.c = false;
      ion.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      ion.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("autenticacaoBancaria")) {
      this.c = false;
      ion.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      ion.a(this.a).f(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("pais") || paramString3.equals("dataIni") || paramString3.equals("dataFim") || paramString3.equals("codigoRetorno") || paramString3.equals("autenticacaoBancaria") || paramString3.equals("mensagemRetorno")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ioo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */