package org.apache.commons.exec;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

public abstract class LogOutputStream extends OutputStream {
  private static final int CR = 13;
  
  private static final int INTIAL_SIZE = 132;
  
  private static final int LF = 10;
  
  private final ByteArrayOutputStream buffer = new ByteArrayOutputStream(132);
  
  private final int level;
  
  private boolean skip = false;
  
  public LogOutputStream() {
    this(999);
  }
  
  public LogOutputStream(int paramInt) {
    this.level = paramInt;
  }
  
  public void close() {
    if (this.buffer.size() > 0)
      processBuffer(); 
    super.close();
  }
  
  public void flush() {
    if (this.buffer.size() > 0)
      processBuffer(); 
  }
  
  public int getMessageLevel() {
    return this.level;
  }
  
  protected void processBuffer() {
    processLine(this.buffer.toString());
    this.buffer.reset();
  }
  
  protected void processLine(String paramString) {
    processLine(paramString, this.level);
  }
  
  protected abstract void processLine(String paramString, int paramInt);
  
  public void write(int paramInt) {
    boolean bool;
    byte b = (byte)paramInt;
    if (b == 10 || b == 13) {
      if (!this.skip)
        processBuffer(); 
    } else {
      this.buffer.write(paramInt);
    } 
    if (b == 13) {
      bool = true;
    } else {
      bool = false;
    } 
    this.skip = bool;
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int i = paramInt1;
    int j = paramInt1;
    paramInt1 = i;
    while (paramInt2 > 0) {
      int k = paramInt1;
      for (i = paramInt2; i > 0 && paramArrayOfbyte[k] != 10 && paramArrayOfbyte[k] != 13; i--)
        k++; 
      int m = k - j;
      paramInt2 = i;
      paramInt1 = k;
      if (m > 0) {
        this.buffer.write(paramArrayOfbyte, j, m);
        paramInt1 = k;
        paramInt2 = i;
      } 
      while (paramInt2 > 0 && (paramArrayOfbyte[paramInt1] == 10 || paramArrayOfbyte[paramInt1] == 13)) {
        write(paramArrayOfbyte[paramInt1]);
        paramInt1++;
        paramInt2--;
      } 
      j = paramInt1;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\LogOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */