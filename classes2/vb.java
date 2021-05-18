import android.content.Context;
import android.util.Log;
import org.json.JSONObject;

public class vb extends abw {
  private Context a;
  
  public vb(Context paramContext) {
    this.a = paramContext;
  }
  
  public void a(vd paramvd) {
    try {
      String str3 = aca.a().b().toString();
      String str2 = aca.a().f().a();
      String str1 = str2;
      if (str2 == null)
        str1 = "0000"; 
      str2 = a(abq.CONSULTAR_SUBPRODUTOS.getEndpoint());
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("segmentCode", ji.a().f(str3));
      jSONObject.put("profileCode", ji.a().f(str1));
      abp.b().a().a(a(str2, b(), jSONObject), new vc(this, paramvd));
      return;
    } catch (Exception exception) {
      paramvd.a(new aby("-1", this.a.getResources().getString(lg.error_generic)));
      Log.d(getClass().getSimpleName(), exception.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */