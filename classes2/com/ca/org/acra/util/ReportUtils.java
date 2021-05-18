package com.ca.org.acra.util;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import com.ca.org.acra.ACRA;
import java.io.File;

public final class ReportUtils {
  public static String getApplicationFilePath(Context paramContext) {
    File file = paramContext.getFilesDir();
    if (file != null)
      return file.getAbsolutePath(); 
    Log.w(ACRA.LOG_TAG, "Couldn't retrieve ApplicationFilePath for : " + paramContext.getPackageName());
    return "Couldn't retrieve ApplicationFilePath";
  }
  
  public static long getAvailableInternalMemorySize() {
    StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
    long l = statFs.getBlockSize();
    return statFs.getAvailableBlocks() * l;
  }
  
  public static String getDeviceId(Context paramContext) {
    try {
      return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    } catch (RuntimeException runtimeException) {
      Log.w(ACRA.LOG_TAG, "Couldn't retrieve DeviceId for : " + paramContext.getPackageName(), runtimeException);
      return null;
    } 
  }
  
  public static String getDisplayDetails(Context paramContext) {
    try {
      Display display = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
      DisplayMetrics displayMetrics = new DisplayMetrics();
      display.getMetrics(displayMetrics);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("width=").append(display.getWidth()).append('\n');
      stringBuilder.append("height=").append(display.getHeight()).append('\n');
      stringBuilder.append("pixelFormat=").append(display.getPixelFormat()).append('\n');
      stringBuilder.append("refreshRate=").append(display.getRefreshRate()).append("fps").append('\n');
      stringBuilder.append("metrics.density=x").append(displayMetrics.density).append('\n');
      stringBuilder.append("metrics.scaledDensity=x").append(displayMetrics.scaledDensity).append('\n');
      stringBuilder.append("metrics.widthPixels=").append(displayMetrics.widthPixels).append('\n');
      stringBuilder.append("metrics.heightPixels=").append(displayMetrics.heightPixels).append('\n');
      stringBuilder.append("metrics.xdpi=").append(displayMetrics.xdpi).append('\n');
      stringBuilder.append("metrics.ydpi=").append(displayMetrics.ydpi);
      return stringBuilder.toString();
    } catch (RuntimeException runtimeException) {
      Log.w(ACRA.LOG_TAG, "Couldn't retrieve DisplayDetails for : " + paramContext.getPackageName(), runtimeException);
      return "Couldn't retrieve Display Details";
    } 
  }
  
  public static long getTotalInternalMemorySize() {
    StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
    long l = statFs.getBlockSize();
    return statFs.getBlockCount() * l;
  }
  
  public static String sparseArrayToString(SparseArray<?> paramSparseArray) {
    StringBuilder stringBuilder = new StringBuilder();
    if (paramSparseArray == null)
      return "null"; 
    stringBuilder.append('{');
    for (int i = 0; i < paramSparseArray.size(); i++) {
      stringBuilder.append(paramSparseArray.keyAt(i));
      stringBuilder.append(" => ");
      if (paramSparseArray.valueAt(i) == null) {
        stringBuilder.append("null");
      } else {
        stringBuilder.append(paramSparseArray.valueAt(i).toString());
      } 
      if (i < paramSparseArray.size() - 1)
        stringBuilder.append(", "); 
    } 
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acr\\util\ReportUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */