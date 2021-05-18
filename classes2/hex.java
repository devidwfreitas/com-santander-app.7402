import org.xml.sax.Attributes;

public class hex extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private heq h = null;
  
  public hex(hew paramhew) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (hew.a(this.a) != null)
      hew.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    this.c = false;
    if (paramString3.equals("contasProgramadas")) {
      this.c = false;
      hew.a(this.a).d().add(this.h);
      return;
    } 
    if (paramString3.equals("codigoRetorno")) {
      this.c = false;
      hew.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemAEA")) {
      this.c = false;
      hew.a(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      hew.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("agenciaCtaTransferencia")) {
      this.c = false;
      this.h.c(this.b.toString());
      return;
    } 
    if (paramString3.equals("agenciaPoupanca")) {
      this.c = false;
      this.h.d(this.b.toString());
      return;
    } 
    if (paramString3.equals("bancoPoupanca")) {
      this.c = false;
      this.h.e(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaCorrente")) {
      this.c = false;
      this.h.f(this.b.toString());
      return;
    } 
    if (paramString3.equals("contaPoupanca")) {
      this.c = false;
      this.h.g(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataAberturaPoupanca")) {
      this.c = false;
      this.h.h(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataCadastramento")) {
      this.c = false;
      this.h.i(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataFimTransf")) {
      this.c = false;
      this.h.j(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataInicioTransf")) {
      this.c = false;
      this.h.k(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataProximoDebito")) {
      this.c = false;
      this.h.l(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataUltimoDebito")) {
      this.c = false;
      this.h.m(this.b.toString());
      return;
    } 
    if (paramString3.equals("diaDebito")) {
      this.c = false;
      this.h.n(this.b.toString());
      return;
    } 
    if (paramString3.equals("indicadorTitularidade")) {
      this.c = false;
      this.h.o(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeTitularConta")) {
      this.c = false;
      this.h.p(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroSequencia")) {
      this.c = false;
      this.h.q(this.b.toString());
      return;
    } 
    if (paramString3.equals("numeroVezesTransf")) {
      this.c = false;
      this.h.r(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorTransferencia")) {
      this.c = false;
      this.h.s(this.b.toString());
      return;
    } 
    if (paramString3.equalsIgnoreCase("tokenTransacao")) {
      this.c = false;
      hew.a(this.a).d(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("contasProgramadas"))
      this.h = new heq(); 
    if (paramString3.equals("codigoRetorno") || paramString3.equals("mensagemAEA") || paramString3.equalsIgnoreCase("mensagemRetorno") || paramString3.equalsIgnoreCase("agenciaCtaTransferencia") || paramString3.equalsIgnoreCase("agenciaPoupanca") || paramString3.equalsIgnoreCase("bancoPoupanca") || paramString3.equalsIgnoreCase("contaCorrente") || paramString3.equalsIgnoreCase("contaPoupanca") || paramString3.equalsIgnoreCase("dataAberturaPoupanca") || paramString3.equalsIgnoreCase("dataCadastramento") || paramString3.equalsIgnoreCase("dataFimTransf") || paramString3.equalsIgnoreCase("dataInicioTransf") || paramString3.equalsIgnoreCase("dataProximoDebito") || paramString3.equalsIgnoreCase("dataUltimoDebito") || paramString3.equalsIgnoreCase("diaDebito") || paramString3.equalsIgnoreCase("indicadorTitularidade") || paramString3.equalsIgnoreCase("nomeTitularConta") || paramString3.equalsIgnoreCase("numeroSequencia") || paramString3.equalsIgnoreCase("numeroVezesTransf") || paramString3.equalsIgnoreCase("valorTransferencia") || paramString3.equalsIgnoreCase("tokenTransacao")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */