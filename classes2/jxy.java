import org.xml.sax.Attributes;

public class jxy extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private ftk h;
  
  public jxy(jxx paramjxx) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxx.a(this.a) != null)
      jxx.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jxx.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoProduto")) {
      this.c = false;
      this.h.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeProduto")) {
      this.c = false;
      this.h.b(this.b.toString());
      return;
    } 
    if (paramString3.equals("resgateCanal")) {
      this.c = false;
      this.h.c(this.b.toString());
      return;
    } 
    if (paramString3.equals("listaProdutos")) {
      jxx.a(this.a).a().add(this.h);
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("codigoRetorno") || paramString3.equals("codigoProduto") || paramString3.equals("nomeProduto") || paramString3.equals("resgateCanal")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("listaProdutos")) {
      this.h = new ftk();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */