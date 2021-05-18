package android.support.v4.content.res;

import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;

public final class ConfigurationHelper {
  private static final ConfigurationHelper$ConfigurationHelperImpl IMPL = new ConfigurationHelper$GingerbreadImpl();
  
  public static int getDensityDpi(@NonNull Resources paramResources) {
    return IMPL.getDensityDpi(paramResources);
  }
  
  public static int getScreenHeightDp(@NonNull Resources paramResources) {
    return IMPL.getScreenHeightDp(paramResources);
  }
  
  public static int getScreenWidthDp(@NonNull Resources paramResources) {
    return IMPL.getScreenWidthDp(paramResources);
  }
  
  public static int getSmallestScreenWidthDp(@NonNull Resources paramResources) {
    return IMPL.getSmallestScreenWidthDp(paramResources);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 17) {
      IMPL = new ConfigurationHelper$JellybeanMr1Impl();
      return;
    } 
    if (i >= 13) {
      IMPL = new ConfigurationHelper$HoneycombMr2Impl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\res\ConfigurationHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */