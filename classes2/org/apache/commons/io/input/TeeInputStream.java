package org.apache.commons.io.input;

import java.io.InputStream;
import java.io.OutputStream;

public class TeeInputStream extends ProxyInputStream {
  private final OutputStream branch;
  
  private final boolean closeBranch;
  
  public TeeInputStream(InputStream paramInputStream, OutputStream paramOutputStream) {
    this(paramInputStream, paramOutputStream, false);
  }
  
  public TeeInputStream(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean) {
    super(paramInputStream);
    this.branch = paramOutputStream;
    this.closeBranch = paramBoolean;
  }
  
  public void close() {
    try {
      super.close();
      return;
    } finally {
      if (this.closeBranch)
        this.branch.close(); 
    } 
  }
  
  public int read() {
    int i = super.read();
    if (i != -1)
      this.branch.write(i); 
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte) {
    int i = super.read(paramArrayOfbyte);
    if (i != -1)
      this.branch.write(paramArrayOfbyte, 0, i); 
    return i;
  }
  
  public int read(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    paramInt2 = super.read(paramArrayOfbyte, paramInt1, paramInt2);
    if (paramInt2 != -1)
      this.branch.write(paramArrayOfbyte, paramInt1, paramInt2); 
    return paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\TeeInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */