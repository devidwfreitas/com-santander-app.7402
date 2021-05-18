package org.apache.commons.exec;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.exec.util.DebugUtils;

public class InputStreamPumper implements Runnable {
  public static final int SLEEPING_TIME = 100;
  
  private final InputStream is;
  
  private final OutputStream os;
  
  private volatile boolean stop;
  
  public InputStreamPumper(InputStream paramInputStream, OutputStream paramOutputStream) {
    this.is = paramInputStream;
    this.os = paramOutputStream;
    this.stop = false;
  }
  
  public void run() {
    while (true) {
      try {
        if (!this.stop) {
          while (this.is.available() > 0 && !this.stop)
            this.os.write(this.is.read()); 
        } else {
          return;
        } 
        this.os.flush();
        Thread.sleep(100L);
      } catch (Exception exception) {
        DebugUtils.handleException("Got exception while reading/writing the stream", exception);
        return;
      } finally {}
    } 
  }
  
  public void stopProcessing() {
    this.stop = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\InputStreamPumper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */