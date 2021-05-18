import android.os.Bundle;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class bna {
  private static final Map<Class<?>, bni> a = new HashMap<Class<?>, bni>();
  
  static {
    a.put(Boolean.class, new bnb());
    a.put(Integer.class, new bnc());
    a.put(Long.class, new bnd());
    a.put(Double.class, new bne());
    a.put(String.class, new bnf());
    a.put(String[].class, new bng());
    a.put(JSONArray.class, new bnh());
  }
  
  public static Bundle a(JSONObject paramJSONObject) {
    Bundle bundle = new Bundle();
    Iterator<String> iterator = paramJSONObject.keys();
    while (iterator.hasNext()) {
      String str = iterator.next();
      Object object = paramJSONObject.get(str);
      if (object != null && object != JSONObject.NULL) {
        if (object instanceof JSONObject) {
          bundle.putBundle(str, a((JSONObject)object));
          continue;
        } 
        bni bni = a.get(object.getClass());
        if (bni == null)
          throw new IllegalArgumentException("Unsupported type: " + object.getClass()); 
        bni.a(bundle, str, object);
      } 
    } 
    return bundle;
  }
  
  public static JSONObject a(Bundle paramBundle) {
    JSONObject jSONObject = new JSONObject();
    for (String str : paramBundle.keySet()) {
      Object object = paramBundle.get(str);
      if (object != null) {
        if (object instanceof List) {
          JSONArray jSONArray = new JSONArray();
          object = ((List)object).iterator();
          while (object.hasNext())
            jSONArray.put(object.next()); 
          jSONObject.put(str, jSONArray);
          continue;
        } 
        if (object instanceof Bundle) {
          jSONObject.put(str, a((Bundle)object));
          continue;
        } 
        bni bni = a.get(object.getClass());
        if (bni == null)
          throw new IllegalArgumentException("Unsupported type: " + object.getClass()); 
        bni.a(jSONObject, str, object);
      } 
    } 
    return jSONObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bna.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */