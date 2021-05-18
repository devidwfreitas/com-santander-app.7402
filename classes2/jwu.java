import org.xml.sax.Attributes;

public class jwu extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private fur h = null;
  
  public jwu(jwt paramjwt) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jwt.a(this.a) != null)
      jwt.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listApelido")) {
      jwt.a(this.a).a().add(this.h);
      return;
    } 
    if (paramString3.equals("apelido")) {
      this.c = false;
      this.h.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("cedente")) {
      this.c = false;
      this.h.b(this.b.toString());
      return;
    } 
    if (paramString3.equals("favorecido")) {
      this.c = false;
      this.h.c(this.b.toString());
      return;
    } 
    if (paramString3.equals("pgeCctr")) {
      this.c = false;
      this.h.d(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoApelido")) {
      this.c = false;
      this.h.e(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listApelido"))
      this.h = new fur(); 
    if (paramString3.equals("apelido") || paramString3.equals("cedente") || paramString3.equals("favorecido") || paramString3.equals("pgeCctr") || paramString3.equals("tipoApelido")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */