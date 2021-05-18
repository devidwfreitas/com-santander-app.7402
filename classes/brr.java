import com.facebook.FacebookRequestError;
import com.facebook.login.DeviceAuthDialog;
import org.json.JSONException;
import org.json.JSONObject;

public class brr implements bim {
  public brr(DeviceAuthDialog paramDeviceAuthDialog) {}
  
  public void a(bix parambix) {
    if (DeviceAuthDialog.d(this.a).get())
      return; 
    FacebookRequestError facebookRequestError = parambix.a();
    if (facebookRequestError != null) {
      switch (facebookRequestError.d()) {
        default:
          DeviceAuthDialog.a(this.a, parambix.a().n());
          return;
        case 1349172:
        case 1349174:
          DeviceAuthDialog.e(this.a);
          return;
        case 1349152:
        case 1349173:
          break;
      } 
      DeviceAuthDialog.b(this.a);
      return;
    } 
    try {
      JSONObject jSONObject = parambix.b();
      DeviceAuthDialog.a(this.a, jSONObject.getString("access_token"));
      return;
    } catch (JSONException jSONException) {
      DeviceAuthDialog.a(this.a, new bhp((Throwable)jSONException));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */