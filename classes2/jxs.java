import org.xml.sax.Attributes;

public class jxs extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private fte h;
  
  private boolean i = false;
  
  public jxs(jxr paramjxr) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxr.a(this.a) != null)
      jxr.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listAplicacao")) {
      jxr.a(this.a).f().add(this.h);
      this.i = false;
      return;
    } 
    if (this.i) {
      if (paramString3.equals("dataAplicacao")) {
        this.c = false;
        this.h.a(this.b.toString());
        return;
      } 
      if (paramString3.equals("dataVencimento")) {
        this.c = false;
        this.h.b(this.b.toString());
        return;
      } 
      if (paramString3.equals("numeroOperacao")) {
        this.c = false;
        this.h.c(this.b.toString());
        return;
      } 
      if (paramString3.equals("taxaCDI")) {
        this.c = false;
        this.h.d(this.b.toString());
        return;
      } 
      if (paramString3.equals("valorBrutoAtualizado")) {
        this.c = false;
        this.h.e(this.b.toString());
        return;
      } 
      if (paramString3.equals("valorLiquido")) {
        this.c = false;
        this.h.f(this.b.toString());
        return;
      } 
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      jxr.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataAplicacao")) {
      this.c = false;
      jxr.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataContabil")) {
      this.c = false;
      jxr.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = false;
      jxr.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoSubProduto")) {
      this.c = false;
      jxr.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoMimimo")) {
      this.c = false;
      jxr.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorBrutoAtualizado")) {
      this.c = false;
      jxr.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorLiquido")) {
      this.c = false;
      jxr.a(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorMinimo")) {
      this.c = false;
      jxr.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("listAplicacao")) {
      jxr.a(this.a).f().add(this.h);
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("codigoRetorno") || paramString3.equals("dataAplicacao") || paramString3.equals("dataContabil") || paramString3.equals("dataVencimento") || paramString3.equals("descricaoSubProduto") || paramString3.equals("dataAplicacao") || paramString3.equals("dataVencimento") || paramString3.equals("numeroOperacao") || paramString3.equals("taxaCDI") || paramString3.equals("valorBrutoAtualizado") || paramString3.equals("valorLiquido") || paramString3.equals("saldoMimimo") || paramString3.equals("valorBrutoAtualizado") || paramString3.equals("valorLiquido") || paramString3.equals("valorMinimo")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("listAplicacao")) {
      this.h = new fte();
      this.i = true;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */