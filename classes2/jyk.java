import org.xml.sax.Attributes;

public class jyk extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jyk(jyj paramjyj) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyj.a(this.a) != null)
      jyj.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("segmento")) {
      this.c = false;
      jyj.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("imagem")) {
      this.c = false;
      jyj.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("dataAtualizacao")) {
      this.c = false;
      jyj.a(this.a).a(Long.parseLong(this.b.toString()));
    } 
    if (paramString3.equals("link")) {
      this.c = false;
      jyj.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("popup")) {
      this.c = false;
      jyj.a(this.a).a(Boolean.parseBoolean(this.b.toString()));
    } 
    if (paramString3.equals("dataInicioVigencia")) {
      this.c = false;
      jyj.a(this.a).b(Long.parseLong(this.b.toString()));
    } 
    if (paramString3.equals("dataFimVigencia")) {
      this.c = false;
      jyj.a(this.a).c(Long.parseLong(this.b.toString()));
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("segmento") || paramString3.equals("imagem") || paramString3.equals("dataAtualizacao") || paramString3.equals("link") || paramString3.equals("popup") || paramString3.equals("dataInicioVigencia") || paramString3.equals("dataFimVigencia")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */