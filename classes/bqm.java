import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

class bqm {
  private static final ConcurrentHashMap<String, JSONObject> a = new ConcurrentHashMap<String, JSONObject>();
  
  public static JSONObject a(String paramString) {
    return a.get(paramString);
  }
  
  public static void a(String paramString, JSONObject paramJSONObject) {
    a.put(paramString, paramJSONObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */