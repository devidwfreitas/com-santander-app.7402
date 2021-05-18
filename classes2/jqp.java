import org.xml.sax.Attributes;

public class jqp extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private fuc h = null;
  
  public jqp(jqo paramjqo) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jqo.a(this.a) != null)
      jqo.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoClasResposta")) {
      this.c = false;
      this.h.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoPergunta")) {
      this.c = false;
      this.h.b(this.b.toString());
      return;
    } 
    if (paramString3.equals("descPergunta")) {
      this.c = false;
      this.h.c(this.b.toString());
      return;
    } 
    if (paramString3.equals("formatoResposta")) {
      this.c = false;
      this.h.d(this.b.toString());
      return;
    } 
    if (paramString3.equals("indRespostaCriptografada")) {
      this.c = false;
      this.h.f(this.b.toString());
      return;
    } 
    if (paramString3.equals("tamanhoResposta")) {
      this.c = false;
      this.h.g(this.b.toString());
      return;
    } 
    if (paramString3.equals("perguntaQuiz")) {
      this.c = false;
      jqo.a(this.a).a().add(this.h);
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("perguntaQuiz"))
      this.h = new fuc(); 
    if (paramString3.equals("codigoClasResposta") || paramString3.equals("codigoPergunta") || paramString3.equals("descPergunta") || paramString3.equals("formatoResposta") || paramString3.equals("indRespostaCriptografada") || paramString3.equals("tamanhoResposta")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jqp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */