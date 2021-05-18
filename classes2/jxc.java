import org.xml.sax.Attributes;

public class jxc extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jxc(jxb paramjxb) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jxb.b(this.a) != null)
      jxb.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("lancamentos")) {
      jxb.b(this.a).y().add(jxb.a(this.a));
      return;
    } 
    if (paramString3.equals("saldoFundosComResgateAutomatico")) {
      this.c = false;
      jxb.b(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoContaCorrenteContaMax")) {
      this.c = false;
      jxb.b(this.a).b(this.b.toString());
      return;
    } 
    if (paramString3.equals("provisaoEncargos")) {
      this.c = false;
      jxb.b(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("iofAcumuladosAteData")) {
      this.c = false;
      jxb.b(this.a).d(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoDisponivelTotal")) {
      this.c = false;
      jxb.b(this.a).e(this.b.toString());
      return;
    } 
    if (paramString3.equals("lancamentosProvisionadosDebito")) {
      this.c = false;
      jxb.b(this.a).f(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBloqueado")) {
      this.c = false;
      jxb.b(this.a).g(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBloqueadoJudicial")) {
      this.c = false;
      jxb.b(this.a).h(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoDisponivelContaCorrenteContaMax")) {
      this.c = false;
      jxb.b(this.a).i(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoTotalContaCorrenteContaMax")) {
      this.c = false;
      jxb.b(this.a).j(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoBloqueioDia")) {
      this.c = false;
      jxb.b(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("limiteDescricao1")) {
      this.c = false;
      jxb.b(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("limiteDescricao2")) {
      this.c = false;
      jxb.b(this.a).m(this.b.toString());
      return;
    } 
    if (paramString3.equals("lancamentosProvisionadosCredito")) {
      this.c = false;
      jxb.b(this.a).n(this.b.toString());
      return;
    } 
    if (paramString3.equals("cpmfAcumulado")) {
      this.c = false;
      jxb.b(this.a).o(this.b.toString());
      return;
    } 
    if (paramString3.equals("desbloqueio2Dias")) {
      this.c = false;
      jxb.b(this.a).p(this.b.toString());
      return;
    } 
    if (paramString3.equals("desbloqueioMais2Dias")) {
      this.c = false;
      jxb.b(this.a).q(this.b.toString());
      return;
    } 
    if (paramString3.equals("limiteValor1")) {
      this.c = false;
      jxb.b(this.a).r(this.b.toString());
      return;
    } 
    if (paramString3.equals("limiteValor2")) {
      this.c = false;
      jxb.b(this.a).s(this.b.toString());
      return;
    } 
    if (paramString3.equals("jurosAcumuladosAteData")) {
      this.c = false;
      jxb.b(this.a).t(this.b.toString());
      return;
    } 
    if (paramString3.equals("saldoDisponivel")) {
      this.c = false;
      jxb.b(this.a).u(this.b.toString());
      return;
    } 
    if (paramString3.equals("cpmfProvisionadaSobreSaldo")) {
      this.c = false;
      jxb.b(this.a).v(this.b.toString());
      return;
    } 
    if (paramString3.equals("desbloqueio1Dia")) {
      this.c = false;
      jxb.b(this.a).w(this.b.toString());
      return;
    } 
    if (paramString3.equals("historico")) {
      this.c = false;
      jxb.a(this.a).setHistorico(this.b.toString());
      return;
    } 
    if (paramString3.equals("docto")) {
      this.c = false;
      jxb.a(this.a).setDocto(this.b.toString());
      return;
    } 
    if (paramString3.equals("valor")) {
      this.c = false;
      jxb.a(this.a).setValor(this.b.toString());
      return;
    } 
    if (paramString3.equals("data")) {
      this.c = false;
      jxb.a(this.a).setData(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("lancamentos")) {
      jxb.a(this.a, new fve());
      return;
    } 
    if (paramString3.equals("saldoFundosComResgateAutomatico") || paramString3.equals("saldoContaCorrenteContaMax") || paramString3.equals("provisaoEncargos") || paramString3.equals("iofAcumuladosAteData") || paramString3.equals("saldoDisponivelTotal") || paramString3.equals("lancamentosProvisionadosDebito") || paramString3.equals("saldoBloqueado") || paramString3.equals("saldoBloqueadoJudicial") || paramString3.equals("saldoTotalContaCorrenteContaMax") || paramString3.equals("saldoBloqueioDia") || paramString3.equals("limiteDescricao1") || paramString3.equals("limiteDescricao2") || paramString3.equals("lancamentosProvisionadosCredito") || paramString3.equals("cpmfAcumulado") || paramString3.equals("desbloqueio2Dias") || paramString3.equals("desbloqueioMais2Dias") || paramString3.equals("limiteValor1") || paramString3.equals("limiteValor2") || paramString3.equals("jurosAcumuladosAteData") || paramString3.equals("saldoDisponivel") || paramString3.equals("cpmfProvisionadaSobreSaldo") || paramString3.equals("desbloqueio1Dia") || paramString3.equals("saldoBloqueadoJudicial") || paramString3.equals("historico") || paramString3.equals("docto") || paramString3.equals("valor") || paramString3.equals("data")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */