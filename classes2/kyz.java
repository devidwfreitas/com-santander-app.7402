import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class kyz implements kyy {
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, kxk paramkxk, kxl<String> paramkxl) {
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject1.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("year", paramString2);
      jSONObject2.put("branch", paramString3);
      jSONObject2.put("lossNumber", nab.a().b(paramString4));
      jSONObject2.put("sequence", paramString5);
      jSONObject2.put("documentCode", paramString1);
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.UPDATE_DOCUMENT_STATUS.getEndpoint(), im.POST, jSONObject1, jSONObject2, true);
    gnv gnv = new gnv(new kzd(this, paramkxk, paramkxl), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void a(knv paramknv, kxl<kob> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", String.valueOf(mzx.a().c().get("appKey")));
      jSONObject.put("Content-Type", "application/json");
    } catch (JSONException jSONException1) {
      jSONException1.printStackTrace();
    } 
    try {
      JSONObject jSONObject1 = new JSONObject((new ejm()).b(paramknv));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONException = null;
    } 
    ir ir = gnp.a().a(kwr.SINISTER_DOCUMENTS.getEndpoint(), im.POST, jSONObject, (JSONObject)jSONException, true);
    gnv gnv = new gnv(new kzc(this, paramkxl, paramkxl1), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        paramkxl1.a("");
        return;
      }  
  }
  
  public void a(kvp paramkvp, kxl<List<kuw>> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("year", paramkvp.a());
    hashMap.put("branch", paramkvp.b());
    hashMap.put("lossNumber", Uri.encode(nab.a().b(paramkvp.c())));
    hashMap.put("sequence", paramkvp.d());
    String str = gnp.a(hashMap);
    str = kwr.LIST_DOCUMENTS.getEndpoint() + "?" + str;
    ir ir = gnp.a().a(str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kza(this, paramkxl, paramkxl1), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        paramkxl1.a("");
        return;
      }  
  }
  
  public void a(kwo paramkwo, kxl<List<kwj>> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("claimNumber", paramkwo.a());
    hashMap.put("year", paramkwo.b());
    hashMap.put("branch", paramkwo.c());
    hashMap.put("lossNumber", paramkwo.d());
    hashMap.put("sequence", paramkwo.e());
    String str = gnp.a(hashMap);
    str = kwr.SINISTER_DOCUMENTS.getEndpoint() + "?" + str;
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("X-Application-Key", String.valueOf(mzx.a().c().get("appKey")));
      jSONObject1.put("Content-Type", "application/json");
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    JSONObject jSONObject2 = new JSONObject();
    ir ir = gnp.a().a(str, im.GET, jSONObject1, jSONObject2, true);
    gnv gnv = new gnv(new kzb(this, paramkxl, paramkxl1), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        paramkxl1.a("");
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */