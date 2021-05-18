import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;

public class di implements dh {
  private static final byte[] a = new byte[] { 
      48, 98, 102, 56, 57, 101, 97, 48, 50, 51, 
      99, 52, 53, 100, 52, 51, 52, 100, 55, 102, 
      56, 101, 57, 99, 49, 98, 48, 97, 54, 101, 
      50, 101, 49, 53, 98, 101, 54, 97, 56, 99, 
      57, 101, 100, 48, 50, 98, 97, 57, 55, 99, 
      56, 51, 49, 50, 98, 102, 48, 97, 56, 55, 
      99, 51, 50, 98 };
  
  private static final boolean b = false;
  
  private byte[] c(Context paramContext) {
    String str2 = b(paramContext);
    String str1 = e(paramContext);
    return cs.a(String.valueOf(str2) + "/" + str1, a);
  }
  
  private String d(Context paramContext) {
    try {
      String str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      if (str != null)
        return str; 
    } catch (Throwable throwable) {}
    return "";
  }
  
  private String e(Context paramContext) {
    try {
      if (Build.VERSION.SDK_INT >= 4) {
        String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
        if (str != null)
          return str; 
      } 
    } catch (Exception exception) {
    
    } catch (Error error) {
    
    } catch (Throwable throwable) {}
    return "";
  }
  
  public byte[] a(Context paramContext) {
    return c(paramContext);
  }
  
  public String b(Context paramContext) {
    return d(paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\di.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */