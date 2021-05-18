package org.apache.commons.io.input;

import java.io.InputStream;

public class AutoCloseInputStream extends ProxyInputStream {
  public AutoCloseInputStream(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  protected void afterRead(int paramInt) {
    if (paramInt == -1)
      close(); 
  }
  
  public void close() {
    this.in.close();
    this.in = new ClosedInputStream();
  }
  
  protected void finalize() {
    close();
    super.finalize();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\AutoCloseInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */