import android.hardware.Camera;
import android.util.Log;

public final class esg {
  public static final int a = -1;
  
  private static final String b = esg.class.getName();
  
  public static int a(int paramInt) {
    boolean bool;
    int j = Camera.getNumberOfCameras();
    if (j == 0) {
      Log.w(b, "No cameras!");
      return -1;
    } 
    if (paramInt >= 0) {
      bool = true;
    } else {
      bool = false;
    } 
    if (!bool) {
      paramInt = 0;
      while (true) {
        int k = paramInt;
        if (paramInt < j) {
          Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
          Camera.getCameraInfo(paramInt, cameraInfo);
          if (cameraInfo.facing == 0) {
            k = paramInt;
          } else {
            paramInt++;
            continue;
          } 
        } 
        return (k < j) ? k : (!bool ? 0 : -1);
      } 
    } 
    int i = paramInt;
    return (i < j) ? i : (!bool ? 0 : -1);
  }
  
  public static Camera b(int paramInt) {
    paramInt = a(paramInt);
    return (paramInt == -1) ? null : Camera.open(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */