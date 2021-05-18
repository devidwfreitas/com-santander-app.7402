import android.util.Log;
import org.json.JSONObject;

public class ggp implements ggo {
  public void a(gkw paramgkw, String paramString) {
    ir ir = gnp.a().a(ggn.CARTEIRA_DIARIA_INVESTMENT_PORTFOLIO.getEndpoint() + paramString, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(paramgkw, ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ggp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */