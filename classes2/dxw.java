import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ca.android.app.CaMDOFragment;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

@TargetApi(11)
public class dxw extends CaMDOFragment {
  private final dxz a = new dxz((Fragment)this);
  
  public static dxw a() {
    return new dxw();
  }
  
  public static dxw a(StreetViewPanoramaOptions paramStreetViewPanoramaOptions) {
    dxw dxw1 = new dxw();
    Bundle bundle = new Bundle();
    bundle.putParcelable("StreetViewPanoramaOptions", (Parcelable)paramStreetViewPanoramaOptions);
    dxw1.setArguments(bundle);
    return dxw1;
  }
  
  public void a(dxl paramdxl) {
    csp.b("getStreetViewPanoramaAsync() must be called on the main thread");
    this.a.a(paramdxl);
  }
  
  public void onActivityCreated(Bundle paramBundle) {
    if (paramBundle != null)
      paramBundle.setClassLoader(dxw.class.getClassLoader()); 
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    dxz.a(this.a, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.a.a(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    return this.a.a(paramLayoutInflater, paramViewGroup, paramBundle);
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
    dxz.a(this.a, paramActivity);
    Bundle bundle = new Bundle();
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
      paramBundle.setClassLoader(dxw.class.getClassLoader()); 
    super.onSaveInstanceState(paramBundle);
    this.a.b(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle) {
    super.setArguments(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */