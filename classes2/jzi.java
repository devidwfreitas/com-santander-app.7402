import org.xml.sax.Attributes;

public class jzi extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jzi(jzh paramjzh) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzh.b(this.a) != null)
      jzh.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("resultList"))
      jzh.b(this.a).g().add(jzh.a(this.a)); 
    if (paramString3.equals("SOE_EMAIL")) {
      this.c = false;
      jzh.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("TSOE_SEQ_END")) {
      this.c = false;
      jzh.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jzh.b(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      jzh.b(this.a).d(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("resultList"))
      jzh.a(this.a, new fun()); 
    if (paramString3.equals("codigoRetorno") || paramString3.equals("hash") || paramString3.equals("mensagemAEA") || paramString3.equals("mensagemRetorno") || paramString3.equals("OESC_001") || paramString3.equals("index") || paramString3.equals("maxResults") || paramString3.equals("nextIndex") || paramString3.equals("SOE_EMAIL") || paramString3.equals("TSOE_SEQ_END")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */