import android.util.Log;
import android.widget.LinearLayout;
import org.json.JSONObject;

final class ahi implements aha {
  ahi(ahe paramahe) {}
  
  public final void a(is paramis) {
    ahe.c(this.a).dismiss();
    JSONObject jSONObject = paramis.c();
    try {
      ahe.a(this.a, (ajg)(new eju()).j().a(jSONObject.getJSONObject("categories").toString(), ajg.class));
    } catch (Exception exception) {
      Log.e(ahe.class.getSimpleName(), Log.getStackTraceString(exception));
    } 
    ahe.a(this.a, ahe.a(this.a));
  }
  
  public final void b(is paramis) {
    ahe.c(this.a).dismiss();
    Log.d(ahe.class.getSimpleName(), "Request returned error: " + paramis.b());
    LinearLayout linearLayout = (LinearLayout)ahe.b(this.a).findViewById(agg.servico_indisponivel);
    ahe.d(this.a).setVisibility(8);
    ahe.e(this.a).setVisibility(8);
    linearLayout.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */