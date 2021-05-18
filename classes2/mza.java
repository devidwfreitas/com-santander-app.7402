import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;

public class mza {
  public static String a(String paramString) {
    try {
      Iterator<NetworkInterface> iterator = Collections.<NetworkInterface>list(NetworkInterface.getNetworkInterfaces()).iterator();
      while (iterator.hasNext()) {
        NetworkInterface networkInterface = iterator.next();
        if (paramString == null || networkInterface.getName().equalsIgnoreCase(paramString)) {
          byte[] arrayOfByte = networkInterface.getHardwareAddress();
          if (arrayOfByte == null)
            return ""; 
          StringBuilder stringBuilder = new StringBuilder();
          for (int i = 0; i < arrayOfByte.length; i++) {
            stringBuilder.append(String.format("%02X:", new Object[] { Byte.valueOf(arrayOfByte[i]) }));
          } 
          if (stringBuilder.length() > 0)
            stringBuilder.deleteCharAt(stringBuilder.length() - 1); 
          return stringBuilder.toString();
        } 
      } 
    } catch (Exception exception) {}
    return "";
  }
  
  public static String a(boolean paramBoolean) {
    try {
      Iterator<NetworkInterface> iterator = Collections.<NetworkInterface>list(NetworkInterface.getNetworkInterfaces()).iterator();
      while (true) {
        if (iterator.hasNext()) {
          for (InetAddress inetAddress : Collections.<InetAddress>list(((NetworkInterface)iterator.next()).getInetAddresses())) {
            if (!inetAddress.isLoopbackAddress()) {
              int i;
              String str = inetAddress.getHostAddress();
              if (str.indexOf(':') < 0) {
                i = 1;
              } else {
                i = 0;
              } 
              if (paramBoolean) {
                if (i)
                  return str; 
                continue;
              } 
              if (!i) {
                i = str.indexOf('%');
                return (i < 0) ? str.toUpperCase() : str.substring(0, i).toUpperCase();
              } 
            } 
          } 
          continue;
        } 
        return "";
      } 
    } catch (Exception exception) {}
    return "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mza.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */