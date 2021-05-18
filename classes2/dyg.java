import android.app.Activity;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

public class dyg extends Fragment {
  private final dyj a = new dyj(this);
  
  public static dyg a() {
    return new dyg();
  }
  
  public static dyg a(StreetViewPanoramaOptions paramStreetViewPanoramaOptions) {
    dyg dyg1 = new dyg();
    Bundle bundle = new Bundle();
    bundle.putParcelable("StreetViewPanoramaOptions", (Parcelable)paramStreetViewPanoramaOptions);
    dyg1.setArguments(bundle);
    return dyg1;
  }
  
  public void a(dxl paramdxl) {
    csp.b("getStreetViewPanoramaAsync() must be called on the main thread");
    this.a.a(paramdxl);
  }
  
  public void onActivityCreated(Bundle paramBundle) {
    if (paramBundle != null)
      paramBundle.setClassLoader(dyg.class.getClassLoader()); 
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    dyj.a(this.a, paramActivity);
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
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle) {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    dyj.a(this.a, paramActivity);
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
      paramBundle.setClassLoader(dyg.class.getClassLoader()); 
    super.onSaveInstanceState(paramBundle);
    this.a.b(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle) {
    super.setArguments(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */