import android.util.Log;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class kxw implements kxv {
  public void a(String paramString, kxl<kpu> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("certificateKey", paramString);
    gnp.a();
    paramString = gnp.a(hashMap);
    ir ir = gnp.a().a(kwr.BENEFICIARIES.getEndpoint() + "?" + paramString, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kxx(this, paramkxl, paramkxl1), ir);
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
  
  public void a(kpx paramkpx, kxl<kpy> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str2 = gnp.a(hashMap);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(paramkpx));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    String str1 = kwr.UPDATE_BENEFICIARY.getEndpoint() + "?" + str2;
    ir ir = gnp.a().a(str1, im.PUT, null, jSONObject1, true);
    gnv gnv = new gnv(new kxz(this, paramkxl, paramkxl1), ir);
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
  
  public void b(String paramString, kxl<kpv> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    gnp.a();
    String str = gnp.a(hashMap);
    paramString = String.format(kwr.LIST_BENEFICIARIES.getEndpoint(), new Object[] { paramString });
    Log.e("ENDPOINT", paramString + "?" + str);
    ir ir = gnp.a().a(paramString + "?" + str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kxy(this, paramkxl, paramkxl1), ir);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kxw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */