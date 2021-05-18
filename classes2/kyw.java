import android.util.Log;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

public class kyw implements kyv {
  public void a(String paramString, kxl<List<kny>> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("certificateKey", paramString);
    gnp.a();
    paramString = gnp.a(hashMap);
    ir ir = gnp.a().a(kwr.COVERAGE.getEndpoint() + "?" + paramString, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kyx(this, paramkxl, paramkxl1), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        exception.printStackTrace();
        paramkxl1.a("");
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */