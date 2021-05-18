import android.location.Location;
import android.support.v4.content.ContextCompat;
import android.telephony.TelephonyManager;
import com.santander.app.geolocalizacao.service.GeolocalizacaoService;
import java.text.DateFormat;
import java.util.Date;

public class ilv implements foh {
  public ilv(GeolocalizacaoService paramGeolocalizacaoService) {}
  
  public void a(Object paramObject) {
    if (ContextCompat.checkSelfPermission(this.a.getApplicationContext(), "android.permission.ACCESS_COARSE_LOCATION") != 0 || !GeolocalizacaoService.c(this.a).isProviderEnabled("gps") || !myz.b(this.a.getApplicationContext()) || GeolocalizacaoService.a == null) {
      GeolocalizacaoService.a(this.a, "geoTest - " + DateFormat.getDateTimeInstance().format(new Date()), "Não enviou localização (Permissao, GPS Desligado, Erro RSA ou Sem Rede)");
      return;
    } 
    paramObject = paramObject;
    String[] arrayOfString = myz.a(this.a.getApplicationContext());
    String str1 = ((TelephonyManager)this.a.getApplicationContext().getSystemService("phone")).getSimOperatorName().toUpperCase();
    String str2 = arrayOfString[2];
    mzl mzl = (new mzk(GeolocalizacaoService.a)).a();
    gnt gnt = gnt.a(this.a.getApplicationContext(), true);
    if (!gnt.b()) {
      gnt.a(nad.a().a(new ilw(this, gnt, (Location)paramObject, str1, str2, mzl)), true);
    } else {
      GeolocalizacaoService.a(this.a, GeolocalizacaoService.a(this.a, GeolocalizacaoService.d(this.a), String.valueOf(paramObject.getLatitude()), String.valueOf(paramObject.getLongitude()), str1, str2, str2, mzl));
    } 
    paramObject = String.valueOf(paramObject.getLatitude()) + "," + String.valueOf(paramObject.getLongitude()) + "," + str1 + "," + str2 + ", " + GeolocalizacaoService.d(this.a);
    GeolocalizacaoService.a(this.a, "geoTest - " + DateFormat.getDateTimeInstance().format(new Date()), (String)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */