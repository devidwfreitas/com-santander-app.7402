import org.xml.sax.Attributes;

public class jwz extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jwz(jwy paramjwy) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jwy.a(this.a) != null)
      jwy.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("saldoFundosComResgateAutomatico")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).l(paramString1);
    } 
    if (paramString3.equals("saldoContaCorrenteContaMax")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).c(paramString1);
    } 
    if (paramString3.equals("provisaoEncargos")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).j(paramString1);
    } 
    if (paramString3.equals("iofAcumuladosAteData")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).w(paramString1);
    } 
    if (paramString3.equals("saldoDisponivelTotal")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).r(paramString1);
    } 
    if (paramString3.equals("lancamentosProvisionadosDebito")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).f(paramString1);
    } 
    if (paramString3.equals("saldoBloqueado")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).h(paramString1);
    } 
    if (paramString3.equals("saldoBloqueadoJudicial")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).i(paramString1);
    } 
    if (paramString3.equals("saldoDisponivelContaCorrenteContaMax")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).k(paramString1);
    } 
    if (paramString3.equals("saldoTotalContaCorrenteContaMax")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).g(paramString1);
    } 
    if (paramString3.equals("saldoFundosComResgateAutomatico")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).l(paramString1);
    } 
    if (paramString3.equals("saldoBloqueioDia")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).d(paramString1);
    } 
    if (paramString3.equals("limiteDescricao1")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).n(paramString1);
    } 
    if (paramString3.equals("limiteDescricao2")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).p(paramString1);
    } 
    if (paramString3.equals("lancamentosProvisionadosCredito")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).e(paramString1);
    } 
    if (paramString3.equals("cpmfAcumulado")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).x(paramString1);
    } 
    if (paramString3.equals("desbloqueio2Dias")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).u(paramString1);
    } 
    if (paramString3.equals("desbloqueioMais2Dias")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).z(paramString1);
    } 
    if (paramString3.equals("limiteValor1")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).o(paramString1);
    } 
    if (paramString3.equals("limiteValor2")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).q(paramString1);
    } 
    if (paramString3.equals("jurosAcumuladosAteData")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).v(paramString1);
    } 
    if (paramString3.equals("saldoDisponivel")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).m(paramString1);
    } 
    if (paramString3.equals("cpmfProvisionadaSobreSaldo")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).y(paramString1);
    } 
    if (paramString3.equals("desbloqueio1Dia")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jwy.a(this.a).t(paramString1);
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.c = false;
      jwy.a(this.a).A(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("saldoFundosComResgateAutomatico") || paramString3.equals("saldoContaCorrenteContaMax") || paramString3.equals("provisaoEncargos") || paramString3.equals("iofAcumuladosAteData") || paramString3.equals("saldoDisponivelTotal") || paramString3.equals("lancamentosProvisionadosDebito") || paramString3.equals("saldoBloqueado") || paramString3.equals("saldoBloqueadoJudicial") || paramString3.equals("saldoDisponivelContaCorrenteContaMax") || paramString3.equals("saldoTotalContaCorrenteContaMax") || paramString3.equals("saldoBloqueioDia") || paramString3.equals("limiteDescricao1") || paramString3.equals("limiteDescricao2") || paramString3.equals("lancamentosProvisionadosCredito") || paramString3.equals("cpmfAcumulado") || paramString3.equals("desbloqueio2Dias") || paramString3.equals("desbloqueioMais2Dias") || paramString3.equals("limiteValor1") || paramString3.equals("limiteValor2") || paramString3.equals("jurosAcumuladosAteData") || paramString3.equals("saldoDisponivel") || paramString3.equals("cpmfProvisionadaSobreSaldo") || paramString3.equals("desbloqueio1Dia") || paramString3.equals("mensagemRetorno")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */