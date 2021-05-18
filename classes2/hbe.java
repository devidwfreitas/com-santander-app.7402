import android.util.Log;
import java.io.InputStream;

public class hbe extends hbm {
  private String b(String paramString1, String paramString2) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarExtratoUltimos7Dias>" + "<ExtratoResultListRequest>" + "<agencia>" + paramString1 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString2 + "</conta>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "<tokenTransacao>" + str2 + "</tokenTransacao>" + "</ExtratoResultListRequest>" + "</web:consultarExtratoUltimos7Dias>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3, String paramString4) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarExtratoPorPeriodo>" + "<ExtratoResultListRequest>" + "<agencia>" + paramString1 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString2 + "</conta>" + "<dataFim>" + paramString4 + "</dataFim>" + "<dataInicio>" + paramString3 + "</dataInicio>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "<tokenTransacao>" + str2 + "</tokenTransacao>" + "</ExtratoResultListRequest>" + "</web:consultarExtratoPorPeriodo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fuy a(String paramString1, String paramString2) {
    try {
      paramString1 = b(paramString1, paramString2);
      paramString1 = jcd.a(has.l(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jxb jxb = new jxb(inputStream);
          jxb.b();
          return jxb.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      fuy fuy = new fuy();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuy.setError(fvu);
      return fuy;
    } 
    return null;
  }
  
  public fuy a(String paramString1, String paramString2, String paramString3, String paramString4) {
    try {
      paramString1 = b(paramString1, paramString2, paramString3, paramString4);
      paramString1 = jcd.a(has.l(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jxb jxb = new jxb(inputStream);
          jxb.b();
          return jxb.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fuy fuy = new fuy();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuy.setError(fvu);
      return fuy;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */