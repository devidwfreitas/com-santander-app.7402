import android.os.Bundle;
import com.facebook.AccessToken;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public final class bgm implements bqt {
  public bgm(Bundle paramBundle, bgo parambgo, String paramString) {}
  
  public void a(bhp parambhp) {
    this.b.a(parambhp);
  }
  
  public void a(JSONObject paramJSONObject) {
    try {
      String str = paramJSONObject.getString("id");
      this.a.putString("user_id", str);
      this.b.a(AccessToken.a(null, this.a, bgy.FACEBOOK_APPLICATION_WEB, new Date(), this.c));
      return;
    } catch (JSONException jSONException) {
      this.b.a(new bhp("Unable to generate access token due to missing user id"));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */