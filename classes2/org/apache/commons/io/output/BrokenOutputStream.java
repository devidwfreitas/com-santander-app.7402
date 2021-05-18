package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

public class BrokenOutputStream extends OutputStream {
  private final IOException exception;
  
  public BrokenOutputStream() {
    this(new IOException("Broken output stream"));
  }
  
  public BrokenOutputStream(IOException paramIOException) {
    this.exception = paramIOException;
  }
  
  public void close() {
    throw this.exception;
  }
  
  public void flush() {
    throw this.exception;
  }
  
  public void write(int paramInt) {
    throw this.exception;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\BrokenOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */