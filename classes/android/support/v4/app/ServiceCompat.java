package android.support.v4.app;

import android.app.Service;
import android.support.v4.os.BuildCompat;

public final class ServiceCompat {
  static final ServiceCompat$ServiceCompatImpl IMPL = new ServiceCompat$BaseServiceCompatImpl();
  
  public static final int START_STICKY = 1;
  
  public static final int STOP_FOREGROUND_DETACH = 2;
  
  public static final int STOP_FOREGROUND_REMOVE = 1;
  
  public static void stopForeground(Service paramService, int paramInt) {
    IMPL.stopForeground(paramService, paramInt);
  }
  
  static {
    if (BuildCompat.isAtLeastN()) {
      IMPL = new ServiceCompat$Api24ServiceCompatImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ServiceCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */