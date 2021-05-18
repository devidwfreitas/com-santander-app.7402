package org.apache.commons.io.output;

import java.io.OutputStream;

public class CloseShieldOutputStream extends ProxyOutputStream {
  public CloseShieldOutputStream(OutputStream paramOutputStream) {
    super(paramOutputStream);
  }
  
  public void close() {
    this.out = new ClosedOutputStream();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\CloseShieldOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */