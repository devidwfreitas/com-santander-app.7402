import org.xml.sax.Attributes;

public class hcx extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private StringBuffer h = null;
  
  public hcx(hcw paramhcw) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (hcw.b(this.a) != null)
      hcw.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaDesbloqueioCartao")) {
      hcw.b(this.a).a(hcw.a(this.a));
      return;
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      hcw.b(this.a).a(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("bandeira")) {
      this.c = false;
      hcw.a(this.a).h(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("codSituacao")) {
      this.c = false;
      hcw.a(this.a).i(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("descSituacao")) {
      this.c = false;
      hcw.a(this.a).j(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("descSubProd")) {
      this.c = false;
      hcw.a(this.a).k(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("imagem")) {
      this.c = false;
      hcw.a(this.a).a(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("indicaAdicional")) {
      this.c = false;
      hcw.a(this.a).l(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("indicaDebito")) {
      this.c = false;
      hcw.a(this.a).m(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("nomeTitular")) {
      this.c = false;
      hcw.a(this.a).n(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("numeroCartao")) {
      this.c = false;
      hcw.a(this.a).o(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("numeroReduzido") || paramString3.equals("numReduzido")) {
      this.c = false;
      hcw.a(this.a).p(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("numeroReduzidoScreen")) {
      this.c = false;
      hcw.a(this.a).r(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("tipoCartao")) {
      this.c = false;
      hcw.a(this.a).q(this.b.toString().trim());
      return;
    } 
    if (paramString3.equalsIgnoreCase("indicaCpf")) {
      this.c = false;
      hcw.a(this.a).v(this.b.toString().trim());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaDesbloqueioCartao")) {
      hcw.a(this.a, new hct());
      return;
    } 
    if (paramString3.equals("bandeira") || paramString3.equals("codSituacao") || paramString3.equals("descSituacao") || paramString3.equals("descSubProd") || paramString3.equals("imagem") || paramString3.equals("indicaAdicional") || paramString3.equals("indicaDebito") || paramString3.equals("nomeTitular") || paramString3.equals("numeroCartao") || paramString3.equals("numeroReduzido") || paramString3.equals("numReduzido") || paramString3.equalsIgnoreCase("indicaCpf") || paramString3.equals("tipoCartao") || paramString3.equals("numeroReduzidoScreen") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */