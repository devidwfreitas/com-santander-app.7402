import android.location.Location;
import android.util.Log;
import com.santander.app.geolocalizacao.service.GeolocalizacaoService;
import org.json.JSONException;

class ilw implements ih {
  ilw(ilv paramilv, gnt paramgnt, Location paramLocation, String paramString1, String paramString2, mzl parammzl) {}
  
  public void onFailure(is paramis) {
    this.a.a(false);
    Log.e("ERROR_HUB_NOTAUTH_CON", paramis.b());
  }
  
  public void onSuccess(is paramis) {
    this.a.a(true);
    try {
      GeolocalizacaoService.b = paramis.c().getString("ticket").toString();
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.getMessage());
    } 
    GeolocalizacaoService.a(this.f.a, GeolocalizacaoService.a(this.f.a, GeolocalizacaoService.d(this.f.a), String.valueOf(this.b.getLatitude()), String.valueOf(this.b.getLongitude()), this.c, this.d, this.d, this.e));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */