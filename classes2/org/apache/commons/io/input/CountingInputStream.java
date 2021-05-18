package org.apache.commons.io.input;

import java.io.InputStream;

public class CountingInputStream extends ProxyInputStream {
  private long count;
  
  public CountingInputStream(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  protected void afterRead(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: iconst_m1
    //   4: if_icmpeq -> 18
    //   7: aload_0
    //   8: aload_0
    //   9: getfield count : J
    //   12: iload_1
    //   13: i2l
    //   14: ladd
    //   15: putfield count : J
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: astore_2
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_2
    //   25: athrow
    // Exception table:
    //   from	to	target	type
    //   7	18	21	finally
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
  
  public long skip(long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: lload_1
    //   4: invokespecial skip : (J)J
    //   7: lstore_1
    //   8: aload_0
    //   9: aload_0
    //   10: getfield count : J
    //   13: lload_1
    //   14: ladd
    //   15: putfield count : J
    //   18: aload_0
    //   19: monitorexit
    //   20: lload_1
    //   21: lreturn
    //   22: astore_3
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_3
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   2	18	22	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\CountingInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */