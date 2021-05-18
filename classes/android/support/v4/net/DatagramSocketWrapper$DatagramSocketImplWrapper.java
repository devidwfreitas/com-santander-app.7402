package android.support.v4.net;

import java.io.FileDescriptor;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.net.SocketImpl;

class DatagramSocketWrapper$DatagramSocketImplWrapper extends SocketImpl {
  public DatagramSocketWrapper$DatagramSocketImplWrapper(DatagramSocket paramDatagramSocket, FileDescriptor paramFileDescriptor) {
    this.localport = paramDatagramSocket.getLocalPort();
    this.fd = paramFileDescriptor;
  }
  
  protected void accept(SocketImpl paramSocketImpl) {
    throw new UnsupportedOperationException();
  }
  
  protected int available() {
    throw new UnsupportedOperationException();
  }
  
  protected void bind(InetAddress paramInetAddress, int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  protected void close() {
    throw new UnsupportedOperationException();
  }
  
  protected void connect(String paramString, int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  protected void connect(InetAddress paramInetAddress, int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  protected void connect(SocketAddress paramSocketAddress, int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  protected void create(boolean paramBoolean) {
    throw new UnsupportedOperationException();
  }
  
  protected InputStream getInputStream() {
    throw new UnsupportedOperationException();
  }
  
  public Object getOption(int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  protected OutputStream getOutputStream() {
    throw new UnsupportedOperationException();
  }
  
  protected void listen(int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  protected void sendUrgentData(int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  public void setOption(int paramInt, Object paramObject) {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\net\DatagramSocketWrapper$DatagramSocketImplWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */