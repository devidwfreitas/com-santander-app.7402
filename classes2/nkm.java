import android.annotation.TargetApi;
import android.app.Application;
import android.os.Build;

final class nkm implements nja {
  private final Application a;
  
  private final Application.ActivityLifecycleCallbacks b;
  
  public nkm(nkj paramnkj, nhp paramnhp) {
    this.a = paramnkj.b();
    if (Build.VERSION.SDK_INT >= 14) {
      this.b = a(paramnhp);
      this.a.registerActivityLifecycleCallbacks(this.b);
      return;
    } 
    this.b = null;
    paramnkj.o().e(nkf.activity_observer_warn_api_too_low, new Object[0]);
  }
  
  @TargetApi(14)
  private static Application.ActivityLifecycleCallbacks a(nhp paramnhp) {
    if (paramnhp == null)
      throw new IllegalArgumentException(); 
    return new nkn(paramnhp);
  }
  
  public void a(nkg paramnkg) {
    if (Build.VERSION.SDK_INT >= 14)
      this.a.unregisterActivityLifecycleCallbacks(this.b); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */