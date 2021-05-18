package android.support.v4.net;

import java.net.DatagramSocket;
import java.net.Socket;

class TrafficStatsCompat$IcsTrafficStatsCompatImpl implements TrafficStatsCompat$TrafficStatsCompatImpl {
  public void clearThreadStatsTag() {
    TrafficStatsCompatIcs.clearThreadStatsTag();
  }
  
  public int getThreadStatsTag() {
    return TrafficStatsCompatIcs.getThreadStatsTag();
  }
  
  public void incrementOperationCount(int paramInt) {
    TrafficStatsCompatIcs.incrementOperationCount(paramInt);
  }
  
  public void incrementOperationCount(int paramInt1, int paramInt2) {
    TrafficStatsCompatIcs.incrementOperationCount(paramInt1, paramInt2);
  }
  
  public void setThreadStatsTag(int paramInt) {
    TrafficStatsCompatIcs.setThreadStatsTag(paramInt);
  }
  
  public void tagDatagramSocket(DatagramSocket paramDatagramSocket) {
    TrafficStatsCompatIcs.tagDatagramSocket(paramDatagramSocket);
  }
  
  public void tagSocket(Socket paramSocket) {
    TrafficStatsCompatIcs.tagSocket(paramSocket);
  }
  
  public void untagDatagramSocket(DatagramSocket paramDatagramSocket) {
    TrafficStatsCompatIcs.untagDatagramSocket(paramDatagramSocket);
  }
  
  public void untagSocket(Socket paramSocket) {
    TrafficStatsCompatIcs.untagSocket(paramSocket);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\net\TrafficStatsCompat$IcsTrafficStatsCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */