import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public final class edq {
  private final eep a;
  
  public edq(eep parameep) {
    this.a = csp.<eep>a(parameep);
  }
  
  public void a() {
    try {
      this.a.a();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(float paramFloat) {
    try {
      this.a.a(paramFloat);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    try {
      this.a.a(paramFloat1, paramFloat2);
      return;
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
  
  public void a(LatLngBounds paramLatLngBounds) {
    try {
      this.a.a(paramLatLngBounds);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(@NonNull edm paramedm) {
    csp.a(paramedm, "imageDescriptor must not be null");
    try {
      cwx cwx = paramedm.a();
      this.a.a(cwx);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(Object paramObject) {
    try {
      this.a.b(cxo.a(paramObject));
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
  
  public String b() {
    try {
      return this.a.b();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(float paramFloat) {
    try {
      this.a.b(paramFloat);
      return;
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
  
  public LatLng c() {
    try {
      return this.a.c();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void c(float paramFloat) {
    try {
      this.a.c(paramFloat);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float d() {
    try {
      return this.a.d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void d(float paramFloat) {
    try {
      this.a.d(paramFloat);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float e() {
    try {
      return this.a.e();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof edq))
      return false; 
    try {
      return this.a.a(((edq)paramObject).a);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public LatLngBounds f() {
    try {
      return this.a.f();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float g() {
    try {
      return this.a.g();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float h() {
    try {
      return this.a.h();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int hashCode() {
    try {
      return this.a.k();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean i() {
    try {
      return this.a.i();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean j() {
    try {
      return this.a.l();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float k() {
    try {
      return this.a.j();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public Object l() {
    try {
      return cxo.a(this.a.m());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */