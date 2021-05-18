import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

public final class dxm {
  private final dza a;
  
  dxm(dza paramdza) {
    this.a = paramdza;
  }
  
  public Point a(LatLng paramLatLng) {
    try {
      return cxo.<Point>a(this.a.a(paramLatLng));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public LatLng a(Point paramPoint) {
    try {
      return this.a.a(cxo.a(paramPoint));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public VisibleRegion a() {
    try {
      return this.a.a();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */