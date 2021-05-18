package android.support.v4.hardware.display;

import android.content.Context;
import android.os.Build;
import android.view.Display;
import java.util.WeakHashMap;

public abstract class DisplayManagerCompat {
  public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
  
  private static final WeakHashMap<Context, DisplayManagerCompat> sInstances = new WeakHashMap<Context, DisplayManagerCompat>();
  
  public static DisplayManagerCompat getInstance(Context paramContext) {
    synchronized (sInstances) {
      DisplayManagerCompat displayManagerCompat2 = sInstances.get(paramContext);
      DisplayManagerCompat displayManagerCompat1 = displayManagerCompat2;
      if (displayManagerCompat2 == null) {
        if (Build.VERSION.SDK_INT >= 17) {
          displayManagerCompat1 = new DisplayManagerCompat$JellybeanMr1Impl(paramContext);
        } else {
          displayManagerCompat1 = new DisplayManagerCompat$LegacyImpl(paramContext);
        } 
        sInstances.put(paramContext, displayManagerCompat1);
      } 
      return displayManagerCompat1;
    } 
  }
  
  public abstract Display getDisplay(int paramInt);
  
  public abstract Display[] getDisplays();
  
  public abstract Display[] getDisplays(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\display\DisplayManagerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */