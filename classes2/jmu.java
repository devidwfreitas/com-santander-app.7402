import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

public class jmu implements LocationListener {
  private static jmu a;
  
  private static jlu b;
  
  public static jmu a(jlu paramjlu) {
    if (a == null)
      a = new jmu(); 
    b = paramjlu;
    return a;
  }
  
  public void onLocationChanged(Location paramLocation) {
    if (b != null)
      b.a(paramLocation); 
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jmu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */