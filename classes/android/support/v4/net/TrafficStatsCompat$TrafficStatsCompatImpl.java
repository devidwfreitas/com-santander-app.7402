package android.support.v4.net;

import java.net.DatagramSocket;
import java.net.Socket;

interface TrafficStatsCompat$TrafficStatsCompatImpl {
  void clearThreadStatsTag();
  
  int getThreadStatsTag();
  
  void incrementOperationCount(int paramInt);
  
  void incrementOperationCount(int paramInt1, int paramInt2);
  
  void setThreadStatsTag(int paramInt);
  
  void tagDatagramSocket(DatagramSocket paramDatagramSocket);
  
  void tagSocket(Socket paramSocket);
  
  void untagDatagramSocket(DatagramSocket paramDatagramSocket);
  
  void untagSocket(Socket paramSocket);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\net\TrafficStatsCompat$TrafficStatsCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */