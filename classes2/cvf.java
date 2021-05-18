import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import java.util.Collections;
import java.util.List;

public class cvf {
  private static final Object a = new Object();
  
  private static cvf b;
  
  private final List<String> c = Collections.EMPTY_LIST;
  
  private final List<String> d = Collections.EMPTY_LIST;
  
  private final List<String> e = Collections.EMPTY_LIST;
  
  private final List<String> f = Collections.EMPTY_LIST;
  
  public static cvf a() {
    synchronized (a) {
      if (b == null)
        b = new cvf(); 
      return b;
    } 
  }
  
  private boolean a(Context paramContext, Intent paramIntent) {
    ComponentName componentName = paramIntent.getComponent();
    return (componentName == null) ? false : cvn.c(paramContext, componentName.getPackageName());
  }
  
  @SuppressLint({"UntrackedBindService"})
  public void a(Context paramContext, ServiceConnection paramServiceConnection) {
    paramContext.unbindService(paramServiceConnection);
  }
  
  public void a(Context paramContext, ServiceConnection paramServiceConnection, String paramString, Intent paramIntent) {}
  
  public boolean a(Context paramContext, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt) {
    return a(paramContext, paramContext.getClass().getName(), paramIntent, paramServiceConnection, paramInt);
  }
  
  @SuppressLint({"UntrackedBindService"})
  public boolean a(Context paramContext, String paramString, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt) {
    if (a(paramContext, paramIntent)) {
      Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
      return false;
    } 
    return paramContext.bindService(paramIntent, paramServiceConnection, paramInt);
  }
  
  public void b(Context paramContext, ServiceConnection paramServiceConnection) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */