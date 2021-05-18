package org.apache.commons.exec;

import java.io.InputStream;
import java.io.OutputStream;

public interface ExecuteStreamHandler {
  void setProcessErrorStream(InputStream paramInputStream);
  
  void setProcessInputStream(OutputStream paramOutputStream);
  
  void setProcessOutputStream(InputStream paramInputStream);
  
  void start();
  
  void stop();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\ExecuteStreamHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */