import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.PackageFactory;
import com.adjust.sdk.SdkClickHandler;
import com.adjust.sdk.SharedPreferencesManager;
import org.json.JSONArray;
import org.json.JSONException;

public class awb implements Runnable {
  public awb(SdkClickHandler paramSdkClickHandler) {}
  
  public void run() {
    IActivityHandler iActivityHandler = SdkClickHandler.access$300(this.a).get();
    SharedPreferencesManager sharedPreferencesManager = new SharedPreferencesManager(iActivityHandler.getContext());
    try {
      JSONArray jSONArray = sharedPreferencesManager.getRawReferrerArray();
      int i = 0;
      boolean bool = false;
      while (true) {
        if (i < jSONArray.length()) {
          JSONArray jSONArray1 = jSONArray.getJSONArray(i);
          if (jSONArray1.optInt(2, -1) == 0) {
            String str = jSONArray1.optString(0, null);
            long l = jSONArray1.optLong(1, -1L);
            jSONArray1.put(2, 1);
            ActivityPackage activityPackage = PackageFactory.buildReftagSdkClickPackage(str, l, iActivityHandler.getActivityState(), iActivityHandler.getAdjustConfig(), iActivityHandler.getDeviceInfo(), iActivityHandler.getSessionParameters());
            this.a.sendSdkClick(activityPackage);
            bool = true;
          } 
        } else {
          if (bool)
            sharedPreferencesManager.saveRawReferrerArray(jSONArray); 
          return;
        } 
        i++;
      } 
    } catch (JSONException jSONException) {
      SdkClickHandler.access$100(this.a).error("Send saved raw referrers error (%s)", new Object[] { jSONException.getMessage() });
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */