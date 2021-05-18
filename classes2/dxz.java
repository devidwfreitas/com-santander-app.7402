import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

class dxz extends cxb<dxx> {
  protected cxp<dxx> a;
  
  private final Fragment b;
  
  private Activity c;
  
  private final List<dxl> d = new ArrayList<dxl>();
  
  dxz(Fragment paramFragment) {
    this.b = paramFragment;
  }
  
  private void a(Activity paramActivity) {
    this.c = paramActivity;
    i();
  }
  
  protected void a(cxp<dxx> paramcxp) {
    this.a = paramcxp;
    i();
  }
  
  public void a(dxl paramdxl) {
    if (a() != null) {
      a().a(paramdxl);
      return;
    } 
    this.d.add(paramdxl);
  }
  
  public void i() {
    if (this.c != null && this.a != null && a() == null)
      try {
        dxj.a((Context)this.c);
        dzg dzg = eao.a((Context)this.c).c(cxo.a(this.c));
        this.a.a(new dxx(this.b, dzg));
        for (dxl dxl : this.d)
          a().a(dxl); 
        this.d.clear();
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      } catch (cop cop) {
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */