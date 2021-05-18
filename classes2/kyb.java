import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public class kyb implements kya {
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, kxl<kwd> paramkxl, kxl<String> paramkxl1) {
    paramString1 = String.format(kwr.CHECK_CONTESTATION.getEndpoint(), new Object[] { paramString1, paramString2, paramString3, paramString4 });
    ir ir = gnp.a().a(paramString1, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kyc(this, paramkxl, paramkxl1), ir);
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
  
  public void a(kwf paramkwf, kxl<kwd> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    JSONObject jSONObject3 = new JSONObject();
    try {
      jSONObject3.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject3.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(new kwe(paramkwf)));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    ir ir = gnp.a().a(kwr.RE_OPEN_SINISTER.getEndpoint(), im.PUT, jSONObject3, jSONObject1, true);
    gnv gnv = new gnv(new kyd(this, paramkxl, paramkxl1), ir);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */