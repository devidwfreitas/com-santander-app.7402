import org.xml.sax.Attributes;

public class hev extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public hev(heu paramheu) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (heu.a(this.a) != null)
      heu.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      heu.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      heu.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("cabeceraDelImpreso")) {
      this.c = false;
      heu.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("autentEletronic")) {
      this.c = false;
      heu.a(this.a).s(this.b.toString());
      return;
    } 
    if (paramString3.equals("fechaFinOrden")) {
      this.c = false;
      heu.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("fechaInicio")) {
      this.c = false;
      heu.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("fechaPrimTransf")) {
      this.c = false;
      heu.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("importeAbonado")) {
      this.c = false;
      heu.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("numIdentOper")) {
      this.c = false;
      heu.a(this.a).o(this.b.toString());
      return;
    } 
    if (paramString3.equals("divisaTraspaso")) {
      this.c = false;
      heu.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("autenticacaoBancaria")) {
      this.c = false;
      heu.a(this.a).t(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("codigoRetorno") || paramString3.equals("mensagemRetorno") || paramString3.equals("cabeceraDelImpreso") || paramString3.equals("autentEletronic") || paramString3.equals("fechaFinOrden") || paramString3.equals("fechaInicio") || paramString3.equals("fechaPrimTransf") || paramString3.equals("importeAbonado") || paramString3.equals("numIdentOper") || paramString3.equals("divisaTraspaso") || paramString3.equals("autenticacaoBancaria")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */