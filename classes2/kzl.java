import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

public class kzl implements kzk {
  public void a(kvp paramkvp, kxl<kvr> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("year", paramkvp.a());
    hashMap.put("branch", paramkvp.b());
    hashMap.put("lossNumber", Uri.encode(nab.a().b(paramkvp.c())));
    hashMap.put("sequence", paramkvp.d());
    String str = gnp.a(hashMap);
    str = kwr.SINISTER_DETAILS_URL.getEndpoint() + "?" + str;
    ir ir = gnp.a().a(str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kzm(this, paramkxl, paramkxl1), ir);
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
  
  public void b(kvp paramkvp, kxl<List<kvs>> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("year", paramkvp.a());
    hashMap.put("branch", paramkvp.b());
    hashMap.put("lossNumber", Uri.encode(nab.a().b(paramkvp.c())));
    hashMap.put("sequence", paramkvp.d());
    String str = gnp.a(hashMap);
    str = kwr.SINISTER_NOTE_URL.getEndpoint() + "?" + str;
    ir ir = gnp.a().a(str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kzn(this, paramkxl, paramkxl1), ir);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */