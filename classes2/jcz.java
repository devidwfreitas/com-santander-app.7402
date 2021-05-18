import android.app.Activity;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.net.URLEncoder;
import javax.xml.parsers.DocumentBuilderFactory;

public class jcz extends gne<Void, Void, Void> {
  private String a;
  
  private Activity b;
  
  private String c;
  
  private zx d;
  
  private String g;
  
  public jcz(Activity paramActivity, String paramString1, zx paramzx, String paramString2) {
    this.b = paramActivity;
    this.c = paramString1;
    this.d = paramzx;
    this.g = paramString2;
  }
  
  private static String a(String paramString) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\"><soapenv:Header/>" + "<soapenv:Body>" + "<web:obterTicketCorretora>" + "<arg0>" + "<connUuid>" + miq.C().i() + "</connUuid>" + "<tokenSessao>" + miq.C().j() + "</tokenSessao>" + "<tokenTransacao>" + paramString + "</tokenTransacao>" + "</arg0>" + "</web:obterTicketCorretora>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  protected Void a(Void... paramVarArgs) {
    try {
      String str = a(this.g);
      str = jcd.a(has.ap(), str, "", true);
      if (str != null) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes("UTF-8"));
        try {
          this.a = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(byteArrayInputStream).getElementsByTagName("ticket").item(0).getTextContent();
          return null;
        } catch (Exception exception) {
          Log.e(getClass().getSimpleName(), exception.toString(), exception);
          return null;
        } finally {
          byteArrayInputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    return null;
  }
  
  protected void a(Void paramVoid) {
    super.a(paramVoid);
    try {
      this.a = URLEncoder.encode(this.a, "UTF-8");
    } catch (Exception exception) {}
    if (this.a != null && !this.a.isEmpty())
      myo.a(this.b, this.c, this.a, this.d); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */