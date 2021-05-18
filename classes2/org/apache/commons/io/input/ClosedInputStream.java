package org.apache.commons.io.input;

import java.io.InputStream;

public class ClosedInputStream extends InputStream {
  public static final ClosedInputStream CLOSED_INPUT_STREAM = new ClosedInputStream();
  
  public int read() {
    return -1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\ClosedInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */