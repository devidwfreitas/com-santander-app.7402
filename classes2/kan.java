import org.xml.sax.Attributes;

public class kan extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public kan(kam paramkam) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (kam.a(this.a) != null)
      kam.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("arg1")) {
      this.c = false;
      kam.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("arg2")) {
      this.c = false;
      kam.a(this.a).a(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("arg1")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("arg2")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */