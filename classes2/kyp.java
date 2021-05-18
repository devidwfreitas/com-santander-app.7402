import android.util.Log;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class kyp implements kyo {
  private JSONObject a() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", miq.C().q());
      if (miq.C().f().y().b() != null) {
        jSONObject.put("challengeValue", nab.a().b(miq.C().f().y().b().g()));
        return jSONObject;
      } 
      if (miq.C().f().y().c() != null) {
        jSONObject.put("otp", nab.a().b(miq.C().f().y().c().c()));
        return jSONObject;
      } 
    } catch (Exception exception) {
      Log.e("ERRORJSON", exception.getMessage());
    } 
    return jSONObject;
  }
  
  public void a(kst paramkst, kxl<ksu> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str2 = gnp.a(hashMap);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(paramkst));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    String str1 = kwr.FORMALIZE.getEndpoint() + "?" + str2;
    ir ir = gnp.a().a(str1, im.POST, null, jSONObject1, true);
    gnv gnv = new gnv(new kyq(this, paramkxl, paramkxl1), ir);
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
  
  public void a(ksy paramksy, kxl<ksj> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str2 = gnp.a(hashMap);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(paramksy));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    String str1 = kwr.AUTHORIZE_PROPOSAL.getEndpoint() + "?" + str2;
    ir ir = gnp.a().a(str1, im.POST, a(), jSONObject1, true);
    gnv gnv = new gnv(new kyr(this, paramkxl, paramkxl1), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        paramkxl1.a("");
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */