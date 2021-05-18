import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public class dxn {
  private final dzd a;
  
  protected dxn(dzd paramdzd) {
    this.a = csp.<dzd>a(paramdzd);
  }
  
  public Point a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation) {
    try {
      cwx cwx = this.a.a(paramStreetViewPanoramaOrientation);
      return (cwx == null) ? null : cxo.<Point>a(cwx);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public StreetViewPanoramaOrientation a(Point paramPoint) {
    try {
      return this.a.a(cxo.a(paramPoint));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(LatLng paramLatLng) {
    try {
      this.a.a(paramLatLng);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(LatLng paramLatLng, int paramInt) {
    try {
      this.a.a(paramLatLng, paramInt);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, long paramLong) {
    try {
      this.a.a(paramStreetViewPanoramaCamera, paramLong);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(dxs paramdxs) {
    if (paramdxs == null)
      try {
        this.a.a((dzv)null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.a.a(new dxp(this, (dxs)remoteException));
  }
  
  public final void a(dxt paramdxt) {
    if (paramdxt == null)
      try {
        this.a.a((dzy)null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.a.a(new dxo(this, (dxt)remoteException));
  }
  
  public final void a(dxu paramdxu) {
    if (paramdxu == null)
      try {
        this.a.a((eab)null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.a.a(new dxq(this, (dxu)remoteException));
  }
  
  public final void a(dxv paramdxv) {
    if (paramdxv == null)
      try {
        this.a.a((eae)null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.a.a(new dxr(this, (dxv)remoteException));
  }
  
  public void a(String paramString) {
    try {
      this.a.a(paramString);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(boolean paramBoolean) {
    try {
      this.a.a(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean a() {
    try {
      return this.a.a();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(boolean paramBoolean) {
    try {
      this.a.b(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean b() {
    try {
      return this.a.b();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void c(boolean paramBoolean) {
    try {
      this.a.c(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean c() {
    try {
      return this.a.c();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void d(boolean paramBoolean) {
    try {
      this.a.d(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean d() {
    try {
      return this.a.d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public StreetViewPanoramaCamera e() {
    try {
      return this.a.e();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public StreetViewPanoramaLocation f() {
    try {
      return this.a.f();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */