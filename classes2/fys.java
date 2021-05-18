import org.xml.sax.Attributes;

public class fys extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private fyl h = null;
  
  public fys(fyr paramfyr) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (fyr.a(this.a) != null)
      fyr.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      fyr.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      fyr.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataHash")) {
      this.c = false;
      fyr.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("listaAgenciaContasCorrente")) {
      this.c = false;
      fyr.a(this.a).e().add(this.h);
      return;
    } 
    if (paramString3.equals("agencia")) {
      this.c = false;
      this.h = new fyl();
      this.h.b(this.b.toString());
      return;
    } 
    if (paramString3.equals("conta")) {
      this.c = false;
      this.h.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("qtdeTentativaRestanteQuiz")) {
      this.c = false;
      fyr.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("qtdeTentativaTotalQuiz")) {
      this.c = false;
      fyr.a(this.a).e(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("quizRespostaNMResponse"))
      this.h = new fyl(); 
    if (paramString3.equals("codigoRetorno") || paramString3.equals("mensagemRetorno") || paramString3.equals("dataHash") || paramString3.equals("listaAgenciaContasCorrente") || paramString3.equals("agencia") || paramString3.equals("conta") || paramString3.equals("qtdeTentativaRestanteQuiz") || paramString3.equals("qtdeTentativaTotalQuiz")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fys.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */