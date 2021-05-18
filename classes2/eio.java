import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.google.android.gms.iid.MessengerCompat;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class eio extends Service {
  private final Object a = new Object();
  
  private int b;
  
  MessengerCompat c = new MessengerCompat(new eip(this, Looper.getMainLooper()));
  
  @VisibleForTesting
  final ExecutorService d = Executors.newSingleThreadExecutor();
  
  private int e = 0;
  
  private void d(Intent paramIntent) {
    if (paramIntent != null)
      WakefulBroadcastReceiver.completeWakefulIntent(paramIntent); 
    synchronized (this.a) {
      this.e--;
      if (this.e == 0)
        b(this.b); 
      return;
    } 
  }
  
  public boolean a(Intent paramIntent) {
    return false;
  }
  
  public abstract void b(Intent paramIntent);
  
  boolean b(int paramInt) {
    return stopSelfResult(paramInt);
  }
  
  public abstract Intent c(Intent paramIntent);
  
  public final IBinder onBind(Intent paramIntent) {
    return (paramIntent != null && "com.google.firebase.INSTANCE_ID_EVENT".equals(paramIntent.getAction())) ? this.c.a() : null;
  }
  
  public final int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    synchronized (this.a) {
      this.b = paramInt2;
      this.e++;
      null = c(paramIntent);
      if (null == null) {
        d(paramIntent);
        return 2;
      } 
    } 
    if (a((Intent)SYNTHETIC_LOCAL_VARIABLE_4)) {
      d(paramIntent);
      return 2;
    } 
    this.d.execute(new eiq(this, (Intent)SYNTHETIC_LOCAL_VARIABLE_4, paramIntent));
    return 3;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */