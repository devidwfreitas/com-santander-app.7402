import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.util.Log;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

public class myz {
  public static String[] a(Context paramContext) {
    boolean bool1 = false;
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
    int j = arrayOfNetworkInfo.length;
    int i = 0;
    boolean bool2 = false;
    while (i < j) {
      NetworkInfo networkInfo = arrayOfNetworkInfo[i];
      boolean bool3 = bool2;
      if (networkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
        bool3 = bool2;
        if (networkInfo.isConnected())
          bool3 = true; 
      } 
      boolean bool4 = bool1;
      if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE")) {
        bool4 = bool1;
        if (networkInfo.isConnected())
          bool4 = true; 
      } 
      i++;
      bool2 = bool3;
      bool1 = bool4;
    } 
    return (bool2 == true) ? d(paramContext) : ((bool1 == true) ? c(paramContext) : null);
  }
  
  public static boolean b(Context paramContext) {
    NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return !(networkInfo == null || !networkInfo.isConnected() || !networkInfo.isAvailable());
  }
  
  private static String[] c(Context paramContext) {
    try {
      Enumeration<NetworkInterface> enumeration = NetworkInterface.getNetworkInterfaces();
      while (enumeration.hasMoreElements()) {
        Enumeration<InetAddress> enumeration1 = ((NetworkInterface)enumeration.nextElement()).getInetAddresses();
        while (enumeration1.hasMoreElements()) {
          InetAddress inetAddress = enumeration1.nextElement();
          if (!inetAddress.isLoopbackAddress()) {
            String str1 = ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperatorName();
            String str2 = inetAddress.getHostAddress().toString();
            return new String[] { "MOBILE", str1, str2 };
          } 
        } 
      } 
    } catch (Exception exception) {
      Log.e("Current IP", exception.toString());
    } 
    return null;
  }
  
  private static String[] d(Context paramContext) {
    WifiManager wifiManager = (WifiManager)paramContext.getSystemService("wifi");
    return new String[] { "WIFI", wifiManager.getConnectionInfo().getSSID(), Formatter.formatIpAddress(wifiManager.getConnectionInfo().getIpAddress()) };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */