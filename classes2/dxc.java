import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ca.android.app.CaMDOFragment;
import com.google.android.gms.maps.GoogleMapOptions;

@TargetApi(11)
public class dxc extends CaMDOFragment {
  private final dxf a = new dxf((Fragment)this);
  
  public static dxc a() {
    return new dxc();
  }
  
  public static dxc a(GoogleMapOptions paramGoogleMapOptions) {
    dxc dxc1 = new dxc();
    Bundle bundle = new Bundle();
    bundle.putParcelable("MapOptions", (Parcelable)paramGoogleMapOptions);
    dxc1.setArguments(bundle);
    return dxc1;
  }
  
  public final void a(Bundle paramBundle) {
    csp.b("onEnterAmbient must be called on the main thread.");
    this.a.c(paramBundle);
  }
  
  public void a(dxk paramdxk) {
    csp.b("getMapAsync must be called on the main thread.");
    this.a.a(paramdxk);
  }
  
  public final void b() {
    csp.b("onExitAmbient must be called on the main thread.");
    this.a.j();
  }
  
  public void onActivityCreated(Bundle paramBundle) {
    if (paramBundle != null)
      paramBundle.setClassLoader(dxc.class.getClassLoader()); 
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    dxf.a(this.a, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.a.a(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = this.a.a(paramLayoutInflater, paramViewGroup, paramBundle);
    view.setClickable(true);
    return view;
  }
  
  public void onDestroy() {
    this.a.g();
    super.onDestroy();
  }
  
  public void onDestroyView() {
    this.a.f();
    super.onDestroyView();
  }
  
  @SuppressLint({"NewApi"})
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle) {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    dxf.a(this.a, paramActivity);
    GoogleMapOptions googleMapOptions = GoogleMapOptions.a((Context)paramActivity, paramAttributeSet);
    Bundle bundle = new Bundle();
    bundle.putParcelable("MapOptions", (Parcelable)googleMapOptions);
    this.a.a(paramActivity, bundle, paramBundle);
  }
  
  public void onLowMemory() {
    this.a.h();
    super.onLowMemory();
  }
  
  public void onPause() {
    this.a.d();
    super.onPause();
  }
  
  public void onResume() {
    super.onResume();
    this.a.c();
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    if (paramBundle != null)
      paramBundle.setClassLoader(dxc.class.getClassLoader()); 
    super.onSaveInstanceState(paramBundle);
    this.a.b(paramBundle);
  }
  
  public void onStart() {
    super.onStart();
    this.a.b();
  }
  
  public void onStop() {
    this.a.e();
    super.onStop();
  }
  
  public void setArguments(Bundle paramBundle) {
    super.setArguments(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */