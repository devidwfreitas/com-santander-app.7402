package android.support.v4.hardware.display;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;

class DisplayManagerCompat$LegacyImpl extends DisplayManagerCompat {
  private final WindowManager mWindowManager;
  
  public DisplayManagerCompat$LegacyImpl(Context paramContext) {
    this.mWindowManager = (WindowManager)paramContext.getSystemService("window");
  }
  
  public Display getDisplay(int paramInt) {
    Display display = this.mWindowManager.getDefaultDisplay();
    return (display.getDisplayId() == paramInt) ? display : null;
  }
  
  public Display[] getDisplays() {
    return new Display[] { this.mWindowManager.getDefaultDisplay() };
  }
  
  public Display[] getDisplays(String paramString) {
    return (paramString == null) ? getDisplays() : new Display[0];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\display\DisplayManagerCompat$LegacyImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */