import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.maps.model.LatLng;

public final class edv {
  private final eey a;
  
  public edv(eey parameey) {
    this.a = csp.<eey>a(parameey);
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
      this.a.c(paramFloat);
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
  
  public void a(@NonNull LatLng paramLatLng) {
    if (paramLatLng == null)
      throw new IllegalArgumentException("latlng cannot be null - a position is required."); 
    try {
      this.a.a(paramLatLng);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(@Nullable edm paramedm) {
    if (paramedm == null)
      try {
        this.a.a((cwx)null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    cwx cwx = remoteException.a();
    this.a.a(cwx);
  }
  
  public void a(@Nullable Object paramObject) {
    try {
      this.a.b(cxo.a(paramObject));
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(@Nullable String paramString) {
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
  
  public String b() {
    try {
      return this.a.b();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(float paramFloat) {
    try {
      this.a.a(paramFloat);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(float paramFloat1, float paramFloat2) {
    try {
      this.a.b(paramFloat1, paramFloat2);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(@Nullable String paramString) {
    try {
      this.a.b(paramString);
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
      this.a.b(paramFloat);
      return;
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
  
  public float d() {
    try {
      return this.a.o();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public String e() {
    try {
      return this.a.d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof edv))
      return false; 
    try {
      return this.a.a(((edv)paramObject).a);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public String f() {
    try {
      return this.a.e();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean g() {
    try {
      return this.a.f();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void h() {
    try {
      this.a.g();
      return;
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
  
  public void i() {
    try {
      this.a.h();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean j() {
    try {
      return this.a.i();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean k() {
    try {
      return this.a.j();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean l() {
    try {
      return this.a.l();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float m() {
    try {
      return this.a.m();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float n() {
    try {
      return this.a.n();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @Nullable
  public Object o() {
    try {
      return cxo.a(this.a.p());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */