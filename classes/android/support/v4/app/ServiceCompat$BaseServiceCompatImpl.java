package android.support.v4.app;

import android.app.Service;

class ServiceCompat$BaseServiceCompatImpl implements ServiceCompat$ServiceCompatImpl {
  public void stopForeground(Service paramService, int paramInt) {
    boolean bool;
    if ((paramInt & 0x1) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    paramService.stopForeground(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ServiceCompat$BaseServiceCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */