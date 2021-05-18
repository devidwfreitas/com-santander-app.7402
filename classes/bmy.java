import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

final class bmy implements ServiceConnection {
  private AtomicBoolean a = new AtomicBoolean(false);
  
  private final BlockingQueue<IBinder> b = new LinkedBlockingDeque<IBinder>();
  
  private bmy() {}
  
  public IBinder a() {
    if (this.a.compareAndSet(true, true))
      throw new IllegalStateException("Binder already consumed"); 
    return this.b.take();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    try {
      this.b.put(paramIBinder);
      return;
    } catch (InterruptedException interruptedException) {
      return;
    } 
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */