import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public final class dva {
  private static dyl a;
  
  public static duz a() {
    try {
      return new duz(c().a());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz a(float paramFloat) {
    try {
      return new duz(c().a(paramFloat));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz a(float paramFloat1, float paramFloat2) {
    try {
      return new duz(c().a(paramFloat1, paramFloat2));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz a(float paramFloat, Point paramPoint) {
    try {
      return new duz(c().a(paramFloat, paramPoint.x, paramPoint.y));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz a(CameraPosition paramCameraPosition) {
    try {
      return new duz(c().a(paramCameraPosition));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz a(LatLng paramLatLng) {
    try {
      return new duz(c().a(paramLatLng));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz a(LatLng paramLatLng, float paramFloat) {
    try {
      return new duz(c().a(paramLatLng, paramFloat));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz a(LatLngBounds paramLatLngBounds, int paramInt) {
    try {
      return new duz(c().a(paramLatLngBounds, paramInt));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3) {
    try {
      return new duz(c().a(paramLatLngBounds, paramInt1, paramInt2, paramInt3));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static void a(dyl paramdyl) {
    a = csp.<dyl>a(paramdyl);
  }
  
  public static duz b() {
    try {
      return new duz(c().b());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public static duz b(float paramFloat) {
    try {
      return new duz(c().b(paramFloat));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  private static dyl c() {
    return csp.<dyl>a(a, "CameraUpdateFactory is not initialized");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dva.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */