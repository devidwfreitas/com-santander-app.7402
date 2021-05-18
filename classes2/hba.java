import android.util.Log;
import java.io.InputStream;

public class hba extends hbm {
  private String a(String paramString1, String paramString2, String paramString3, String paramString4) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:listarApelido>" + "<arg0>" + "<codigoAgencia>" + paramString1 + "</codigoAgencia>" + "<contaCorrente>" + paramString2 + "</contaCorrente>" + "<tipoApelido>01</tipoApelido>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString4 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</arg0>" + "</web:listarApelido>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, fur paramfur) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:manutencaoApelido>" + "<arg0>" + "<codigoAgencia>" + paramString1 + "</codigoAgencia>" + "<contaCorrente>" + paramString2 + "</contaCorrente>" + "<tipoApelido>01</tipoApelido>" + "<tpAcao>" + paramString5 + "</tpAcao>" + "<favorecido>" + paramfur.c().toUpperCase() + "</favorecido>" + "<cedente>" + paramfur.b() + "</cedente>" + "<identificadorApelido>" + paramfur.a() + "</identificadorApelido>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString4 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</arg0>" + "</web:manutencaoApelido>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fuq a() {
    try {
      String str1 = mzr.e();
      String str2 = mzr.f();
      String str3 = this.a.j();
      str1 = a(str1, str2, this.a.f().m(), str3);
      str1 = jcd.a(has.d(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jwt jwt = new jwt(inputStream);
          jwt.b();
          return jwt.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      fuq fuq = new fuq();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuq.setError(fvu);
      return fuq;
    } 
    return null;
  }
  
  public boolean a(fur paramfur) {
    try {
      String str2 = mzr.e();
      String str3 = mzr.f();
      String str4 = this.a.j();
      String str1 = a(str2, str3, this.a.f().m(), str4, "A", paramfur);
      str1 = jcd.a(has.d(), str1, "", true);
      return (str1 != null);
    } catch (Exception exception) {
      return false;
    } 
  }
  
  public boolean b(fur paramfur) {
    try {
      String str2 = mzr.e();
      String str3 = mzr.f();
      String str4 = this.a.j();
      String str1 = a(str2, str3, this.a.f().m(), str4, "E", paramfur);
      str1 = jcd.a(has.d(), str1, "", true);
      return (str1 != null);
    } catch (Exception exception) {
      return false;
    } 
  }
  
  public boolean c(fur paramfur) {
    try {
      String str2 = mzr.e();
      String str3 = mzr.f();
      String str4 = this.a.j();
      String str1 = a(str2, str3, this.a.f().m(), str4, "I", paramfur);
      str1 = jcd.a(has.d(), str1, "", true);
      return (str1 != null);
    } catch (Exception exception) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */