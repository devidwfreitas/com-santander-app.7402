import android.os.Handler;
import android.os.Looper;
import java.util.Collection;
import java.util.EventListener;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledExecutorService;

final class nkv implements nhp {
  private final Handler b = new Handler(Looper.getMainLooper());
  
  private final Collection<niw> c = new ConcurrentLinkedQueue<niw>();
  
  private final Collection<njg> d = new ConcurrentLinkedQueue<njg>();
  
  private final ScheduledExecutorService e = nku.a();
  
  nkv(nhc paramnhc) {}
  
  private <T extends njg> void c(nib<T> paramnib) {
    Class<T> clazz = paramnib.f();
    for (njg njg : this.d) {
      if (clazz.isInstance(njg))
        paramnib.a(clazz.cast(njg)); 
    } 
  }
  
  public void a(Runnable paramRunnable) {
    this.b.post(paramRunnable);
  }
  
  public void a(Runnable paramRunnable, long paramLong) {
    this.b.postDelayed(new nkw(this, paramRunnable), paramLong);
  }
  
  public void a(EventListener paramEventListener) {
    boolean bool2 = true;
    boolean bool1 = false;
    if (paramEventListener instanceof njg) {
      this.d.add((njg)paramEventListener);
      bool1 = true;
    } 
    if (paramEventListener instanceof niw) {
      this.c.add((niw)paramEventListener);
      bool1 = bool2;
    } 
    if (!bool1)
      throw new IllegalArgumentException(); 
  }
  
  public <T extends njg> void a(nib<T> paramnib) {
    if (paramnib == null)
      throw new IllegalArgumentException(); 
    if (nip.a()) {
      c(paramnib);
      return;
    } 
    this.b.post(new nkx(this, paramnib));
  }
  
  public void b(Runnable paramRunnable) {
    this.e.submit(paramRunnable);
  }
  
  public void b(EventListener paramEventListener) {
    this.d.remove(paramEventListener);
    this.c.remove(paramEventListener);
  }
  
  public <T extends niw> void b(nib<T> paramnib) {
    if (paramnib == null)
      throw new IllegalArgumentException(); 
    this.e.submit(new nky(this, paramnib));
  }
  
  public void c(Runnable paramRunnable) {
    a(paramRunnable, 0L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */