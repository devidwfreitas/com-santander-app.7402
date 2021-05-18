import android.util.Log;
import java.io.InputStream;

public class jrl extends hbm {
  private String b() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:getUsuarioSN>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</arg0>" + "</web:getUsuarioSN>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String c(jqk paramjqk) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:trocarSenha>" + "<TrocaSenhaRequest>" + "<newPwd>" + paramjqk.a() + "</newPwd>" + "<newPwdConfirm>" + paramjqk.b() + "</newPwdConfirm>" + "<oldPwd>" + paramjqk.c() + "</oldPwd>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</TrocaSenhaRequest>" + "</web:trocarSenha>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String d(jqk paramjqk) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:resetPwd>" + "<ResetPassWordRequest>" + "<identificacaoUsuario>" + paramjqk.d() + "</identificacaoUsuario>" + "<newPwd>" + paramjqk.a() + "</newPwd>" + "<newPwdConf>" + paramjqk.b() + "</newPwdConf>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<dataHash>" + "" + "</dataHash>" + "<requestId>" + "" + "</requestId>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</ResetPassWordRequest>" + "</web:resetPwd>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public jqm a() {
    try {
      String str = b();
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqs jqs = new jqs(inputStream);
          jqs.b();
          return jqs.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jqm jqm = new jqm();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqm.setError(fvu);
      return jqm;
    } 
    return null;
  }
  
  public jqm a(jqk paramjqk) {
    try {
      String str = c(paramjqk);
      str = jcd.a(has.E(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqs jqs = new jqs(inputStream);
          jqs.b();
          return jqs.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      jqm jqm = new jqm();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqm.setError(fvu);
      return jqm;
    } 
    return null;
  }
  
  public jqm b(jqk paramjqk) {
    try {
      String str = d(paramjqk);
      str = jcd.a(has.E(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqs jqs = new jqs(inputStream);
          jqs.b();
          return jqs.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jqm jqm = new jqm();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqm.setError(fvu);
      return jqm;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */