import android.support.annotation.BinderThread;
import com.google.android.gms.internal.zzbaw;
import java.lang.ref.WeakReference;

class dbz extends dqc {
  private final WeakReference<dbs> a;
  
  dbz(dbs paramdbs) {
    this.a = new WeakReference<dbs>(paramdbs);
  }
  
  @BinderThread
  public void a(zzbaw paramzzbaw) {
    dbs dbs = this.a.get();
    if (dbs == null)
      return; 
    dbs.d(dbs).a(new dca(this, dbs, dbs, paramzzbaw));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */