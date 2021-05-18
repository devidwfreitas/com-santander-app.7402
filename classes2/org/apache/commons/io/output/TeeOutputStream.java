package org.apache.commons.io.output;

import java.io.OutputStream;

public class TeeOutputStream extends ProxyOutputStream {
  protected OutputStream branch;
  
  public TeeOutputStream(OutputStream paramOutputStream1, OutputStream paramOutputStream2) {
    super(paramOutputStream1);
    this.branch = paramOutputStream2;
  }
  
  public void close() {
    try {
      super.close();
      return;
    } finally {
      this.branch.close();
    } 
  }
  
  public void flush() {
    super.flush();
    this.branch.flush();
  }
  
  public void write(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokespecial write : (I)V
    //   7: aload_0
    //   8: getfield branch : Ljava/io/OutputStream;
    //   11: iload_1
    //   12: invokevirtual write : (I)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: astore_2
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_2
    //   22: athrow
    // Exception table:
    //   from	to	target	type
    //   2	15	18	finally
  }
  
  public void write(byte[] paramArrayOfbyte) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial write : ([B)V
    //   7: aload_0
    //   8: getfield branch : Ljava/io/OutputStream;
    //   11: aload_1
    //   12: invokevirtual write : ([B)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: athrow
    // Exception table:
    //   from	to	target	type
    //   2	15	18	finally
  }
  
  public void write(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: iload_2
    //   5: iload_3
    //   6: invokespecial write : ([BII)V
    //   9: aload_0
    //   10: getfield branch : Ljava/io/OutputStream;
    //   13: aload_1
    //   14: iload_2
    //   15: iload_3
    //   16: invokevirtual write : ([BII)V
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   2	19	22	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\TeeOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */