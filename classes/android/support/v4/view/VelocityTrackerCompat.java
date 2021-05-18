package android.support.v4.view;

import android.os.Build;
import android.view.VelocityTracker;

public final class VelocityTrackerCompat {
  static final VelocityTrackerCompat$VelocityTrackerVersionImpl IMPL = new VelocityTrackerCompat$BaseVelocityTrackerVersionImpl();
  
  public static float getXVelocity(VelocityTracker paramVelocityTracker, int paramInt) {
    return IMPL.getXVelocity(paramVelocityTracker, paramInt);
  }
  
  public static float getYVelocity(VelocityTracker paramVelocityTracker, int paramInt) {
    return IMPL.getYVelocity(paramVelocityTracker, paramInt);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 11) {
      IMPL = new VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\VelocityTrackerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */