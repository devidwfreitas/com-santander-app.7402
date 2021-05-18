import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.santander.app.MinhaConta;

public class ifr implements ifq {
  private ifh a;
  
  private Activity b;
  
  public ifr(ifh paramifh, Activity paramActivity) {
    this.a = paramifh;
    this.b = paramActivity;
  }
  
  public void a() {
    String str = Base64.encodeToString(miq.C().f().k().getBytes(), 0).trim().replace("\n", "");
    Activity activity = this.b;
    MinhaConta.b();
    activity.getSharedPreferences("offerFingerprintEnabling", 0).edit().putBoolean(str, false).commit();
  }
  
  public void a(Intent paramIntent) {
    if (paramIntent.hasExtra("action")) {
      switch (ifs.a[((iev)paramIntent.getExtras().get("action")).ordinal()]) {
        default:
          return;
        case 1:
          this.a.a();
          return;
        case 2:
          break;
      } 
      b();
      return;
    } 
    this.a.b();
  }
  
  public void b() {
    iev iev;
    ieu ieu = new ieu((Context)this.b);
    ifh ifh1 = this.a;
    if (ieu.a("")) {
      iev = iev.DISABLE;
    } else {
      iev = iev.ENABLE;
    } 
    ifh1.a(iev);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ifr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */