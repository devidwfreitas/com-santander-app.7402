import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class cwk implements ServiceConnection {
  boolean a = false;
  
  private final BlockingQueue<IBinder> b = new LinkedBlockingQueue<IBinder>();
  
  public IBinder a() {
    csp.c("BlockingServiceConnection.getService() called on main thread");
    if (this.a)
      throw new IllegalStateException("Cannot call get on this connection more than once"); 
    this.a = true;
    return this.b.take();
  }
  
  public IBinder a(long paramLong, TimeUnit paramTimeUnit) {
    csp.c("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
    if (this.a)
      throw new IllegalStateException("Cannot call get on this connection more than once"); 
    this.a = true;
    IBinder iBinder = this.b.poll(paramLong, paramTimeUnit);
    if (iBinder == null)
      throw new TimeoutException("Timed out waiting for the service connection"); 
    return iBinder;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    this.b.add(paramIBinder);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */