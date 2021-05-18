package android.support.v4.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;

class ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl implements ConnectivityManagerCompat$ConnectivityManagerCompatImpl {
  public int getRestrictBackgroundStatus(ConnectivityManager paramConnectivityManager) {
    return 3;
  }
  
  public boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager) {
    NetworkInfo networkInfo = paramConnectivityManager.getActiveNetworkInfo();
    if (networkInfo == null);
    switch (networkInfo.getType()) {
      case 0:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        return true;
      default:
        return true;
      case 1:
        break;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\net\ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */