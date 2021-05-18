package org.apache.commons.io.output;

import java.io.Writer;

public class NullWriter extends Writer {
  public static final NullWriter NULL_WRITER = new NullWriter();
  
  public Writer append(char paramChar) {
    return this;
  }
  
  public Writer append(CharSequence paramCharSequence) {
    return this;
  }
  
  public Writer append(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    return this;
  }
  
  public void close() {}
  
  public void flush() {}
  
  public void write(int paramInt) {}
  
  public void write(String paramString) {}
  
  public void write(String paramString, int paramInt1, int paramInt2) {}
  
  public void write(char[] paramArrayOfchar) {}
  
  public void write(char[] paramArrayOfchar, int paramInt1, int paramInt2) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\NullWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */