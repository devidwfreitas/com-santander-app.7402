import android.util.Log;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

class bgu implements bim {
  bgu(bgs parambgs, AtomicBoolean paramAtomicBoolean, Set paramSet1, Set paramSet2) {}
  
  public void a(bix parambix) {
    JSONObject jSONObject = parambix.b();
    if (jSONObject != null) {
      JSONArray jSONArray = jSONObject.optJSONArray("data");
      if (jSONArray != null) {
        this.a.set(true);
        int i = 0;
        while (true) {
          if (i < jSONArray.length()) {
            JSONObject jSONObject1 = jSONArray.optJSONObject(i);
            if (jSONObject1 != null) {
              String str1 = jSONObject1.optString("permission");
              String str2 = jSONObject1.optString("status");
              if (!bqq.a(str1) && !bqq.a(str2)) {
                str2 = str2.toLowerCase(Locale.US);
                if (str2.equals("granted")) {
                  this.b.add(str1);
                } else if (str2.equals("declined")) {
                  this.c.add(str1);
                } else {
                  Log.w("AccessTokenManager", "Unexpected status: " + str2);
                } 
              } 
            } 
            i++;
            continue;
          } 
          return;
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */