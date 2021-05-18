import org.xml.sax.Attributes;

public class jqt extends jxk {
  protected StringBuffer a = null;
  
  protected boolean b = false;
  
  public jqt(jqs paramjqs) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.b)
      this.a.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jqs.a(this.c) != null)
      jqs.a(this.c).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoRetorno")) {
      this.b = false;
      jqs.a(this.c).a(this.a.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.b = false;
      jqs.a(this.c).c(this.a.toString());
      return;
    } 
    if (paramString3.equals("dataHash")) {
      this.b = false;
      jqs.a(this.c).d(this.a.toString());
      return;
    } 
    if (paramString3.equals("referOper")) {
      this.b = false;
      jqs.a(this.c).b(this.a.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("return") || paramString3.equals("usuarioSNNMResponse"))
      jqs.a(this.c, new jqm()); 
    if (paramString3.equals("codigoRetorno")) {
      this.b = true;
      this.a = new StringBuffer();
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.b = true;
      this.a = new StringBuffer();
      return;
    } 
    if (paramString3.equals("dataHash")) {
      this.b = true;
      this.a = new StringBuffer();
      return;
    } 
    if (paramString3.equals("referOper")) {
      this.b = true;
      this.a = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jqt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */