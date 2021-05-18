import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;

public final class ctj implements ServiceConnection {
  private final int b;
  
  public ctj(ctb paramctb, int paramInt) {
    this.b = paramInt;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    if (paramIBinder == null) {
      this.a.a(8, (Bundle)null, this.b);
      return;
    } 
    synchronized (ctb.a(this.a)) {
      ctb.a(this.a, cus.a(paramIBinder));
      this.a.a(0, (Bundle)null, this.b);
      return;
    } 
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {
    synchronized (ctb.a(this.a)) {
      ctb.a(this.a, (cur)null);
      this.a.a.sendMessage(this.a.a.obtainMessage(4, this.b, 1));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */