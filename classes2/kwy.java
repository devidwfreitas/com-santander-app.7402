import android.util.Log;
import br.com.zup.multistatelayout.MultiStateLayout;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class kwy {
  private MultiStateLayout a;
  
  private gne<String, Void, Object> b;
  
  public kwy(MultiStateLayout paramMultiStateLayout) {
    this.a = paramMultiStateLayout;
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
    gnv gnv = new gnv(b(paramkxa), ir);
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
  
  private gkw<is> b(kxa paramkxa) {
    return new kwz(this, paramkxa);
  }
  
  public void a(String paramString, kxa paramkxa) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("claimNumber", paramString);
    paramString = gnp.a(hashMap);
    a(paramkxa, kwr.SURVEY_ANSWERS.getEndpoint() + "?" + paramString, im.GET, null);
  }
  
  public void a(kvm paramkvm, kxa paramkxa) {
    a(paramkxa, kwr.SURVEY_ANSWERS.getEndpoint(), im.POST, new JSONObject((new ejm()).b(paramkvm)));
  }
  
  public void a(kxa paramkxa) {
    a(paramkxa, kwr.SURVEY_QUESTIONS.getEndpoint(), im.GET, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kwy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */