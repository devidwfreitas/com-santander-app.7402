package com.ca.org.acra.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.ca.org.acra.ACRA;

public final class PackageManagerWrapper {
  private final Context context;
  
  public PackageManagerWrapper(Context paramContext) {
    this.context = paramContext;
  }
  
  public PackageInfo getPackageInfo() {
    PackageManager packageManager = this.context.getPackageManager();
    if (packageManager == null)
      return null; 
    try {
      return packageManager.getPackageInfo(this.context.getPackageName(), 0);
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.v(ACRA.LOG_TAG, "Failed to find PackageInfo for current App : " + this.context.getPackageName());
      return null;
    } catch (RuntimeException runtimeException) {
      return null;
    } 
  }
  
  public boolean hasPermission(String paramString) {
    PackageManager packageManager = this.context.getPackageManager();
    if (packageManager != null)
      try {
        int i = packageManager.checkPermission(paramString, this.context.getPackageName());
        return (i == 0);
      } catch (RuntimeException runtimeException) {
        return false;
      }  
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acr\\util\PackageManagerWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */