import org.xml.sax.Attributes;

public class jxj extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private fvt h = null;
  
  public jxj(jxi paramjxi) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxi.a(this.a) != null)
      jxi.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaCodigoMotivo")) {
      jxi.a(this.a).p().add(this.h);
      return;
    } 
    if (paramString3.equals("codigoMotivoCancelamento")) {
      this.c = false;
      this.h.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoMotivoCancelamento")) {
      this.c = false;
      this.h.b(this.b.toString());
      return;
    } 
    if (paramString3.equals("cnpjSeguradora")) {
      this.c = false;
      jxi.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaCorrente")) {
      this.c = false;
      jxi.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("cpfOuCnpj")) {
      this.c = false;
      jxi.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataContratacao")) {
      this.c = false;
      jxi.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataFimVigenciaProposta")) {
      this.c = false;
      jxi.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataVencimentoParcela")) {
      this.c = false;
      jxi.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("indicadorAdesao")) {
      this.c = false;
      jxi.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeProduto")) {
      this.c = false;
      jxi.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeSegurado")) {
      this.c = false;
      jxi.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeSeguradora")) {
      this.c = false;
      jxi.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroAgencia")) {
      this.c = false;
      jxi.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroBanco")) {
      this.c = false;
      jxi.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroCertificado")) {
      this.c = false;
      jxi.a(this.a).m(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroProposta")) {
      this.c = false;
      jxi.a(this.a).n(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorPremioPago")) {
      this.c = false;
      jxi.a(this.a).o(this.b.toString());
      return;
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaCodigoMotivo"))
      this.h = new fvt(); 
    if (paramString3.equals("cnpjSeguradora") || paramString3.equals("contaCorrente") || paramString3.equals("cpfOuCnpj") || paramString3.equals("dataContratacao") || paramString3.equals("dataFimVigenciaProposta") || paramString3.equals("dataVencimentoParcela") || paramString3.equals("indicadorAdesao") || paramString3.equals("nomeProduto") || paramString3.equals("nomeSegurado") || paramString3.equals("nomeSeguradora") || paramString3.equals("numeroAgencia") || paramString3.equals("numeroBanco") || paramString3.equals("numeroCertificado") || paramString3.equals("numeroProposta") || paramString3.equals("valorPremioPago") || paramString3.equals("codigoMotivoCancelamento") || paramString3.equals("descricaoMotivoCancelamento") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */