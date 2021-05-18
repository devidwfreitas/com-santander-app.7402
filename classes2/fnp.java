import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.util.Log;

public class fnp extends fnt {
  private boolean a = true;
  
  private fog b;
  
  private int c;
  
  private miq d = miq.C();
  
  private void a(fnx paramfnx, fny paramfny, foh paramfoh) {
    if (!f(paramfny)) {
      if (c(paramfny))
        this.a = false; 
      if (e(paramfny)) {
        this.a = false;
      } else if (d(paramfny)) {
        this.a = false;
      } 
      if (g(paramfny))
        this.a = true; 
      if (l(paramfny)) {
        this.a = false;
      } else if (k(paramfny)) {
        this.a = false;
      } else if (h(paramfny)) {
        this.a = false;
      } else if (b(paramfny)) {
        this.a = false;
      } else if (a(paramfny)) {
        this.a = false;
      } 
      if (j(paramfny)) {
        this.a = true;
      } else if (i(paramfny)) {
        this.a = false;
      } 
      if (this.a) {
        fwr fwr = new fwr();
        fwr.j(paramfny.f());
        fwr.p(paramfny.c());
        a(fwr, paramfnx.a());
      } 
      paramfoh.a(paramfny);
      return;
    } 
    paramfoh.a(null);
  }
  
  public void a(Activity paramActivity, String paramString1, String paramString2) {
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity(paramActivity);
    dialog.setContentView(2130968943);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.findViewById(2131756828).setOnClickListener(new fnr(this, paramActivity, paramString1, paramString2, dialog));
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(paramActivity.getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
  
  public void a(Context paramContext, Activity paramActivity, fnx paramfnx, foh paramfoh) {
    this.b = (fog)(new fog(new fnq(this, paramfnx, paramfoh, paramActivity, paramContext), paramActivity, paramfnx)).c((Object[])new fnx[0]);
  }
  
  public void a(fwr paramfwr, String paramString) {
    this.d.f().h(paramString);
    this.d.f().g(paramfwr.j());
    this.d.f().f(paramfwr.p());
  }
  
  public boolean a() {
    return true;
  }
  
  public boolean b() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */