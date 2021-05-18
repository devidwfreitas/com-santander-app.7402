import android.util.Log;
import java.io.InputStream;

public class hbj extends hbm {
  private String b(String paramString1, String paramString2) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarLancamentosFuturos>" + "<entrada>" + "<agencia>" + paramString1 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString2 + "</conta>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "<tokenTransacao>" + str2 + "</tokenTransacao>" + "</entrada>" + "</web:consultarLancamentosFuturos>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fva a(String paramString1, String paramString2) {
    try {
      paramString1 = b(paramString1, paramString2);
      paramString1 = jcd.a(has.r(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jxd jxd = new jxd(inputStream);
          jxd.b();
          return jxd.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */