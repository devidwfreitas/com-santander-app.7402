import java.io.InputStream;

public class hcy extends hbm {
  private String b(hct paramhct) {
    String str1 = this.a.j();
    mzr.e();
    mzr.f();
    String str2 = this.a.f().m();
    String str3 = this.a.i();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("        <soapenv:Header/>").append("        <soapenv:Body>").append("                <web:efetuarDesbloqueio> ").append("                        <arg0> ").append("                                <bandeira>").append(paramhct.h()).append("</bandeira>").append("                                <indicaAdicional>").append(paramhct.l().trim()).append("</indicaAdicional>").append("                                <indicaDebito>").append(paramhct.m()).append("</indicaDebito>").append("                                <indicaCpf>").append(paramhct.v()).append("</indicaCpf>").append("                                <nomeTitular>").append(paramhct.n().trim()).append("</nomeTitular>").append("                                <numCartao>").append(paramhct.o()).append("</numCartao>").append("                                <numReduzido>").append(paramhct.p()).append("</numReduzido>").append("                                <numCpf>").append(paramhct.w()).append("</numCpf>").append("                                <senhaCartao>").append(paramhct.s()).append("</senhaCartao>").append("                                <validadeCartaoYYYYMM>").append(paramhct.t()).append("</validadeCartaoYYYYMM>").append("                                <connUuid>").append(str3).append("</connUuid>").append("                                <tokenSessao>").append(str1).append("</tokenSessao>").append("                                <tokenTransacao>").append(str2).append("</tokenTransacao>").append("                        </arg0>").append("                </web:efetuarDesbloqueio>").append("        </soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  public hcs a() {
    try {
      String str = b();
      str = jcd.a(has.K(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          hcw hcw = new hcw(inputStream);
          hcw.b();
          hau.a().a(hcw.a());
          hau.a().e(Boolean.valueOf(true));
          return hcw.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      hcs hcs = new hcs();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      hcs.setError(fvu);
      return hcs;
    } 
    return null;
  }
  
  public hcs a(hct paramhct) {
    try {
      String str = b(paramhct);
      str = jcd.a(has.K(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          hcu hcu = new hcu(inputStream);
          hcu.b();
          return hcu.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      hcs hcs = new hcs();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      hcs.setError(fvu);
      return hcs;
    } 
    return null;
  }
  
  public String b() {
    String str1 = this.a.j();
    String str2 = mzr.e();
    String str3 = mzr.f();
    String str4 = this.a.f().m();
    String str5 = this.a.i();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("        <soapenv:Header/>").append("        <soapenv:Body>").append("                <web:listar> ").append("                        <arg0> ").append("                                <agencia>").append(str2).append("</agencia>").append("                                <conta>").append(str3).append("</conta>").append("                                <connUuid>").append(str5).append("</connUuid>").append("                                <tokenSessao>").append(str1).append("</tokenSessao>").append("                                <tokenTransacao>").append(str4).append("</tokenTransacao>").append("                        </arg0>").append("                </web:listar>").append("        </soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */