import org.xml.sax.Attributes;

public class jxe extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jxe(jxd paramjxd) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxd.a(this.a) != null)
      jxd.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("OESC_001")) {
      this.c = false;
      jxd.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("index")) {
      this.c = false;
      jxd.b(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("maxResults")) {
      this.c = false;
      jxd.b(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("nextIndex")) {
      this.c = false;
      jxd.b(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("paginator")) {
      this.c = false;
      jxd.a(this.a).a(jxd.b(this.a));
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jxd.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigo")) {
      this.c = false;
      jxd.c(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("data")) {
      this.c = false;
      jxd.c(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("descHistorico")) {
      this.c = false;
      jxd.c(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("importe")) {
      this.c = false;
      jxd.c(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("indCarAbo")) {
      this.c = false;
      jxd.c(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("numDocumento")) {
      this.c = false;
      jxd.c(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("listaLancamentosFuturos")) {
      this.c = false;
      jxd.a(this.a).g().add(jxd.c(this.a));
      return;
    } 
    if (paramString3.equals("mensagemAEA")) {
      this.c = false;
      jxd.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      jxd.a(this.a).d(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("paginator")) {
      jxd.a(this.a, new fvl());
      return;
    } 
    if (paramString3.equals("listaLancamentosFuturos")) {
      jxd.a(this.a, new fvc());
      return;
    } 
    if (paramString3.equals("OESC_001") || paramString3.equals("paginator") || paramString3.equals("codigoRetorno") || paramString3.equals("codigo") || paramString3.equals("data") || paramString3.equals("descHistorico") || paramString3.equals("importe") || paramString3.equals("indCarAbo") || paramString3.equals("numDocumento") || paramString3.equals("mensagemAEA") || paramString3.equals("mensagemRetorno") || paramString3.equals("index") || paramString3.equals("maxResults") || paramString3.equals("nextIndex")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */