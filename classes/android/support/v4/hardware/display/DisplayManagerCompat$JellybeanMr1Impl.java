package android.support.v4.hardware.display;

import android.content.Context;
import android.view.Display;

class DisplayManagerCompat$JellybeanMr1Impl extends DisplayManagerCompat {
  private final Object mDisplayManagerObj;
  
  public DisplayManagerCompat$JellybeanMr1Impl(Context paramContext) {
    this.mDisplayManagerObj = DisplayManagerJellybeanMr1.getDisplayManager(paramContext);
  }
  
  public Display getDisplay(int paramInt) {
    return DisplayManagerJellybeanMr1.getDisplay(this.mDisplayManagerObj, paramInt);
  }
  
  public Display[] getDisplays() {
    return DisplayManagerJellybeanMr1.getDisplays(this.mDisplayManagerObj);
  }
  
  public Display[] getDisplays(String paramString) {
    return DisplayManagerJellybeanMr1.getDisplays(this.mDisplayManagerObj, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\display\DisplayManagerCompat$JellybeanMr1Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */