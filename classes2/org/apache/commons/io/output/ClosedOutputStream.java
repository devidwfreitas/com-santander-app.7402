package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

public class ClosedOutputStream extends OutputStream {
  public static final ClosedOutputStream CLOSED_OUTPUT_STREAM = new ClosedOutputStream();
  
  public void write(int paramInt) {
    throw new IOException("write(" + paramInt + ") failed: stream is closed");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\ClosedOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */