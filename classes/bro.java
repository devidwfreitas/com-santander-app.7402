import com.facebook.login.DeviceAuthDialog;
import org.json.JSONException;
import org.json.JSONObject;

public class bro implements bim {
  public bro(DeviceAuthDialog paramDeviceAuthDialog) {}
  
  public void a(bix parambix) {
    if (DeviceAuthDialog.a(this.a))
      return; 
    if (parambix.a() != null) {
      DeviceAuthDialog.a(this.a, parambix.a().n());
      return;
    } 
    JSONObject jSONObject = parambix.b();
    DeviceAuthDialog.RequestState requestState = new DeviceAuthDialog.RequestState();
    try {
      requestState.a(jSONObject.getString("user_code"));
      requestState.b(jSONObject.getString("code"));
      requestState.a(jSONObject.getLong("interval"));
      DeviceAuthDialog.a(this.a, requestState);
      return;
    } catch (JSONException jSONException) {
      DeviceAuthDialog.a(this.a, new bhp((Throwable)jSONException));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bro.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */