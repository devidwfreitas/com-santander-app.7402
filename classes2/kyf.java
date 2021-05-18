import android.util.Log;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class kyf implements kye {
  public void a(String paramString, kqg paramkqg, kxl<kry> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("familyId", paramString);
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str2 = gnp.a(hashMap);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    JSONObject jSONObject1 = new JSONObject();
    try {
      JSONObject jSONObject = new JSONObject((new ejm()).b(new krw(paramkqg)));
      jSONObject1 = jSONObject;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    String str1 = kwr.GENERATE_IDEAL_QUOTATIONS.getEndpoint() + "?" + str2;
    ir ir = gnp.a().a(str1, im.POST, jSONObject2, jSONObject1, true);
    gnv gnv = new gnv(new kyg(this, paramkxl, paramkxl1), ir);
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
  
  public void a(String paramString, kxl<kri> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    hashMap.put("familyId", paramString);
    paramString = gnp.a(hashMap);
    paramString = kwr.GET_IDEAL_PRODUCT.getEndpoint() + "?" + paramString;
    ir ir = gnp.a().a(paramString, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kyh(this, paramkxl, paramkxl1), ir);
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
  
  public void a(krf paramkrf, kxl<krg> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str2 = gnp.a(hashMap);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(paramkrf));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    String str1 = kwr.GET_DETAILS.getEndpoint() + "?" + str2;
    ir ir = gnp.a().a(str1, im.POST, null, jSONObject1, true);
    gnv gnv = new gnv(new kyn(this, paramkxl, paramkxl1), ir);
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
  
  public void a(kru paramkru, kxl<krv> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    (new HashMap<String, String>()).put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(paramkru));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    String str = kwr.GENERATE_QUESTIONS.getEndpoint();
    ir ir = gnp.a().a(str, im.POST, null, jSONObject1, true);
    gnv gnv = new gnv(new kyk(this, paramkxl, paramkxl1), ir);
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
  
  public void a(krw paramkrw, kxl<krz> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str2 = gnp.a(hashMap);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(paramkrw));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    String str1 = kwr.GENERATE_QUOTATION.getEndpoint() + "?" + str2;
    ir ir = gnp.a().a(str1, im.POST, null, jSONObject1, true);
    gnv gnv = new gnv(new kyi(this, paramkxl, paramkxl1), ir);
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
  
  public void a(ktc paramktc, kxl<kte> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str2 = gnp.a(hashMap);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(paramktc));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    String str1 = kwr.UPDATE_INSURED_DATE.getEndpoint() + "?" + str2;
    ir ir = gnp.a().a(str1, im.PUT, null, jSONObject1, true);
    gnv gnv = new gnv(new kyl(this, paramkxl, paramkxl1), ir);
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
  
  public void a(kti paramkti, kxl<ktj> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str2 = gnp.a(hashMap);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1 = new JSONObject((new ejm()).b(paramkti));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONObject1 = jSONObject2;
    } 
    String str1 = kwr.GET_PRE_PROPORSAL.getEndpoint() + "?" + str2;
    ir ir = gnp.a().a(str1, im.POST, null, jSONObject1, true);
    gnv gnv = new gnv(new kym(this, paramkxl, paramkxl1), ir);
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
  
  public void a(kxl<kqj> paramkxl, kxl<String> paramkxl1) {
    (new HashMap<String, String>()).put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str = kwr.GENERATE_CONTACT_DATA.getEndpoint();
    ir ir = gnp.a().a(str, im.GET, null, null, true);
    gnv gnv = new gnv(new kyj(this, paramkxl, paramkxl1), ir);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kyf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */