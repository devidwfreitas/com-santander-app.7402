import android.os.IBinder;
import java.lang.ref.WeakReference;

class deo implements IBinder.DeathRecipient, dep {
  private final WeakReference<dat<?>> a;
  
  private final WeakReference<cqt> b;
  
  private final WeakReference<IBinder> c;
  
  private deo(dat<?> paramdat, cqt paramcqt, IBinder paramIBinder) {
    this.b = new WeakReference<cqt>(paramcqt);
    this.a = new WeakReference<dat<?>>(paramdat);
    this.c = new WeakReference<IBinder>(paramIBinder);
  }
  
  private void a() {
    dat dat = this.a.get();
    cqt cqt = this.b.get();
    if (cqt != null && dat != null)
      cqt.a(dat.f().intValue()); 
    IBinder iBinder = this.c.get();
    if (iBinder != null)
      iBinder.unlinkToDeath(this, 0); 
  }
  
  public void a(dat<?> paramdat) {
    a();
  }
  
  public void binderDied() {
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\deo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */