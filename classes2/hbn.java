import android.util.Log;
import java.io.InputStream;

public class hbn extends hbm {
  private String b() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:sorteioDesafio>" + "<SorteioDesafioRequest>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "</SorteioDesafioRequest>" + "</web:sorteioDesafio>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fwx a() {
    try {
      String str = b();
      str = jcd.a(has.E(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          kas kas = new kas(inputStream);
          kas.b();
          return kas.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      fwx fwx = new fwx();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fwx.setError(fvu);
      return fwx;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */