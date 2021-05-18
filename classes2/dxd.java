import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.GoogleMapOptions;

class dxd implements dzp {
  private final Fragment a;
  
  private final dyu b;
  
  public dxd(Fragment paramFragment, dyu paramdyu) {
    this.b = csp.<dyu>a(paramdyu);
    this.a = csp.<Fragment>a(paramFragment);
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    try {
      Bundle bundle = new Bundle();
      ean.a(paramBundle, bundle);
      cwx cwx = this.b.a(cxo.a(paramLayoutInflater), cxo.a(paramViewGroup), bundle);
      ean.a(bundle, paramBundle);
      return cxo.<View>a(cwx);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a() {
    try {
      this.b.i();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2) {
    GoogleMapOptions googleMapOptions = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
    try {
      Bundle bundle = new Bundle();
      ean.a(paramBundle2, bundle);
      this.b.a(cxo.a(paramActivity), googleMapOptions, bundle);
      ean.a(bundle, paramBundle2);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(Bundle paramBundle) {
    try {
      Bundle bundle1 = new Bundle();
      ean.a(paramBundle, bundle1);
      Bundle bundle2 = this.a.getArguments();
      if (bundle2 != null && bundle2.containsKey("MapOptions"))
        ean.a(bundle1, "MapOptions", bundle2.getParcelable("MapOptions")); 
      this.b.a(bundle1);
      ean.a(bundle1, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(dxk paramdxk) {
    try {
      this.b.a(new dxe(this, paramdxk));
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b() {
    try {
      this.b.b();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(Bundle paramBundle) {
    try {
      Bundle bundle = new Bundle();
      ean.a(paramBundle, bundle);
      this.b.b(bundle);
      ean.a(bundle, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void c() {
    try {
      this.b.c();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void c(Bundle paramBundle) {
    try {
      Bundle bundle = new Bundle();
      ean.a(paramBundle, bundle);
      this.b.c(bundle);
      ean.a(bundle, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void d() {
    try {
      this.b.j();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void e() {
    try {
      this.b.d();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void f() {
    try {
      this.b.e();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void g() {
    try {
      this.b.f();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void h() {
    try {
      this.b.h();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */