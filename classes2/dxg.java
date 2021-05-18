import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class dxg implements dzp {
  private final ViewGroup a;
  
  private final dyx b;
  
  private View c;
  
  public dxg(ViewGroup paramViewGroup, dyx paramdyx) {
    this.b = csp.<dyx>a(paramdyx);
    this.a = csp.<ViewGroup>a(paramViewGroup);
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
  }
  
  public void a() {
    try {
      this.b.h();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2) {
    throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
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
  
  public void a(dxk paramdxk) {
    try {
      this.b.a(new dxh(this, paramdxk));
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
      this.b.i();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void e() {
    throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
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
  
  public void h() {
    try {
      this.b.g();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */