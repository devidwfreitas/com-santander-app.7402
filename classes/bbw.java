import android.support.annotation.Nullable;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class bbw<T> {
  @Nullable
  private final JSONObject a;
  
  private final float b;
  
  private final awr c;
  
  private final bbv<T> d;
  
  private bbw(@Nullable JSONObject paramJSONObject, float paramFloat, awr paramawr, bbv<T> parambbv) {
    this.a = paramJSONObject;
    this.b = paramFloat;
    this.c = paramawr;
    this.d = parambbv;
  }
  
  static <T> bbw<T> a(@Nullable JSONObject paramJSONObject, float paramFloat, awr paramawr, bbv<T> parambbv) {
    return new bbw<T>(paramJSONObject, paramFloat, paramawr, parambbv);
  }
  
  @Nullable
  private T a(List<axz<T>> paramList) {
    return (this.a != null) ? (!paramList.isEmpty() ? ((axz)paramList.get(0)).a : this.d.b(this.a.opt("k"), this.b)) : null;
  }
  
  private static boolean a(Object paramObject) {
    if (!(paramObject instanceof JSONArray))
      return false; 
    paramObject = ((JSONArray)paramObject).opt(0);
    return (paramObject instanceof JSONObject && ((JSONObject)paramObject).has("t"));
  }
  
  private List<axz<T>> b() {
    if (this.a != null) {
      Object object = this.a.opt("k");
      return a(object) ? aya.a((JSONArray)object, this.c, this.b, this.d) : Collections.emptyList();
    } 
    return Collections.emptyList();
  }
  
  bbx<T> a() {
    List<axz<T>> list = b();
    return new bbx<T>(list, a(list));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bbw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */