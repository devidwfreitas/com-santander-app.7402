import java.io.InputStream;

public class gaj extends hbm {
  private String b() {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("        <soapenv:Header/>").append("        <soapenv:Body>").append("                <web:listarTipoConta> ").append("                        <arg0> ").append("                                <connUuid>").append(this.a.i()).append("</connUuid>").append("                                <tokenSessao>").append(str1).append("</tokenSessao>").append("                                <tokenTransacao>").append(str2).append("</tokenTransacao>").append("                        </arg0>").append("                </web:listarTipoConta>").append("        </soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  private String c(gac paramgac) {
    StringBuilder stringBuilder = new StringBuilder();
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    stringBuilder.append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("        <soapenv:Header/>").append("        <soapenv:Body>").append("                <web:incluirDebitoAutomatico>").append("                        <arg0>").append("                                <contaDebito>").append("                                        <agencia>").append(paramgac.t()).append("</agencia>").append("                                        <banco>").append(paramgac.u()).append("</banco>").append("                                        <conta>").append(paramgac.v()).append("</conta>").append("                                </contaDebito>").append("                                <contaEmpresa>").append("                                        <agencia>").append(paramgac.x()).append("</agencia>").append("                                        <banco>").append(paramgac.y()).append("</banco>").append("                                        <conta>").append(paramgac.z()).append("</conta>").append("                                </contaEmpresa>").append("                                <avisoNaoDebito>").append(paramgac.o()).append("</avisoNaoDebito>").append("                                <idConsumidor>").append(paramgac.p()).append("</idConsumidor>").append("                                <produto>").append(paramgac.q()).append("</produto>").append("                                <subProduto>").append(paramgac.s()).append("</subProduto>").append("                                <historico>").append(paramgac.C()).append("</historico>").append("                                <valorMaxDebito>").append(naj.m(paramgac.D())).append("</valorMaxDebito>").append("                                <connUuid>").append(this.a.i()).append("</connUuid>").append("                                <tokenSessao>").append(str1).append("</tokenSessao>").append("                                <tokenTransacao>").append(str2).append("</tokenTransacao>").append("                        </arg0>").append("                </web:incluirDebitoAutomatico>").append("        </soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  private String d(gac paramgac) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("        <soapenv:Header/>").append("        <soapenv:Body>").append("                <web:listarEmpresasConveniadas> ").append("                        <arg0> ").append("                                <contaDebito> ").append("                                        <agencia>").append(paramgac.t()).append("</agencia>").append("                                        <banco>").append(paramgac.u()).append("</banco>").append("                                        <conta>").append(paramgac.v()).append("</conta>").append("                                </contaDebito> ").append("                                <produto>").append(paramgac.q()).append("</produto>").append("                                <subProduto>").append(paramgac.s()).append("</subProduto>").append("                                <connUuid>").append(this.a.i()).append("</connUuid>").append("                                <tokenSessao>").append(str1).append("</tokenSessao>").append("                                <tokenTransacao>").append(str2).append("</tokenTransacao>").append("                        </arg0>").append("                </web:listarEmpresasConveniadas>").append("        </soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  public gac a(gac paramgac) {
    try {
      String str = c(paramgac);
      str = jcd.a(has.O(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          gah gah = new gah(inputStream);
          gah.b();
          return gah.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      (new fvu()).setFaultstring(exception.getMessage());
    } 
    return paramgac;
  }
  
  public gag a() {
    try {
      String str = b();
      str = jcd.a(has.O(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          gam gam = new gam(inputStream);
          gam.b();
          return gam.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      gag gag = new gag();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      gag.a(fvu);
      return gag;
    } 
    return null;
  }
  
  public gad b(gac paramgac) {
    try {
      String str = d(paramgac);
      str = jcd.a(has.O(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          gak gak = new gak(inputStream);
          gak.b();
          return gak.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      gad gad = new gad();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      gad.a(fvu);
      return gad;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gaj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */