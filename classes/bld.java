import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class bld implements Runnable {
  bld(String paramString1, Bundle paramBundle, String paramString2, bim parambim) {}
  
  public void run() {
    Bundle bundle2 = new Bundle();
    bundle2.putString("user_unique_id", this.a);
    bundle2.putBundle("custom_data", this.b);
    bmv bmv = bmv.a(bhv.h());
    if (bmv != null && bmv.b() != null)
      bundle2.putString("advertiser_id", bmv.b()); 
    Bundle bundle1 = new Bundle();
    try {
      JSONObject jSONObject = bna.a(bundle2);
      JSONArray jSONArray = new JSONArray();
      jSONArray.put(jSONObject);
      bundle1.putString("data", jSONArray.toString());
      GraphRequest graphRequest = new GraphRequest(AccessToken.a(), String.format(Locale.US, "%s/user_properties", new Object[] { this.c }), bundle1, biz.POST, this.d);
      graphRequest.a(true);
      graphRequest.n();
      return;
    } catch (JSONException jSONException) {
      throw new bhp("Failed to construct request", jSONException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */