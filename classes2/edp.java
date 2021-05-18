import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;

public final class edp {
  private final eem a;
  
  public edp(eem parameem) {
    this.a = csp.<eem>a(parameem);
  }
  
  public void a() {
    try {
      this.a.a();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(double paramDouble) {
    try {
      this.a.a(paramDouble);
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
  
  public void a(LatLng paramLatLng) {
    try {
      this.a.a(paramLatLng);
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
  
  public void a(@Nullable List<PatternItem> paramList) {
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
  
  public double d() {
    try {
      return this.a.d();
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
    if (!(paramObject instanceof edp))
      return false; 
    try {
      return this.a.a(((edp)paramObject).a);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int f() {
    try {
      return this.a.f();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @Nullable
  public List<PatternItem> g() {
    try {
      return PatternItem.a(this.a.l());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int h() {
    try {
      return this.a.g();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public int hashCode() {
    try {
      return this.a.j();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public float i() {
    try {
      return this.a.h();
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
      return this.a.k();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @Nullable
  public Object l() {
    try {
      return cxo.a(this.a.m());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */