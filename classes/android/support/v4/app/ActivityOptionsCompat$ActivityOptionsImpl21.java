package android.support.v4.app;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class ActivityOptionsCompat$ActivityOptionsImpl21 extends ActivityOptionsCompat {
  private final ActivityOptionsCompat21 mImpl;
  
  ActivityOptionsCompat$ActivityOptionsImpl21(ActivityOptionsCompat21 paramActivityOptionsCompat21) {
    this.mImpl = paramActivityOptionsCompat21;
  }
  
  public Bundle toBundle() {
    return this.mImpl.toBundle();
  }
  
  public void update(ActivityOptionsCompat paramActivityOptionsCompat) {
    if (paramActivityOptionsCompat instanceof ActivityOptionsCompat$ActivityOptionsImpl21) {
      paramActivityOptionsCompat = paramActivityOptionsCompat;
      this.mImpl.update(((ActivityOptionsCompat$ActivityOptionsImpl21)paramActivityOptionsCompat).mImpl);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityOptionsCompat$ActivityOptionsImpl21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */