import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class dya implements dzq {
  private final ViewGroup a;
  
  private final dzj b;
  
  private View c;
  
  public dya(ViewGroup paramViewGroup, dzj paramdzj) {
    this.b = csp.<dzj>a(paramdzj);
    this.a = csp.<ViewGroup>a(paramViewGroup);
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void a() {}
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2) {
    throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void a(Bundle paramBundle) {
    try {
      Bundle bundle = new Bundle();
      ean.a(paramBundle, bundle);
      this.b.a(bundle);
      ean.a(bundle, paramBundle);
      this.c = cxo.<View>a(this.b.f());
      this.a.removeAllViews();
      this.a.addView(this.c);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(dxl paramdxl) {
    try {
      this.b.a(new dyb(this, paramdxl));
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
    throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void f() {
    try {
      this.b.d();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void g() {
    try {
      this.b.e();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dya.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */