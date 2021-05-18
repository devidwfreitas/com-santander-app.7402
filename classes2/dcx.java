import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;

class dcx implements Runnable {
  dcx(dcw paramdcw, ConnectionResult paramConnectionResult) {}
  
  public void run() {
    if (this.a.b()) {
      dcw.a(this.b, true);
      if (dcw.a(this.b).d()) {
        dcw.b(this.b);
        return;
      } 
      dcw.a(this.b).a(null, Collections.emptySet());
      return;
    } 
    ((dcs)dcq.j(this.b.a).get(dcw.c(this.b))).a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */