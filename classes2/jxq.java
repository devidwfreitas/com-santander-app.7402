import org.xml.sax.Attributes;

public class jxq extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jxq(jxp paramjxp) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxp.a(this.a) != null)
      jxp.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("prazo")) {
      this.c = false;
      paramString1 = new String(this.b.toString());
      jxp.a(this.a).f().add(paramString1);
      return;
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      jxp.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoSubProduto")) {
      this.c = false;
      jxp.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("prazoMaximo")) {
      this.c = false;
      jxp.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorMinimo")) {
      this.c = false;
      jxp.a(this.a).h(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("dataContabil") || paramString3.equals("descricaoSubProduto") || paramString3.equals("prazo") || paramString3.equals("prazoMaximo") || paramString3.equals("valorMinimo")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */