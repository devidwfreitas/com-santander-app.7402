package android.support.v4.app;

import android.app.Activity;
import android.content.pm.PackageManager;

final class ActivityCompat$1 implements Runnable {
  public void run() {
    int[] arrayOfInt = new int[permissions.length];
    PackageManager packageManager = activity.getPackageManager();
    String str = activity.getPackageName();
    int j = permissions.length;
    for (int i = 0; i < j; i++)
      arrayOfInt[i] = packageManager.checkPermission(permissions[i], str); 
    ((ActivityCompat$OnRequestPermissionsResultCallback)activity).onRequestPermissionsResult(requestCode, permissions, arrayOfInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */