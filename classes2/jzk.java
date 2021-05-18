import org.xml.sax.Attributes;

public class jzk extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jzk(jzj paramjzj) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzj.a(this.a) != null)
      jzj.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigo")) {
      this.c = false;
      jzj.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("descricao")) {
      this.c = false;
      jzj.a(this.a).b(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("codigo") || paramString3.equals("descricao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */