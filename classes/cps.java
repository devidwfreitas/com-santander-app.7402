import android.support.annotation.NonNull;

public class cps {
  public static final int a = -1;
  
  public static final int b = 0;
  
  @Deprecated
  public static final int c = 2;
  
  @Deprecated
  public static final int d = 3;
  
  public static final int e = 4;
  
  public static final int f = 5;
  
  public static final int g = 6;
  
  public static final int h = 7;
  
  public static final int i = 8;
  
  public static final int j = 10;
  
  public static final int k = 13;
  
  public static final int l = 14;
  
  public static final int m = 15;
  
  public static final int n = 16;
  
  public static final int o = 17;
  
  public static final int p = 18;
  
  @NonNull
  public static String a(int paramInt) {
    switch (paramInt) {
      default:
        return (new StringBuilder(32)).append("unknown status code: ").append(paramInt).toString();
      case -1:
        return "SUCCESS_CACHE";
      case 0:
        return "SUCCESS";
      case 2:
        return "SERVICE_VERSION_UPDATE_REQUIRED";
      case 3:
        return "SERVICE_DISABLED";
      case 4:
        return "SIGN_IN_REQUIRED";
      case 5:
        return "INVALID_ACCOUNT";
      case 6:
        return "RESOLUTION_REQUIRED";
      case 7:
        return "NETWORK_ERROR";
      case 8:
        return "INTERNAL_ERROR";
      case 10:
        return "DEVELOPER_ERROR";
      case 13:
        return "ERROR";
      case 14:
        return "INTERRUPTED";
      case 15:
        return "TIMEOUT";
      case 16:
        return "CANCELED";
      case 17:
        return "API_NOT_CONNECTED";
      case 18:
        break;
    } 
    return "DEAD_CLIENT";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */