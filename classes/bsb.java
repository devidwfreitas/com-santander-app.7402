import android.os.Bundle;
import com.facebook.login.GetTokenLoginMethodHandler;
import com.facebook.login.LoginClient;
import org.json.JSONException;
import org.json.JSONObject;

public class bsb implements bqt {
  public bsb(GetTokenLoginMethodHandler paramGetTokenLoginMethodHandler, Bundle paramBundle, LoginClient.Request paramRequest) {}
  
  public void a(bhp parambhp) {
    this.c.b.b(LoginClient.Result.a(this.c.b.c(), "Caught exception", parambhp.getMessage()));
  }
  
  public void a(JSONObject paramJSONObject) {
    try {
      String str = paramJSONObject.getString("id");
      this.a.putString("com.facebook.platform.extra.USER_ID", str);
      this.c.b(this.b, this.a);
      return;
    } catch (JSONException jSONException) {
      this.c.b.b(LoginClient.Result.a(this.c.b.c(), "Caught exception", jSONException.getMessage()));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */