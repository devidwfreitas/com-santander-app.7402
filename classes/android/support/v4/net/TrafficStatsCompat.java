package android.support.v4.net;

import android.os.Build;
import java.net.DatagramSocket;
import java.net.Socket;

public final class TrafficStatsCompat {
  private static final TrafficStatsCompat$TrafficStatsCompatImpl IMPL = new TrafficStatsCompat$BaseTrafficStatsCompatImpl();
  
  public static void clearThreadStatsTag() {
    IMPL.clearThreadStatsTag();
  }
  
  public static int getThreadStatsTag() {
    return IMPL.getThreadStatsTag();
  }
  
  public static void incrementOperationCount(int paramInt) {
    IMPL.incrementOperationCount(paramInt);
  }
  
  public static void incrementOperationCount(int paramInt1, int paramInt2) {
    IMPL.incrementOperationCount(paramInt1, paramInt2);
  }
  
  public static void setThreadStatsTag(int paramInt) {
    IMPL.setThreadStatsTag(paramInt);
  }
  
  public static void tagDatagramSocket(DatagramSocket paramDatagramSocket) {
    IMPL.tagDatagramSocket(paramDatagramSocket);
  }
  
  public static void tagSocket(Socket paramSocket) {
    IMPL.tagSocket(paramSocket);
  }
  
  public static void untagDatagramSocket(DatagramSocket paramDatagramSocket) {
    IMPL.untagDatagramSocket(paramDatagramSocket);
  }
  
  public static void untagSocket(Socket paramSocket) {
    IMPL.untagSocket(paramSocket);
  }
  
  static {
    if ("N".equals(Build.VERSION.CODENAME)) {
      IMPL = new TrafficStatsCompat$Api24TrafficStatsCompatImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new TrafficStatsCompat$IcsTrafficStatsCompatImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\net\TrafficStatsCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */