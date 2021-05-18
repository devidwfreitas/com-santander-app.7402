import org.xml.sax.Attributes;

public class jxh extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jxh(jxg paramjxg) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxg.a(this.a) != null)
      jxg.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("agenciaDebitoDoSeguro")) {
      this.c = false;
      jxg.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("cnpjSeguradora")) {
      this.c = false;
      jxg.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaCorrenteDebitoDoSeguro")) {
      this.c = false;
      jxg.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("cpfOuCnpj")) {
      this.c = false;
      jxg.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataContratacao")) {
      this.c = false;
      jxg.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataVencimentoParcela")) {
      this.c = false;
      jxg.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoMotivoCancelamento")) {
      this.c = false;
      jxg.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("indicadorAdesao")) {
      this.c = false;
      jxg.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeProduto")) {
      this.c = false;
      jxg.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeSegurado")) {
      this.c = false;
      jxg.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeSeguradora")) {
      this.c = false;
      jxg.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroApolice")) {
      this.c = false;
      jxg.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroCertificado")) {
      this.c = false;
      jxg.a(this.a).n(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroProcessoSusep")) {
      this.c = false;
      jxg.a(this.a).o(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroProposta")) {
      this.c = false;
      jxg.a(this.a).p(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorPremioPago")) {
      this.c = false;
      jxg.a(this.a).q(this.b.toString());
      return;
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      jxg.a(this.a).r(this.b.toString());
      return;
    } 
    if (paramString3.equals("referoper")) {
      this.c = false;
      jxg.a(this.a).s(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("agenciaDebitoDoSeguro") || paramString3.equals("cnpjSeguradora") || paramString3.equals("contaCorrenteDebitoDoSeguro") || paramString3.equals("cpfOuCnpj") || paramString3.equals("dataContratacao") || paramString3.equals("dataVencimentoParcela") || paramString3.equals("descricaoMotivoCancelamento") || paramString3.equals("indicadorAdesao") || paramString3.equals("nomeProduto") || paramString3.equals("nomeSegurado") || paramString3.equals("nomeSeguradora") || paramString3.equals("numeroApolice") || paramString3.equals("numeroBanco") || paramString3.equals("numeroCertificado") || paramString3.equals("numeroProcessoSusep") || paramString3.equals("numeroProposta") || paramString3.equals("valorPremioPago") || paramString3.equals("tokenTransacao") || paramString3.equals("referoper")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */