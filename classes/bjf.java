import android.content.SharedPreferences;
import com.facebook.Profile;
import org.json.JSONException;
import org.json.JSONObject;

final class bjf {
  static final String a = "com.facebook.ProfileManager.CachedProfile";
  
  static final String b = "com.facebook.AccessTokenManager.SharedPreferences";
  
  private final SharedPreferences c = bhv.h().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);
  
  Profile a() {
    String str = this.c.getString("com.facebook.ProfileManager.CachedProfile", null);
    if (str != null)
      try {
        return new Profile(new JSONObject(str));
      } catch (JSONException jSONException) {} 
    return null;
  }
  
  void a(Profile paramProfile) {
    bqx.a(paramProfile, "profile");
    JSONObject jSONObject = paramProfile.i();
    if (jSONObject != null)
      this.c.edit().putString("com.facebook.ProfileManager.CachedProfile", jSONObject.toString()).apply(); 
  }
  
  void b() {
    this.c.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bjf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */