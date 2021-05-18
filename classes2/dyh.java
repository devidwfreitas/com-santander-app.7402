import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

class dyh implements dzq {
  private final Fragment a;
  
  private final dzg b;
  
  public dyh(Fragment paramFragment, dzg paramdzg) {
    this.b = csp.<dzg>a(paramdzg);
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
  
  public void a() {}
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2) {
    try {
      paramBundle1 = new Bundle();
      ean.a(paramBundle2, paramBundle1);
      this.b.a(cxo.a(paramActivity), (StreetViewPanoramaOptions)null, paramBundle1);
      ean.a(paramBundle1, paramBundle2);
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
      if (bundle2 != null && bundle2.containsKey("StreetViewPanoramaOptions"))
        ean.a(bundle1, "StreetViewPanoramaOptions", bundle2.getParcelable("StreetViewPanoramaOptions")); 
      this.b.a(bundle1);
      ean.a(bundle1, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(dxl paramdxl) {
    try {
      this.b.a(new dyi(this, paramdxl));
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
  
  public void d() {}
  
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */