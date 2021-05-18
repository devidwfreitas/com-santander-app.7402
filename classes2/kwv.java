import android.util.Log;
import br.com.zup.multistatelayout.MultiStateLayout;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class kwv {
  private MultiStateLayout a;
  
  public kwv(MultiStateLayout paramMultiStateLayout) {
    this.a = paramMultiStateLayout;
  }
  
  private gkw<is> a(kxa paramkxa) {
    return new kww(this, paramkxa);
  }
  
  private void a(kxa paramkxa, String paramString, im paramim, JSONObject paramJSONObject) {
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", String.valueOf(mzx.a().c().get("appKey")));
      jSONObject2.put("Content-Type", "application/json");
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    JSONObject jSONObject1 = new JSONObject();
    if (paramJSONObject != null)
      jSONObject1 = paramJSONObject; 
    if (this.a != null)
      this.a.setState(aor.LOADING); 
    ir ir = gnp.a().a(paramString, paramim, jSONObject2, jSONObject1, true);
    gnv gnv = new gnv(a(paramkxa), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        paramkxa.a();
        return;
      }  
  }
  
  public void a(String paramString, kxa paramkxa) {
    a(paramkxa, kwr.SINISTER_DOCUMENTS.getEndpoint() + "/" + paramString, im.GET, null);
  }
  
  public void a(knv paramknv, kxa paramkxa) {
    a(paramkxa, kwr.SINISTER_DOCUMENTS.getEndpoint(), im.POST, new JSONObject((new ejm()).b(paramknv)));
  }
  
  public void a(kur paramkur, kxa paramkxa) {
    a(paramkxa, kwr.SINISTER_DOCUMENTS_DELETE.getEndpoint(), im.POST, new JSONObject((new ejm()).b(paramkur)));
  }
  
  public void a(kwo paramkwo, kxa paramkxa) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("claimNumber", paramkwo.a());
    hashMap.put("year", paramkwo.b());
    hashMap.put("branch", paramkwo.c());
    hashMap.put("lossNumber", paramkwo.d());
    hashMap.put("sequence", paramkwo.e());
    String str = gnp.a(hashMap);
    a(paramkxa, kwr.SINISTER_DOCUMENTS.getEndpoint() + "?" + str, im.GET, null);
  }
  
  public void a(kwq paramkwq, kxa paramkxa) {
    a(paramkxa, kwr.SINISTER_DOCUMENTS.getEndpoint(), im.PUT, new JSONObject((new ejm()).b(paramkwq)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kwv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */