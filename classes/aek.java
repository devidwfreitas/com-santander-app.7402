import android.util.Log;
import org.json.JSONException;

final class aek implements ih {
  aek(aeg paramaeg, aeb paramaeb, aeh paramaeh) {}
  
  public final void onFailure(is paramis) {
    this.b.a(paramis);
  }
  
  public final void onSuccess(is paramis) {
    try {
      aec aec = (aec)this.c.a(paramis.c().getJSONObject("titleDetail").toString(), aec.class);
      this.a.a(aec);
      this.b.a(this.a);
      return;
    } catch (JSONException jSONException) {
      Log.e(aeg.class.getName(), Log.getStackTraceString((Throwable)jSONException));
      this.b.a((is)null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */