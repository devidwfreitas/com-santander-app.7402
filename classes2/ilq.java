import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

public class ilq implements LocationListener {
  private foh a;
  
  public ilq(foh paramfoh) {
    this.a = paramfoh;
  }
  
  public void onLocationChanged(Location paramLocation) {
    this.a.a(paramLocation);
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */