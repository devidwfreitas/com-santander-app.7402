import com.facebook.FacebookRequestError;
import com.facebook.share.internal.DeviceShareDialogFragment;
import org.json.JSONException;
import org.json.JSONObject;

public class bwr implements bim {
  public bwr(DeviceShareDialogFragment paramDeviceShareDialogFragment) {}
  
  public void a(bix parambix) {
    FacebookRequestError facebookRequestError = parambix.a();
    if (facebookRequestError != null) {
      DeviceShareDialogFragment.a(this.a, facebookRequestError);
      return;
    } 
    JSONObject jSONObject = parambix.b();
    DeviceShareDialogFragment.RequestState requestState = new DeviceShareDialogFragment.RequestState();
    try {
      requestState.a(jSONObject.getString("user_code"));
      requestState.a(jSONObject.getLong("expires_in"));
      DeviceShareDialogFragment.a(this.a, requestState);
      return;
    } catch (JSONException jSONException) {
      DeviceShareDialogFragment.a(this.a, new FacebookRequestError(0, "", "Malformed server response"));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */