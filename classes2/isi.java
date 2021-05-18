import android.util.Log;
import org.json.JSONException;

class isi implements ih {
  isi(ise paramise) {}
  
  public void onFailure(is paramis) {
    Log.e("ERROR_HUB_CONNECTOR", paramis.b());
    nab.a().b();
    ise.i(this.a);
  }
  
  public void onSuccess(is paramis) {
    nab.a().b();
    try {
      frq.b(paramis.c().getString("hashMonitoracao"));
      if (ise.g(this.a).a()) {
        ise.h(this.a);
        return;
      } 
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.toString());
      if (ise.g(this.a).a()) {
        ise.h(this.a);
        return;
      } 
    } 
    ise.i(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\isi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */