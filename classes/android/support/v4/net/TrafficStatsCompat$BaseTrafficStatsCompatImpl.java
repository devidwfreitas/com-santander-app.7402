package android.support.v4.net;

import java.net.DatagramSocket;
import java.net.Socket;

class TrafficStatsCompat$BaseTrafficStatsCompatImpl implements TrafficStatsCompat$TrafficStatsCompatImpl {
  private ThreadLocal<TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags> mThreadSocketTags = new TrafficStatsCompat$BaseTrafficStatsCompatImpl$1(this);
  
  public void clearThreadStatsTag() {
    ((TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags)this.mThreadSocketTags.get()).statsTag = -1;
  }
  
  public int getThreadStatsTag() {
    return ((TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags)this.mThreadSocketTags.get()).statsTag;
  }
  
  public void incrementOperationCount(int paramInt) {}
  
  public void incrementOperationCount(int paramInt1, int paramInt2) {}
  
  public void setThreadStatsTag(int paramInt) {
    ((TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags)this.mThreadSocketTags.get()).statsTag = paramInt;
  }
  
  public void tagDatagramSocket(DatagramSocket paramDatagramSocket) {}
  
  public void tagSocket(Socket paramSocket) {}
  
  public void untagDatagramSocket(DatagramSocket paramDatagramSocket) {}
  
  public void untagSocket(Socket paramSocket) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\net\TrafficStatsCompat$BaseTrafficStatsCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */