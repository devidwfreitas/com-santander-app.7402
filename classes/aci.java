import android.app.Activity;
import android.support.v4.app.ActivityCompat;

public class aci {
  public static final int a = 0;
  
  public static final int b = 1;
  
  private static final String[] c = new String[] { "android.permission.READ_EXTERNAL_STORAGE" };
  
  public static void a(Activity paramActivity) {
    ActivityCompat.requestPermissions(paramActivity, c, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aci.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */