import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.santander.app.geolocalizacao.service.GeolocalizacaoService;

public class ily implements LocationListener {
  private foh b;
  
  public ily(GeolocalizacaoService paramGeolocalizacaoService, foh paramfoh) {
    this.b = paramfoh;
  }
  
  public void onLocationChanged(Location paramLocation) {
    this.b.a(paramLocation);
  }
  
  public void onProviderDisabled(String paramString) {
    GeolocalizacaoService.b(this.a);
  }
  
  public void onProviderEnabled(String paramString) {
    GeolocalizacaoService.a(this.a);
  }
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ily.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */