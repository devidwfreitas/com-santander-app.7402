import android.util.Log;
import com.santander.app.geolocalizacao.service.GeolocalizacaoService;
import org.json.JSONException;

public class ilx implements ih {
  public ilx(GeolocalizacaoService paramGeolocalizacaoService, ilo paramilo) {}
  
  public void onFailure(is paramis) {
    String str;
    GeolocalizacaoService.b = null;
    gnt.a(this.b.getApplicationContext(), true).a(false);
    if (paramis != null && !"".equals(paramis.b())) {
      str = paramis.b();
    } else {
      str = "Falha no envio da Geolocalizacao";
    } 
    frq.d("GEOLOCALIZACAO_SEND_FAIL", str);
  }
  
  public void onSuccess(is paramis) {
    try {
      GeolocalizacaoService.b = paramis.c().getString("ticket").toString();
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.getMessage());
    } 
    Log.i("GeolocalizacaoService", "Sucesso - Location enviada.");
    frq.d("GEOLOCALIZACAO_SEND_SUCCESS", "Data: " + this.a.j() + " - " + this.a.f() + " - " + this.a.c() + " - " + this.a.d());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */