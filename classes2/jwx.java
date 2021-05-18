import org.xml.sax.Attributes;

public class jwx extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jwx(jww paramjww) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jww.a(this.a) != null)
      jww.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      jww.a(this.a).a(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */