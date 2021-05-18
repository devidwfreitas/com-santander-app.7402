import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import org.json.JSONObject;

public class kyt implements kys {
  public void a(krq paramkrq, String paramString, kxl<kto> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("productCode", paramkrq.a());
    hashMap.put("subproductCode", paramkrq.b());
    if (!TextUtils.isEmpty(paramString)) {
      hashMap.put("value", paramString);
      Log.e("value", paramString);
    } 
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str = gnp.a(hashMap);
    str = kwr.TERMS_CONDITIONS.getEndpoint() + "?" + str;
    ir ir = gnp.a().a(str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kyu(this, paramkxl, paramkxl1), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        paramkxl1.a("");
        return;
      }  
    paramkxl1.a("");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */