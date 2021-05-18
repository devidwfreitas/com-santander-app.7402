import org.xml.sax.Attributes;

public class jzy extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jzy(jzx paramjzx) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzx.a(this.a) != null)
      jzx.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("agencia")) {
      this.c = false;
      jzx.a(this.a).n(this.b.toString());
      return;
    } 
    if (paramString3.equals("agendamento")) {
      this.c = false;
      jzx.a(this.a).o(this.b.toString());
      return;
    } 
    if (paramString3.equals("conta")) {
      this.c = false;
      jzx.a(this.a).p(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      jzx.a(this.a).q(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jzx.a(this.a).r(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      jzx.a(this.a).s(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorTitulo")) {
      this.c = false;
      jzx.a(this.a).t(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeSacado")) {
      this.c = false;
      jzx.a(this.a).u(this.b.toString());
      return;
    } 
    if (paramString3.equals("cnpjCpfSacado")) {
      this.c = false;
      jzx.a(this.a).y(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoUF")) {
      this.c = false;
      jzx.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataLimitePagamentoTitulo")) {
      this.c = false;
      jzx.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataProtocolo")) {
      this.c = false;
      jzx.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataVencimentoTitulo")) {
      this.c = false;
      jzx.a(this.a).x(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoMunicipio")) {
      this.c = false;
      jzx.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("especieTitulo")) {
      this.c = false;
      jzx.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeCedente")) {
      this.c = false;
      jzx.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeRazaoSocialAvalista")) {
      this.c = false;
      jzx.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroIdentificacaoCartorio")) {
      this.c = false;
      jzx.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroProtocolo")) {
      this.c = false;
      jzx.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroTitulo")) {
      this.c = false;
      jzx.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorCustasEmolumentos")) {
      this.c = false;
      jzx.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorTotalTitulo")) {
      this.c = false;
      jzx.a(this.a).m(this.b.toString());
      return;
    } 
    if (paramString3.equals("autenticacaoBancaria")) {
      this.c = false;
      jzx.a(this.a).w(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataLimitePagamentoTitulo")) {
      this.c = false;
      jzx.a(this.a).x(this.b.toString());
      return;
    } 
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      jzx.a(this.a).z(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("agencia") || paramString3.equals("agendamento") || paramString3.equals("codBarra") || paramString3.equals("conta") || paramString3.equals("dataContabil") || paramString3.equals("dataLimitePagamentoTitulo") || paramString3.equals("codigoRetorno") || paramString3.equals("mensagemRetorno") || paramString3.equals("valorTitulo") || paramString3.equals("autenticacaoBancaria") || paramString3.equals("cnpjCpfSacado") || paramString3.equals("codigoUF") || paramString3.equals("dataLimitePagamentoTitulo") || paramString3.equals("dataProtocolo") || paramString3.equals("dataVencimentoTitulo") || paramString3.equals("descricaoMunicipio") || paramString3.equals("especieTitulo") || paramString3.equals("nomeCedente") || paramString3.equals("nomeRazaoSocialAvalista") || paramString3.equals("numeroIdentificacaoCartorio") || paramString3.equals("numeroProtocolo") || paramString3.equals("numeroTitulo") || paramString3.equals("valorCustasEmolumentos") || paramString3.equals("valorTotalTitulo") || paramString3.equals("nomeSacado") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */