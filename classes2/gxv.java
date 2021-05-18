import android.app.Activity;
import android.content.pm.PackageManager;
import android.util.Log;

public class gxv {
  private gkw a;
  
  private Activity b;
  
  private gta c;
  
  private mip d;
  
  public gxv(gkw paramgkw, Activity paramActivity) {
    this.a = paramgkw;
    this.b = paramActivity;
    this.d = (mip)miq.C();
  }
  
  public void a() {
    gxd gxd = new gxd();
    gxd.setConnUuid(this.d.i());
    gxd.setTokenSessao(this.d.j());
    gxd.setTokenTransacao(hau.a().d());
    try {
      gxd.a((this.b.getPackageManager().getPackageInfo(this.b.getPackageName(), 0)).versionName);
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("Error", nameNotFoundException.toString());
    } 
    (new gya(new gxw(this), this.b)).c((Object[])new gxd[] { gxd });
  }
  
  public void a(String paramString1, String paramString2) {
    gxf gxf = new gxf();
    gxf.b(paramString1);
    gxf.a(paramString2);
    gxf.setConnUuid(this.d.i());
    gxf.setTokenSessao(this.d.j());
    gxf.setTokenTransacao(this.d.f().m());
    (new gyb(new gxy(this), this.b)).c((Object[])new gxf[] { gxf });
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4) {
    gwz gwz = new gwz();
    gwz.setConnUuid(this.d.i());
    gwz.setTokenSessao(this.d.j());
    gwz.setTokenTransacao(hau.a().d());
    gwz.a(paramString1);
    gwz.b(paramString2);
    gwz.c(paramString3);
    gwz.d(paramString4);
    (new gxz(new gxx(this), this.b)).execute((Object[])new gwz[] { gwz });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gxv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */