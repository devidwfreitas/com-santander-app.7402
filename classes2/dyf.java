import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import java.util.ArrayList;
import java.util.List;

public class dyf extends cxb<dyd> {
  protected cxp<dyd> a;
  
  private final Fragment b;
  
  private Activity c;
  
  private final List<dxk> d = new ArrayList<dxk>();
  
  public dyf(Fragment paramFragment) {
    this.b = paramFragment;
  }
  
  private void a(Activity paramActivity) {
    this.c = paramActivity;
    i();
  }
  
  protected void a(cxp<dyd> paramcxp) {
    this.a = paramcxp;
    i();
  }
  
  public void a(dxk paramdxk) {
    if (a() != null) {
      a().a(paramdxk);
      return;
    } 
    this.d.add(paramdxk);
  }
  
  public void c(Bundle paramBundle) {
    if (a() != null)
      a().c(paramBundle); 
  }
  
  public void i() {
    if (this.c != null && this.a != null && a() == null)
      try {
        dxj.a((Context)this.c);
        dyu dyu = eao.a((Context)this.c).b(cxo.a(this.c));
        if (dyu == null)
          return; 
        this.a.a(new dyd(this.b, dyu));
        for (dxk dxk : this.d)
          a().a(dxk); 
        this.d.clear();
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      } catch (cop cop) {} 
  }
  
  public void j() {
    if (a() != null)
      a().h(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */