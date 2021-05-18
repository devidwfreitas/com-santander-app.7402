import android.content.Context;
import java.util.Map;
import org.json.JSONObject;

public class bms {
  private static final Map<bmu, String> a = new bmt();
  
  public static JSONObject a(bmu parambmu, bmv parambmv, String paramString, boolean paramBoolean, Context paramContext) {
    JSONObject jSONObject = new JSONObject();
    jSONObject.put("event", a.get(parambmu));
    bqq.a(jSONObject, parambmv, paramString, paramBoolean);
    try {
      bqq.a(jSONObject, paramContext);
    } catch (Exception exception) {
      bpu.a(bjb.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", new Object[] { exception.toString() });
    } 
    jSONObject.put("application_package_name", paramContext.getPackageName());
    return jSONObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bms.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */