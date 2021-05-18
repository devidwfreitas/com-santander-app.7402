import android.support.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;

public class ajc {
  private static final int a = 60000;
  
  private ir a(String paramString, JSONObject paramJSONObject, Boolean paramBoolean) {
    ir ir = new ir();
    ir.a(paramString);
    ir.a(im.GET);
    ir.a(Integer.valueOf(60000));
    if (paramJSONObject != null)
      ir.a(paramJSONObject); 
    ir.a(paramBoolean);
    return ir;
  }
  
  private ir a(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, Boolean paramBoolean) {
    ir ir = new ir();
    ir.a(paramString);
    ir.a(im.POST);
    ir.a(Integer.valueOf(60000));
    if (paramJSONObject1 != null)
      ir.a(paramJSONObject1); 
    ir.a(paramJSONObject2);
    ir.a(paramBoolean);
    return ir;
  }
  
  private ir b(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, Boolean paramBoolean) {
    ir ir = new ir();
    ir.a(paramString);
    ir.a(im.PUT);
    ir.a(Integer.valueOf(60000));
    if (paramJSONObject1 != null)
      ir.a(paramJSONObject1); 
    ir.a(paramJSONObject2);
    ir.a(paramBoolean);
    return ir;
  }
  
  protected ir a(String paramString, JSONObject paramJSONObject) {
    return a(paramString, paramJSONObject, Boolean.valueOf(true));
  }
  
  protected ir a(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    return a(paramString, paramJSONObject1, paramJSONObject2, Boolean.valueOf(true));
  }
  
  @NonNull
  protected String a(String paramString) {
    return paramString;
  }
  
  @NonNull
  protected String a(String paramString, String... paramVarArgs) {
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      String str = paramVarArgs[i];
      paramString = paramString + "/" + str;
    } 
    return a(paramString);
  }
  
  protected ir b(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    return b(paramString, paramJSONObject1, paramJSONObject2, Boolean.valueOf(true));
  }
  
  @NonNull
  protected JSONObject b() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", String.valueOf(aja.b().c().get("appKey")));
      jSONObject.put("Content-Type", "application/json");
      return jSONObject;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      return jSONObject;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */