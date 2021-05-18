import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.Profile;
import com.facebook.login.widget.LoginButton;

public class btk implements View.OnClickListener {
  public btk(LoginButton paramLoginButton) {}
  
  protected bsp a() {
    bsp bsp = bsp.c();
    bsp.a(this.b.i());
    bsp.a(this.b.k());
    return bsp;
  }
  
  protected void a(Context paramContext) {
    bsp bsp = a();
    if (LoginButton.g(this.b)) {
      String str1;
      String str2 = this.b.getResources().getString(bjx.com_facebook_loginview_log_out_action);
      String str3 = this.b.getResources().getString(bjx.com_facebook_loginview_cancel_action);
      Profile profile = Profile.a();
      if (profile != null && profile.g() != null) {
        str1 = String.format(this.b.getResources().getString(bjx.com_facebook_loginview_logged_in_as), new Object[] { profile.g() });
      } else {
        str1 = this.b.getResources().getString(bjx.com_facebook_loginview_logged_in_using_facebook);
      } 
      AlertDialog.Builder builder = new AlertDialog.Builder(paramContext);
      builder.setMessage(str1).setCancelable(true).setPositiveButton(str2, new btl(this, bsp)).setNegativeButton(str3, null);
      builder.create().show();
      return;
    } 
    bsp.f();
  }
  
  protected void b() {
    bsp bsp = a();
    if (bpv.PUBLISH.equals(btj.a(LoginButton.d(this.b)))) {
      if (this.b.b() != null) {
        bsp.b(this.b.b(), btj.b(LoginButton.d(this.b)));
        return;
      } 
      if (this.b.c() != null) {
        bsp.b(this.b.c(), btj.b(LoginButton.d(this.b)));
        return;
      } 
      bsp.b(LoginButton.e(this.b), btj.b(LoginButton.d(this.b)));
      return;
    } 
    if (this.b.b() != null) {
      bsp.a(this.b.b(), btj.b(LoginButton.d(this.b)));
      return;
    } 
    if (this.b.c() != null) {
      bsp.a(this.b.c(), btj.b(LoginButton.d(this.b)));
      return;
    } 
    bsp.a(LoginButton.f(this.b), btj.b(LoginButton.d(this.b)));
  }
  
  public void onClick(View paramView) {
    boolean bool;
    LoginButton.a(this.b, paramView);
    AccessToken accessToken = AccessToken.a();
    if (accessToken != null) {
      a(this.b.getContext());
    } else {
      b();
    } 
    bla bla = bla.c(this.b.getContext());
    Bundle bundle = new Bundle();
    if (accessToken != null) {
      bool = false;
    } else {
      bool = true;
    } 
    bundle.putInt("logging_in", bool);
    bla.a(LoginButton.c(this.b), (Double)null, bundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */