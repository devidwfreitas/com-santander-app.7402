import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.login.LoginClient;

public class bsl extends Fragment {
  static final String a = "com.facebook.LoginFragment:Result";
  
  static final String b = "com.facebook.LoginFragment:Request";
  
  static final String c = "request";
  
  private static final String d = "LoginFragment";
  
  private static final String e = "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.";
  
  private static final String f = "loginClient";
  
  private String g;
  
  private LoginClient h;
  
  private LoginClient.Request i;
  
  private void a(Activity paramActivity) {
    ComponentName componentName = paramActivity.getCallingActivity();
    if (componentName == null)
      return; 
    this.g = componentName.getPackageName();
  }
  
  private void a(LoginClient.Result paramResult) {
    byte b;
    this.i = null;
    if (paramResult.a == bsk.CANCEL) {
      b = 0;
    } else {
      b = -1;
    } 
    Bundle bundle = new Bundle();
    bundle.putParcelable("com.facebook.LoginFragment:Result", (Parcelable)paramResult);
    Intent intent = new Intent();
    intent.putExtras(bundle);
    if (isAdded()) {
      getActivity().setResult(b, intent);
      getActivity().finish();
    } 
  }
  
  protected LoginClient a() {
    return new LoginClient(this);
  }
  
  public LoginClient b() {
    return this.h;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.h.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      this.h = (LoginClient)paramBundle.getParcelable("loginClient");
      this.h.a(this);
    } else {
      this.h = a();
    } 
    this.h.a(new bsm(this));
    FragmentActivity fragmentActivity = getActivity();
    if (fragmentActivity != null) {
      a((Activity)fragmentActivity);
      if (fragmentActivity.getIntent() != null) {
        this.i = (LoginClient.Request)fragmentActivity.getIntent().getBundleExtra("com.facebook.LoginFragment:Request").getParcelable("request");
        return;
      } 
    } 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(bjw.com_facebook_login_fragment, paramViewGroup, false);
    this.h.a(new bsn(this, view));
    return view;
  }
  
  public void onDestroy() {
    this.h.f();
    super.onDestroy();
  }
  
  public void onPause() {
    super.onPause();
    getActivity().findViewById(bju.com_facebook_login_activity_progress_bar).setVisibility(8);
  }
  
  public void onResume() {
    super.onResume();
    if (this.g == null) {
      Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
      getActivity().finish();
      return;
    } 
    this.h.a(this.i);
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("loginClient", (Parcelable)this.h);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */