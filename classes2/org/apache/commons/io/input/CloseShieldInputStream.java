package org.apache.commons.io.input;

import java.io.InputStream;

public class CloseShieldInputStream extends ProxyInputStream {
  public CloseShieldInputStream(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public void close() {
    this.in = new ClosedInputStream();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\CloseShieldInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */