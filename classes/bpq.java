import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class bpq {
  static void a(JSONObject paramJSONObject) {
    Iterator iterator = paramJSONObject.keys();
    while (iterator.hasNext()) {
      iterator.next();
      iterator.remove();
    } 
  }
  
  static void a(JSONObject paramJSONObject, Map<String, Object> paramMap) {
    for (Map.Entry<String, Object> entry : paramMap.entrySet()) {
      try {
        paramJSONObject.putOpt((String)entry.getKey(), entry.getValue());
      } catch (JSONException jSONException) {
        throw new IllegalArgumentException(jSONException);
      } 
    } 
  }
  
  static boolean a(JSONObject paramJSONObject, Object paramObject) {
    Iterator<String> iterator = paramJSONObject.keys();
    while (iterator.hasNext()) {
      Object object = paramJSONObject.opt(iterator.next());
      if (object != null && object.equals(paramObject))
        return true; 
    } 
    return false;
  }
  
  static Set<Map.Entry<String, Object>> b(JSONObject paramJSONObject) {
    HashSet<bpr> hashSet = new HashSet();
    Iterator<String> iterator = paramJSONObject.keys();
    while (iterator.hasNext()) {
      String str = iterator.next();
      hashSet.add(new bpr(str, paramJSONObject.opt(str)));
    } 
    return (Set)hashSet;
  }
  
  static Set<String> c(JSONObject paramJSONObject) {
    HashSet<String> hashSet = new HashSet();
    Iterator iterator = paramJSONObject.keys();
    while (iterator.hasNext())
      hashSet.add(iterator.next()); 
    return hashSet;
  }
  
  static Collection<Object> d(JSONObject paramJSONObject) {
    ArrayList<Object> arrayList = new ArrayList();
    Iterator<String> iterator = paramJSONObject.keys();
    while (iterator.hasNext())
      arrayList.add(paramJSONObject.opt(iterator.next())); 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */