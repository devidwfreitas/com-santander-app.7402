import com.facebook.login.DeviceAuthDialog;
import org.json.JSONException;
import org.json.JSONObject;

public class bru implements bim {
  public bru(DeviceAuthDialog paramDeviceAuthDialog, String paramString) {}
  
  public void a(bix parambix) {
    bqv bqv;
    if (DeviceAuthDialog.d(this.b).get())
      return; 
    if (parambix.a() != null) {
      DeviceAuthDialog.a(this.b, parambix.a().n());
      return;
    } 
    try {
      JSONObject jSONObject = parambix.b();
      String str1 = jSONObject.getString("id");
      bqv = bqq.b(jSONObject);
      String str2 = jSONObject.getString("name");
      bmo.b(DeviceAuthDialog.h(this.b).a());
      if (bol.a(bhv.l()).g().contains(bqo.RequireConfirm) && !DeviceAuthDialog.i(this.b)) {
        DeviceAuthDialog.b(this.b, true);
        DeviceAuthDialog.a(this.b, str1, bqv, this.a, str2);
        return;
      } 
    } catch (JSONException jSONException) {
      DeviceAuthDialog.a(this.b, new bhp((Throwable)jSONException));
      return;
    } 
    DeviceAuthDialog.a(this.b, (String)jSONException, bqv, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bru.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */