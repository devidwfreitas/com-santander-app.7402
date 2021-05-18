import android.util.Log;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class hbb extends hbm {
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:buscarSaldoTablet>" + "<arg0>" + "<agencia>" + paramString2 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString3 + "</conta>" + "<penumper>" + paramString4 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString5 + "</tokenTransacao>" + "<dtFim>" + paramString7 + "</dtFim>" + "<dtIni>" + paramString6 + "</dtIni>" + "</arg0>" + "</web:buscarSaldoTablet>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fuv a() {
    try {
      String str1 = this.a.j();
      String str2 = mzr.e();
      String str3 = mzr.f();
      String str4 = this.a.f().m();
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(new Date());
      calendar.setTime(new Date());
      calendar.add(5, -6);
      str1 = a(str1, str2, str3, "", str4, simpleDateFormat.format(new Date(calendar.getTimeInMillis())), simpleDateFormat.format(new Date()));
      str1 = jcd.a(has.h(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
      } else {
        return null;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fuv = new fuv();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuv.setError(fvu);
      return fuv;
    } 
    fuv fuv = fuv.a();
  }
  
  public String a(String paramString1, String paramString2, String paramString3, String paramString4) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarSaldo>" + "<SaldoContaRequest>" + "<agencia>" + paramString1 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString2 + "</conta>" + "<tokenSessao>" + paramString3 + "</tokenSessao>" + "<tokenTransacao>" + paramString4 + "</tokenTransacao>" + "</SaldoContaRequest>" + "</web:consultarSaldo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public jxa a(String paramString1, String paramString2) {
    try {
      paramString1 = a(paramString1, paramString2, this.a.j(), this.a.f().m());
      paramString1 = jcd.a(has.l(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jwy jwy = new jwy(inputStream);
          jwy.b();
          return jwy.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      jxa jxa = new jxa();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jxa.setError(fvu);
      return jxa;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */