import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Status;

public final class dtf extends dtb {
  public final ddp<?> c;
  
  public dtf(ddp<?> paramddp, egw<Void> paramegw) {
    super(4, paramegw);
    this.c = paramddp;
  }
  
  public void b(dcs<?> paramdcs) {
    ddw ddw = paramdcs.c().remove(this.c);
    if (ddw != null) {
      ddw.a.b();
      return;
    } 
    Log.wtf("UnregisterListenerTask", "Received call to unregister a listener without a matching registration call.", new Exception());
    this.b.b((Exception)new cql(Status.c));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dtf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */