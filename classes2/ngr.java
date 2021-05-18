import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;

final class ngr extends ngq {
  ngr(ConnectivityManager paramConnectivityManager) {}
  
  @SuppressLint({"NewApi"})
  public boolean a() {
    if (Build.VERSION.SDK_INT < 23) {
      NetworkInfo networkInfo = this.a.getNetworkInfo(1);
      return !(networkInfo == null || !networkInfo.isConnected());
    } 
    Network[] arrayOfNetwork = this.a.getAllNetworks();
    int i = 0;
    while (i < arrayOfNetwork.length) {
      if (this.a.getNetworkInfo(arrayOfNetwork[i]).getType() != 1) {
        i++;
        continue;
      } 
      return true;
    } 
    return false;
  }
  
  public boolean b() {
    NetworkInfo networkInfo = this.a.getActiveNetworkInfo();
    return (networkInfo != null && networkInfo.isConnected());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */