package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

@TargetApi(24)
@RequiresApi(24)
class ActivityOptionsCompat$ActivityOptionsImpl24 extends ActivityOptionsCompat {
  private final ActivityOptionsCompat24 mImpl;
  
  ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24 paramActivityOptionsCompat24) {
    this.mImpl = paramActivityOptionsCompat24;
  }
  
  public Rect getLaunchBounds() {
    return this.mImpl.getLaunchBounds();
  }
  
  public void requestUsageTimeReport(PendingIntent paramPendingIntent) {
    this.mImpl.requestUsageTimeReport(paramPendingIntent);
  }
  
  public ActivityOptionsCompat setLaunchBounds(@Nullable Rect paramRect) {
    return new ActivityOptionsCompat$ActivityOptionsImpl24(this.mImpl.setLaunchBounds(paramRect));
  }
  
  public Bundle toBundle() {
    return this.mImpl.toBundle();
  }
  
  public void update(ActivityOptionsCompat paramActivityOptionsCompat) {
    if (paramActivityOptionsCompat instanceof ActivityOptionsCompat$ActivityOptionsImpl24) {
      paramActivityOptionsCompat = paramActivityOptionsCompat;
      this.mImpl.update(((ActivityOptionsCompat$ActivityOptionsImpl24)paramActivityOptionsCompat).mImpl);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityOptionsCompat$ActivityOptionsImpl24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */