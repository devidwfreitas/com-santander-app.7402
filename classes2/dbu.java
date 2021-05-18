import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;

class dbu implements cth {
  private final WeakReference<dbs> a;
  
  private final cox<?> b;
  
  private final boolean c;
  
  public dbu(dbs paramdbs, cox<?> paramcox, boolean paramBoolean) {
    this.a = new WeakReference<dbs>(paramdbs);
    this.b = paramcox;
    this.c = paramBoolean;
  }
  
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    boolean bool = false;
    dbs dbs = this.a.get();
    if (dbs == null)
      return; 
    if (Looper.myLooper() == (dbs.d(dbs)).i.c())
      bool = true; 
    csp.a(bool, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
    dbs.c(dbs).lock();
    try {
      bool = dbs.a(dbs, 0);
      if (!bool)
        return; 
      if (!paramConnectionResult.b())
        dbs.a(dbs, paramConnectionResult, this.b, this.c); 
      if (dbs.k(dbs))
        dbs.j(dbs); 
      return;
    } finally {
      dbs.c(dbs).unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */