package org.apache.commons.io.output;

import java.io.OutputStream;

public class NullOutputStream extends OutputStream {
  public static final NullOutputStream NULL_OUTPUT_STREAM = new NullOutputStream();
  
  public void write(int paramInt) {}
  
  public void write(byte[] paramArrayOfbyte) {}
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\NullOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */