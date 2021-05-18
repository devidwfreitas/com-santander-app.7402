package org.apache.commons.io.output;

import java.io.OutputStream;

public class CountingOutputStream extends ProxyOutputStream {
  private long count = 0L;
  
  public CountingOutputStream(OutputStream paramOutputStream) {
    super(paramOutputStream);
  }
  
  protected void beforeWrite(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield count : J
    //   7: iload_1
    //   8: i2l
    //   9: ladd
    //   10: putfield count : J
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: astore_2
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_2
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	16	finally
  }
  
  public long getByteCount() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : J
    //   6: lstore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: lload_1
    //   10: lreturn
    //   11: astore_3
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_3
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally
  }
  
  public int getCount() {
    long l = getByteCount();
    if (l > 2147483647L)
      throw new ArithmeticException("The byte count " + l + " is too large to be converted to an int"); 
    return (int)l;
  }
  
  public long resetByteCount() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : J
    //   6: lstore_1
    //   7: aload_0
    //   8: lconst_0
    //   9: putfield count : J
    //   12: aload_0
    //   13: monitorexit
    //   14: lload_1
    //   15: lreturn
    //   16: astore_3
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_3
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	12	16	finally
  }
  
  public int resetCount() {
    long l = resetByteCount();
    if (l > 2147483647L)
      throw new ArithmeticException("The byte count " + l + " is too large to be converted to an int"); 
    return (int)l;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\CountingOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */