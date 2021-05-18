import android.os.Bundle;
import java.util.ArrayList;
import org.json.JSONObject;

final class bnh implements bni {
  public void a(Bundle paramBundle, String paramString, Object paramObject) {
    paramObject = paramObject;
    ArrayList<String> arrayList = new ArrayList();
    if (paramObject.length() == 0) {
      paramBundle.putStringArrayList(paramString, arrayList);
      return;
    } 
    int i = 0;
    while (i < paramObject.length()) {
      Object object = paramObject.get(i);
      if (object instanceof String) {
        arrayList.add((String)object);
        i++;
        continue;
      } 
      throw new IllegalArgumentException("Unexpected type in an array: " + object.getClass());
    } 
    paramBundle.putStringArrayList(paramString, arrayList);
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject) {
    throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bnh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */