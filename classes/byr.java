import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class byr {
  public static Object a(@Nullable Object paramObject, bys parambys) {
    if (paramObject == null)
      return JSONObject.NULL; 
    Object object = paramObject;
    if (!(paramObject instanceof String)) {
      object = paramObject;
      if (!(paramObject instanceof Boolean)) {
        object = paramObject;
        if (!(paramObject instanceof Double)) {
          object = paramObject;
          if (!(paramObject instanceof Float)) {
            object = paramObject;
            if (!(paramObject instanceof Integer)) {
              object = paramObject;
              if (!(paramObject instanceof Long)) {
                if (paramObject instanceof SharePhoto)
                  return (parambys != null) ? parambys.a((SharePhoto)paramObject) : null; 
                if (paramObject instanceof ShareOpenGraphObject)
                  return a((ShareOpenGraphObject)paramObject, parambys); 
                if (paramObject instanceof List)
                  return a((List)paramObject, parambys); 
                throw new IllegalArgumentException("Invalid object found for JSON serialization: " + paramObject.toString());
              } 
            } 
          } 
        } 
      } 
    } 
    return object;
  }
  
  private static JSONArray a(List paramList, bys parambys) {
    JSONArray jSONArray = new JSONArray();
    Iterator iterator = paramList.iterator();
    while (iterator.hasNext())
      jSONArray.put(a(iterator.next(), parambys)); 
    return jSONArray;
  }
  
  public static JSONObject a(ShareOpenGraphAction paramShareOpenGraphAction, bys parambys) {
    JSONObject jSONObject = new JSONObject();
    for (String str : paramShareOpenGraphAction.c())
      jSONObject.put(str, a(paramShareOpenGraphAction.a(str), parambys)); 
    return jSONObject;
  }
  
  private static JSONObject a(ShareOpenGraphObject paramShareOpenGraphObject, bys parambys) {
    JSONObject jSONObject = new JSONObject();
    for (String str : paramShareOpenGraphObject.c())
      jSONObject.put(str, a(paramShareOpenGraphObject.a(str), parambys)); 
    return jSONObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */