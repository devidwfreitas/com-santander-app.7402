package android.support.v4.app;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(16)
@RequiresApi(16)
class ActivityOptionsCompat$ActivityOptionsImplJB extends ActivityOptionsCompat {
  private final ActivityOptionsCompatJB mImpl;
  
  ActivityOptionsCompat$ActivityOptionsImplJB(ActivityOptionsCompatJB paramActivityOptionsCompatJB) {
    this.mImpl = paramActivityOptionsCompatJB;
  }
  
  public Bundle toBundle() {
    return this.mImpl.toBundle();
  }
  
  public void update(ActivityOptionsCompat paramActivityOptionsCompat) {
    if (paramActivityOptionsCompat instanceof ActivityOptionsCompat$ActivityOptionsImplJB) {
      paramActivityOptionsCompat = paramActivityOptionsCompat;
      this.mImpl.update(((ActivityOptionsCompat$ActivityOptionsImplJB)paramActivityOptionsCompat).mImpl);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityOptionsCompat$ActivityOptionsImplJB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */