import org.xml.sax.Attributes;

public class jya extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jya(jxz paramjxz) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxz.a(this.a) != null)
      jxz.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("tipoOperacao")) {
      this.c = false;
      jxz.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoBanco")) {
      this.c = false;
      jxz.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("agencia")) {
      this.c = false;
      jxz.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroConta")) {
      this.c = false;
      jxz.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoProduto")) {
      this.c = false;
      jxz.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("penumpe")) {
      this.c = false;
      jxz.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoDocumento")) {
      this.c = false;
      jxz.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoAceite")) {
      this.c = false;
      jxz.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("penumpe")) {
      this.c = false;
      jxz.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoFormulario")) {
      this.c = false;
      jxz.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroVersao")) {
      this.c = false;
      jxz.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataInclusaoDocumento")) {
      this.c = false;
      jxz.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoUsuario")) {
      this.c = false;
      jxz.a(this.a).m(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoCanal")) {
      this.c = false;
      jxz.a(this.a).n(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoTerminal")) {
      this.c = false;
      jxz.a(this.a).o(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jxz.a(this.a).p(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoErro")) {
      this.c = false;
      jxz.a(this.a).q(this.b.toString());
      return;
    } 
    if (paramString3.equals("sqlCode")) {
      this.c = false;
      jxz.a(this.a).r(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      jxz.a(this.a).u(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeTabela")) {
      this.c = false;
      jxz.a(this.a).s(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("tipoOperacao") || paramString3.equals("codigoBanco") || paramString3.equals("agencia") || paramString3.equals("numeroConta") || paramString3.equals("codigoProduto") || paramString3.equals("codigoSubProduto") || paramString3.equals("penumpe") || paramString3.equals("tipoDocumento") || paramString3.equals("tipoAceite") || paramString3.equals("codigoFormulario") || paramString3.equals("numeroVersao") || paramString3.equals("dataInclusaoDocumento") || paramString3.equals("codigoUsuario") || paramString3.equals("codigoCanal") || paramString3.equals("codigoTerminal") || paramString3.equals("codigoRetorno") || paramString3.equals("descricaoErro") || paramString3.equals("sqlCode") || paramString3.equals("nomeTabela") || paramString3.equals("mensagemRetorno") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jya.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */