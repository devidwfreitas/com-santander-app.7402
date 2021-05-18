package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

public abstract class ThresholdingOutputStream extends OutputStream {
  private final int threshold;
  
  private boolean thresholdExceeded;
  
  private long written;
  
  public ThresholdingOutputStream(int paramInt) {
    this.threshold = paramInt;
  }
  
  protected void checkThreshold(int paramInt) {
    if (!this.thresholdExceeded && this.written + paramInt > this.threshold) {
      this.thresholdExceeded = true;
      thresholdReached();
    } 
  }
  
  public void close() {
    try {
      flush();
    } catch (IOException iOException) {}
    getStream().close();
  }
  
  public void flush() {
    getStream().flush();
  }
  
  public long getByteCount() {
    return this.written;
  }
  
  protected abstract OutputStream getStream();
  
  public int getThreshold() {
    return this.threshold;
  }
  
  public boolean isThresholdExceeded() {
    return (this.written > this.threshold);
  }
  
  protected void resetByteCount() {
    this.thresholdExceeded = false;
    this.written = 0L;
  }
  
  protected abstract void thresholdReached();
  
  public void write(int paramInt) {
    checkThreshold(1);
    getStream().write(paramInt);
    this.written++;
  }
  
  public void write(byte[] paramArrayOfbyte) {
    checkThreshold(paramArrayOfbyte.length);
    getStream().write(paramArrayOfbyte);
    this.written += paramArrayOfbyte.length;
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    checkThreshold(paramInt2);
    getStream().write(paramArrayOfbyte, paramInt1, paramInt2);
    this.written += paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\ThresholdingOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */