import android.util.Log;
import org.json.JSONObject;

final class aiu implements ain {
  aiu(ait paramait) {}
  
  public final void a(is paramis) {
    ait.a(this.a).dismiss();
    JSONObject jSONObject = paramis.c();
    try {
      ait.a(this.a, (ajv)(new eju()).j().a(jSONObject.toString(), ajv.class));
      this.a.a();
      return;
    } catch (Exception exception) {
      Log.e(ahe.class.getSimpleName(), Log.getStackTraceString(exception));
      this.a.b();
      return;
    } 
  }
  
  public final void b(is paramis) {
    ait.a(this.a).dismiss();
    Log.d(ahe.class.getSimpleName(), "Request returned error: " + paramis.b());
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aiu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */