import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.maps.model.Cap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;

public final class edx {
  private final eeg a;
  
  public edx(eeg parameeg) {
    this.a = csp.<eeg>a(parameeg);
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
  
  public void a(int paramInt) {
    try {
      this.a.a(paramInt);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(@NonNull Cap paramCap) {
    csp.a(paramCap, "startCap must not be null");
    try {
      this.a.a(paramCap);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(@Nullable Object paramObject) {
    try {
      this.a.a(cxo.a(paramObject));
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(List<LatLng> paramList) {
    try {
      this.a.a(paramList);
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
  
  public void b(int paramInt) {
    try {
      this.a.b(paramInt);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(@NonNull Cap paramCap) {
    csp.a(paramCap, "endCap must not be null");
    try {
      this.a.b(paramCap);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(@Nullable List<PatternItem> paramList) {
    try {
      this.a.b(paramList);
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
  
  public List<LatLng> c() {
    try {
      return this.a.c();
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
      return this.a.d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int e() {
    try {
      return this.a.e();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof edx))
      return false; 
    try {
      return this.a.a(((edx)paramObject).a);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @NonNull
  public Cap f() {
    try {
      return this.a.k().d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @NonNull
  public Cap g() {
    try {
      return this.a.l().d();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int h() {
    try {
      return this.a.m();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int hashCode() {
    try {
      return this.a.i();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @Nullable
  public List<PatternItem> i() {
    try {
      return PatternItem.a(this.a.n());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float j() {
    try {
      return this.a.f();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean k() {
    try {
      return this.a.g();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean l() {
    try {
      return this.a.h();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean m() {
    try {
      return this.a.j();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @Nullable
  public Object n() {
    try {
      return cxo.a(this.a.o());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */