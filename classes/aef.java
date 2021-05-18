import android.util.Log;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class aef {
  private JSONObject a() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", adz.b().a().a().c());
      jSONObject.put("system", adz.b().a().a().e());
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e(aef.class.getName(), Log.getStackTraceString((Throwable)jSONException));
      return jSONObject;
    } 
  }
  
  ir a(String paramString, JSONObject paramJSONObject, boolean paramBoolean) {
    ir ir = new ir();
    ir.a(paramString);
    ir.a(im.POST);
    ir.a(a());
    ir.a(paramJSONObject);
    ir.a(Boolean.valueOf(paramBoolean));
    return ir;
  }
  
  Object a(String paramString, Class paramClass) {
    return (new eju()).j().a(paramString, paramClass);
  }
  
  ArrayList a(JSONArray paramJSONArray, String paramString, Class paramClass) {
    ArrayList<Object> arrayList = new ArrayList();
    ejm ejm = (new eju()).j();
    for (int i = 0; i < paramJSONArray.length(); i++) {
      try {
        arrayList.add(ejm.a(paramJSONArray.getJSONObject(i).getJSONObject(paramString).toString(), paramClass));
      } catch (JSONException jSONException) {
        Log.e(aef.class.getName(), Log.getStackTraceString((Throwable)jSONException));
      } 
    } 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */