import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.santander.app.MinhaConta;
import org.json.JSONException;
import org.json.JSONObject;

public class ils {
  private Activity a;
  
  private Context b;
  
  public ils(Activity paramActivity) {
    this.a = paramActivity;
    this.b = MinhaConta.b();
  }
  
  public ils(Context paramContext) {
    this.b = paramContext;
  }
  
  public void a(gkw paramgkw, ilo paramilo) {
    (new ilu(new ilt(this, paramgkw), this.a)).execute((Object[])new ilo[] { paramilo });
  }
  
  public void a(ilo paramilo, ih paramih) {
    gnt gnt = gnt.a(this.b, true);
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("X-Application-Key", String.valueOf(mzy.a(this.b, true).a().get("labNoAuthKey")));
      jSONObject1.put("Content-Type", "application/json");
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.getMessage());
    } 
    JSONObject jSONObject2 = new JSONObject();
    JSONObject jSONObject3 = new JSONObject();
    JSONObject jSONObject4 = new JSONObject();
    JSONObject jSONObject5 = new JSONObject();
    try {
      jSONObject3.put("documentNumber", nad.a().b(paramilo.j()));
      jSONObject4.put("latitude", nad.a().b(paramilo.c()));
      jSONObject4.put("longitude", nad.a().b(paramilo.d()));
      jSONObject5.put("code", nad.a().b(paramilo.a()));
      jSONObject5.put("name", nad.a().b(paramilo.f()));
      jSONObject5.put("model", nad.a().b(paramilo.e()));
      jSONObject2.put("ticket", paramilo.k());
      jSONObject2.put("customer", jSONObject3);
      jSONObject2.put("location", jSONObject4);
      jSONObject2.put("device", jSONObject5);
      jSONObject2.put("simCode", nad.a().b(paramilo.b()));
      jSONObject2.put("externalIp", nad.a().b(paramilo.g()));
      jSONObject2.put("internalIp", nad.a().b(paramilo.h()));
      jSONObject2.put("carrier", nad.a().b(paramilo.i()));
    } catch (Exception exception) {
      Log.e("enviarGeolocalizacao", exception.getMessage());
      frq.d("Outros_Geolocalizacao_TentouEnviarGeo_Erro", exception.getMessage());
    } 
    ir ir = gnt.a(ilr.GEO_LOCALTION.getEndpoint(), im.POST, jSONObject1, jSONObject2, true);
    if (gnt.a() != null)
      try {
        gnt.a().a(ir, paramih);
        return;
      } catch (Exception exception) {
        Log.e("enviarGeolocalizacao", exception.getMessage());
        frq.d("Outros_Geolocalizacao_TentouEnviarGeo_Erro", exception.getMessage());
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */