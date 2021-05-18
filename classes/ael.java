import android.util.Log;
import java.util.ArrayList;
import org.json.JSONException;

final class ael implements ih {
  ael(aei paramaei, aej paramaej) {}
  
  public final void onFailure(is paramis) {
    this.a.a(paramis);
  }
  
  public final void onSuccess(is paramis) {
    try {
      ArrayList arrayList = this.b.a(paramis.c().getJSONArray("titles"), "title", aeb.class);
      this.a.a(paramis.c().getJSONObject("altairMessage").getJSONArray("altairWarning").getJSONObject(0).getString("warningCode"), arrayList);
      return;
    } catch (JSONException jSONException) {
      Log.e(aei.class.getName(), Log.getStackTraceString((Throwable)jSONException));
      this.a.a(null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ael.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */