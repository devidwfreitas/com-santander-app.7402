package android.support.v4.net;

import java.io.FileDescriptor;
import java.net.DatagramSocket;
import java.net.Socket;

class DatagramSocketWrapper extends Socket {
  public DatagramSocketWrapper(DatagramSocket paramDatagramSocket, FileDescriptor paramFileDescriptor) {
    super(new DatagramSocketWrapper$DatagramSocketImplWrapper(paramDatagramSocket, paramFileDescriptor));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\net\DatagramSocketWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */