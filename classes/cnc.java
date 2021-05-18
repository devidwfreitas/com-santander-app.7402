import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class cnc implements ServiceConnection {
  boolean a = false;
  
  private final BlockingQueue<IBinder> b = new LinkedBlockingQueue<IBinder>();
  
  public IBinder a() {
    if (this.a)
      throw new IllegalStateException(); 
    this.a = true;
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cnc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */