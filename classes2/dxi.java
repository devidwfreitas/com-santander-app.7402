import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.maps.GoogleMapOptions;
import java.util.ArrayList;
import java.util.List;

public class dxi extends cxb<dxg> {
  protected cxp<dxg> a;
  
  private final ViewGroup b;
  
  private final Context c;
  
  private final GoogleMapOptions d;
  
  private final List<dxk> e = new ArrayList<dxk>();
  
  public dxi(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions) {
    this.b = paramViewGroup;
    this.c = paramContext;
    this.d = paramGoogleMapOptions;
  }
  
  protected void a(cxp<dxg> paramcxp) {
    this.a = paramcxp;
    i();
  }
  
  public void a(dxk paramdxk) {
    if (a() != null) {
      a().a(paramdxk);
      return;
    } 
    this.e.add(paramdxk);
  }
  
  public void c(Bundle paramBundle) {
    if (a() != null)
      a().c(paramBundle); 
  }
  
  public void i() {
    if (this.a != null && a() == null)
      try {
        dxj.a(this.c);
        dyx dyx = eao.a(this.c).a(cxo.a(this.c), this.d);
        if (dyx == null)
          return; 
        this.a.a(new dxg(this.b, dyx));
        for (dxk dxk : this.e)
          a().a(dxk); 
        this.e.clear();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dxi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */