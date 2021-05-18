import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import java.util.ArrayList;
import java.util.List;

public class dyc extends cxb<dya> {
  protected cxp<dya> a;
  
  private final ViewGroup b;
  
  private final Context c;
  
  private final StreetViewPanoramaOptions d;
  
  private final List<dxl> e = new ArrayList<dxl>();
  
  public dyc(ViewGroup paramViewGroup, Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions) {
    this.b = paramViewGroup;
    this.c = paramContext;
    this.d = paramStreetViewPanoramaOptions;
  }
  
  protected void a(cxp<dya> paramcxp) {
    this.a = paramcxp;
    i();
  }
  
  public void a(dxl paramdxl) {
    if (a() != null) {
      a().a(paramdxl);
      return;
    } 
    this.e.add(paramdxl);
  }
  
  public void i() {
    if (this.a != null && a() == null)
      try {
        dzj dzj = eao.a(this.c).a(cxo.a(this.c), this.d);
        this.a.a(new dya(this.b, dzj));
        for (dxl dxl : this.e)
          a().a(dxl); 
        this.e.clear();
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      } catch (cop cop) {
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */