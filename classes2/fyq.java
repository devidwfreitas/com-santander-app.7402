import org.xml.sax.Attributes;

public class fyq extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private fyk h = null;
  
  public fyq(fyp paramfyp) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (fyp.a(this.a) != null)
      fyp.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("perguntaQuiz")) {
      fyp.a(this.a).a().add(this.h);
      return;
    } 
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
    if (paramString3.equals("idGrupoPergunta")) {
      this.c = false;
      this.h.e(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      fyp.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataHoraOcorrencia")) {
      this.c = false;
      fyp.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      fyp.a(this.a).a(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("perguntaQuiz"))
      this.h = new fyk(); 
    if (paramString3.equals("codigoClasResposta") || paramString3.equals("codigoPergunta") || paramString3.equals("descPergunta") || paramString3.equals("formatoResposta") || paramString3.equals("indRespostaCriptografada") || paramString3.equals("tamanhoResposta") || paramString3.equals("idGrupoPergunta") || paramString3.equals("codigoRetorno") || paramString3.equals("dataHoraOcorrencia") || paramString3.equals("mensagemRetorno")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fyq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */