import android.util.Log;
import java.io.InputStream;

public class jrk extends hbm {
  private String c() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:solicitarNovoCartao>" + "<SolicitarNovoCartaoRequest>" + "<requestId></requestId>" + "<dataHash></dataHash>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</SolicitarNovoCartaoRequest>" + "</web:solicitarNovoCartao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String c(jqi paramjqi) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:ativarCso>" + "<AtivarCartaoRequest>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<idCartao>" + paramjqi.j() + "</idCartao>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</AtivarCartaoRequest>" + "</web:ativarCso>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String d() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:getOfertaCSO>" + "<OfertaCSONMRequest>" + "<requestId></requestId>" + "<dataHash></dataHash>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</OfertaCSONMRequest>" + "</web:getOfertaCSO>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String d(jqi paramjqi) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:buscaDispositivos>" + "<BuscaDispositivosRequest>" + "<requestId></requestId>" + "<dataHash></dataHash>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "<Pernumper>" + hau.a().g().d() + "</Pernumper>" + "<IdUser>" + hau.a().g().a() + "</IdUser>" + "</BuscaDispositivosRequest>" + "</web:buscaDispositivos>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public jqj a() {
    try {
      String str = c();
      str = jcd.a(has.E(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqq jqq = new jqq(inputStream);
          jqq.b();
          return jqq.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jqj jqj = new jqj();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqj.setError(fvu);
      return jqj;
    } 
    return null;
  }
  
  public jqj a(jqi paramjqi) {
    try {
      String str = c(paramjqi);
      str = jcd.a(has.E(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqq jqq = new jqq(inputStream);
          jqq.b();
          return jqq.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      jqj jqj = new jqj();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqj.setError(fvu);
      return jqj;
    } 
    return null;
  }
  
  public jqj b() {
    try {
      String str = d();
      str = jcd.a(has.E(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqq jqq = new jqq(inputStream);
          jqq.b();
          return jqq.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jqj jqj = new jqj();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqj.setError(fvu);
      return jqj;
    } 
    return null;
  }
  
  public jqj b(jqi paramjqi) {
    try {
      String str = d(paramjqi);
      str = jcd.a(has.E(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqq jqq = new jqq(inputStream);
          jqq.b();
          return jqq.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jqj jqj = new jqj();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqj.setError(fvu);
      return jqj;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */