import org.xml.sax.Attributes;

public class jyg extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private boolean h;
  
  private ftu i;
  
  public jyg(jyf paramjyf) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyf.a(this.a) != null)
      jyf.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("tokenTransacao")) {
      this.c = false;
      jyf.a(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataVencimento")) {
      this.c = false;
      jyf.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("descricaoSubProduto")) {
      this.c = false;
      jyf.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("percentual")) {
      this.c = false;
      jyf.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("prazo")) {
      this.c = false;
      jyf.a(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("taxaCDI") && !this.h) {
      this.c = false;
      jyf.a(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoInteresse")) {
      this.c = false;
      jyf.a(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorAplicado")) {
      this.c = false;
      jyf.a(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("autenticacaoBancaria")) {
      this.c = false;
      jyf.a(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      jyf.a(this.a).h(this.b.toString());
      jyf.a(this.a).setFaultstring(this.b.toString());
      jyf.a(this.a).setFaultcode(this.b.toString());
      fvv fvv = new fvv();
      fvv.d(this.b.toString());
      jyf.a(this.a).setErrorDetail(fvv);
      return;
    } 
    if (this.h) {
      if (paramString3.equals("listaRemuneracao")) {
        this.h = false;
        jyf.a(this.a).i().add(this.i);
        return;
      } 
      if (paramString3.equals("observacao")) {
        this.c = false;
        this.i.b(this.b.toString());
        return;
      } 
      if (paramString3.equals("prazoFinal")) {
        this.c = false;
        this.i.c(this.b.toString());
        return;
      } 
      if (paramString3.equals("prazoInicial")) {
        this.c = false;
        this.i.d(this.b.toString());
        return;
      } 
      if (paramString3.equals("taxaCDI")) {
        this.c = false;
        this.i.a(this.b.toString());
        return;
      } 
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("dataVencimento") || paramString3.equals("descricaoSubProduto") || paramString3.equals("percentual") || paramString3.equals("prazo") || paramString3.equals("taxaCDI") || paramString3.equals("tipoInteresse") || paramString3.equals("valorAplicado") || paramString3.equals("observacao") || paramString3.equals("prazoFinal") || paramString3.equals("prazoInicial") || paramString3.equals("taxaCDI") || paramString3.equals("autenticacaoBancaria") || paramString3.equals("mensagemRetorno") || paramString3.equals("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("listaRemuneracao")) {
      this.i = new ftu();
      this.h = true;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */