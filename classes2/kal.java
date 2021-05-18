import org.xml.sax.Attributes;

class kal extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private fwj h = null;
  
  private fwk i = null;
  
  private fwi j = null;
  
  private boolean k = false;
  
  private boolean l = false;
  
  private boolean m = false;
  
  private boolean n = false;
  
  private kal(kaj paramkaj) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (kaj.a(this.a) != null)
      kaj.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listAplicacao") && this.n) {
      this.n = false;
      this.i.g().add(this.j);
      return;
    } 
    if (paramString3.equals("listaProdutos") && this.m) {
      this.m = false;
      this.h.g().add(this.i);
      return;
    } 
    if (paramString3.equals("listaPosicaoConsolidada") && this.l) {
      this.l = false;
      return;
    } 
    if (paramString3.equals("listaPosicaoConsolidada") && this.k) {
      this.k = false;
      kaj.a(this.a).f().add(this.h);
      return;
    } 
    if (paramString3.equals("agencia") && this.k && !this.l) {
      this.c = false;
      this.h.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("conta") && this.k && !this.l) {
      this.c = false;
      this.h.b(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoRetorno") && this.l && !this.m) {
      this.c = false;
      this.h.g(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno") && this.l && !this.m) {
      this.c = false;
      this.h.h(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorAplicado") && this.l && !this.m) {
      this.c = false;
      this.h.c(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorBloqueado") && this.l && !this.m) {
      this.c = false;
      this.h.d(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorBruto") && this.l && !this.m) {
      this.c = false;
      this.h.e(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorLiquido") && this.l && !this.m) {
      this.c = false;
      this.h.f(this.b.toString());
      return;
    } 
    if (paramString3.equals("codigoProduto") && this.m && !this.n) {
      this.c = false;
      this.i.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeProduto") && this.m && !this.n) {
      this.c = false;
      this.i.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBloqueado") && this.m && !this.n) {
      this.c = false;
      this.i.c(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBruto") && this.m && !this.n) {
      this.c = false;
      this.i.d(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoLiquido") && this.m && !this.n) {
      this.c = false;
      this.i.e(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorAplicado") && this.m && !this.n) {
      this.c = false;
      this.i.f(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataEmissao") && this.n) {
      this.c = false;
      this.j.a(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataVencimento") && this.n) {
      this.c = false;
      this.j.b(this.b.toString());
      return;
    } 
    if (paramString3.equals("indPagamantoJuros") && this.n) {
      this.c = false;
      this.j.c(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroOperacao") && this.n) {
      this.c = false;
      this.j.d(this.b.toString());
      return;
    } 
    if (paramString3.equals("papel") && this.n) {
      this.c = false;
      this.j.e(this.b.toString());
      return;
    } 
    if (paramString3.equals("indexador") && this.n) {
      this.c = false;
      this.j.s(this.b.toString());
      return;
    } 
    if (paramString3.equals("estado") && this.n) {
      this.c = false;
      this.j.r(this.b.toString());
      return;
    } 
    if (paramString3.equals("porcent") && this.n) {
      this.c = false;
      this.j.f(this.b.toString());
      return;
    } 
    if (paramString3.equals("prazo") && this.n) {
      this.c = false;
      this.j.g(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBloqueado") && this.n) {
      this.c = false;
      this.j.q(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBruto") && this.n) {
      this.c = false;
      this.j.h(this.b.toString());
      return;
    } 
    if (paramString3.equals("tarifaVigente") && this.n) {
      this.c = false;
      this.j.i(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorAplicado") && this.n) {
      this.c = false;
      this.j.j(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorIOF") && this.n) {
      this.c = false;
      this.j.k(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorIR") && this.n) {
      this.c = false;
      this.j.l(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorLiquido") && this.n) {
      this.c = false;
      this.j.m(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorTaxaSaida") && this.n) {
      this.c = false;
      this.j.n(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaPosicaoConsolidada") && !this.k) {
      this.k = true;
      this.h = new fwj();
      return;
    } 
    if (paramString3.equals("listaPosicaoConsolidada") && !this.l) {
      this.l = true;
      return;
    } 
    if (paramString3.equals("listaProdutos") && this.l && !this.m) {
      this.m = true;
      this.i = new fwk();
      return;
    } 
    if (paramString3.equals("listAplicacao") && this.m && !this.n) {
      this.n = true;
      this.j = new fwi();
      return;
    } 
    if (paramString3.equals("agencia") || paramString3.equals("conta") || paramString3.equals("codigoRetorno") || paramString3.equals("mensagemRetorno") || paramString3.equals("codigoProduto") || paramString3.equals("dataEmissao") || paramString3.equals("dataVencimento") || paramString3.equals("indPagamantoJuros") || paramString3.equals("numeroOperacao") || paramString3.equals("papel") || paramString3.equals("porcent") || paramString3.equals("prazo") || paramString3.equals("saldoBruto") || paramString3.equals("tarifaVigente") || paramString3.equals("valorAplicado") || paramString3.equals("valorIOF") || paramString3.equals("valorIR") || paramString3.equals("valorLiquido") || paramString3.equals("valorTaxaSaida") || paramString3.equals("nomeProduto") || paramString3.equals("saldoBloqueado") || paramString3.equals("saldoBruto") || paramString3.equals("saldoLiquido") || paramString3.equals("valorAplicado") || paramString3.equals("valorBloqueado") || paramString3.equals("valorBruto") || paramString3.equals("indexador") || paramString3.equals("estado") || paramString3.equals("valorLiquido")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */