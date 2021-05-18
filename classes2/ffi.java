import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.util.Log;

class ffi implements LocationListener {
  private ffi(ffg paramffg) {}
  
  public void onLocationChanged(Location paramLocation) {
    Log.i("LocationRetriever", "onLocationChanged");
    ffg.a(this.a, paramLocation);
    if (ffg.b(this.a, ffg.c(this.a))) {
      ffg.d(this.a);
      ffg.e(this.a);
      ffg.f(this.a);
      ffg.a(this.a, 0);
    } 
    ffg.g(this.a);
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */