package android.support.v4.net;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;

public final class ConnectivityManagerCompat {
  private static final ConnectivityManagerCompat$ConnectivityManagerCompatImpl IMPL = new ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl();
  
  public static final int RESTRICT_BACKGROUND_STATUS_DISABLED = 1;
  
  public static final int RESTRICT_BACKGROUND_STATUS_ENABLED = 3;
  
  public static final int RESTRICT_BACKGROUND_STATUS_WHITELISTED = 2;
  
  public static NetworkInfo getNetworkInfoFromBroadcast(ConnectivityManager paramConnectivityManager, Intent paramIntent) {
    NetworkInfo networkInfo = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
    return (networkInfo != null) ? paramConnectivityManager.getNetworkInfo(networkInfo.getType()) : null;
  }
  
  public static int getRestrictBackgroundStatus(ConnectivityManager paramConnectivityManager) {
    return IMPL.getRestrictBackgroundStatus(paramConnectivityManager);
  }
  
  public static boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager) {
    return IMPL.isActiveNetworkMetered(paramConnectivityManager);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 24) {
      IMPL = new ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 13) {
      IMPL = new ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\net\ConnectivityManagerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */