import android.util.Log;
import java.io.InputStream;

public class fof extends hbm {
  private fnz b = new fnz();
  
  private String b() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:registrarOptinCanal>" + "<HeaderNMRequest>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</HeaderNMRequest>" + "</web:registrarOptinCanal>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fnz a() {
    try {
      String str = b();
      str = jcd.a(has.G(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          foc foc = new foc(inputStream);
          foc.b();
          this.b = foc.a();
          return this.b;
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      this.b.a(null);
      this.b.b(exception.getMessage());
    } 
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fof.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */