package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

public class BrokenInputStream extends InputStream {
  private final IOException exception;
  
  public BrokenInputStream() {
    this(new IOException("Broken input stream"));
  }
  
  public BrokenInputStream(IOException paramIOException) {
    this.exception = paramIOException;
  }
  
  public int available() {
    throw this.exception;
  }
  
  public void close() {
    throw this.exception;
  }
  
  public int read() {
    throw this.exception;
  }
  
  public void reset() {
    throw this.exception;
  }
  
  public long skip(long paramLong) {
    throw this.exception;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\BrokenInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */