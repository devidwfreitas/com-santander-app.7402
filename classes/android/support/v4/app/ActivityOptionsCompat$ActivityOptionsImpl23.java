package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class ActivityOptionsCompat$ActivityOptionsImpl23 extends ActivityOptionsCompat {
  private final ActivityOptionsCompat23 mImpl;
  
  ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23 paramActivityOptionsCompat23) {
    this.mImpl = paramActivityOptionsCompat23;
  }
  
  public void requestUsageTimeReport(PendingIntent paramPendingIntent) {
    this.mImpl.requestUsageTimeReport(paramPendingIntent);
  }
  
  public Bundle toBundle() {
    return this.mImpl.toBundle();
  }
  
  public void update(ActivityOptionsCompat paramActivityOptionsCompat) {
    if (paramActivityOptionsCompat instanceof ActivityOptionsCompat$ActivityOptionsImpl23) {
      paramActivityOptionsCompat = paramActivityOptionsCompat;
      this.mImpl.update(((ActivityOptionsCompat$ActivityOptionsImpl23)paramActivityOptionsCompat).mImpl);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityOptionsCompat$ActivityOptionsImpl23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */