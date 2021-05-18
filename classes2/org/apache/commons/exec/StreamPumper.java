package org.apache.commons.exec;

import java.io.InputStream;
import java.io.OutputStream;

public class StreamPumper implements Runnable {
  private static final int DEFAULT_SIZE = 1024;
  
  private final boolean closeWhenExhausted;
  
  private boolean finished;
  
  private final InputStream is;
  
  private final OutputStream os;
  
  private final int size;
  
  public StreamPumper(InputStream paramInputStream, OutputStream paramOutputStream) {
    this(paramInputStream, paramOutputStream, false);
  }
  
  public StreamPumper(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean) {
    this.is = paramInputStream;
    this.os = paramOutputStream;
    this.size = 1024;
    this.closeWhenExhausted = paramBoolean;
  }
  
  public StreamPumper(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean, int paramInt) {
    this.is = paramInputStream;
    this.os = paramOutputStream;
    if (paramInt <= 0)
      paramInt = 1024; 
    this.size = paramInt;
    this.closeWhenExhausted = paramBoolean;
  }
  
  public boolean isFinished() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield finished : Z
    //   6: istore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: iload_1
    //   10: ireturn
    //   11: astore_2
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_2
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally
  }
  
  public void run() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield finished : Z
    //   7: aload_0
    //   8: monitorexit
    //   9: aload_0
    //   10: getfield size : I
    //   13: newarray byte
    //   15: astore_2
    //   16: aload_0
    //   17: getfield is : Ljava/io/InputStream;
    //   20: aload_2
    //   21: invokevirtual read : ([B)I
    //   24: istore_1
    //   25: iload_1
    //   26: ifle -> 76
    //   29: aload_0
    //   30: getfield os : Ljava/io/OutputStream;
    //   33: aload_2
    //   34: iconst_0
    //   35: iload_1
    //   36: invokevirtual write : ([BII)V
    //   39: goto -> 16
    //   42: astore_2
    //   43: aload_0
    //   44: getfield closeWhenExhausted : Z
    //   47: ifeq -> 57
    //   50: aload_0
    //   51: getfield os : Ljava/io/OutputStream;
    //   54: invokevirtual close : ()V
    //   57: aload_0
    //   58: monitorenter
    //   59: aload_0
    //   60: iconst_1
    //   61: putfield finished : Z
    //   64: aload_0
    //   65: invokevirtual notifyAll : ()V
    //   68: aload_0
    //   69: monitorexit
    //   70: return
    //   71: astore_2
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_2
    //   75: athrow
    //   76: aload_0
    //   77: getfield closeWhenExhausted : Z
    //   80: ifeq -> 90
    //   83: aload_0
    //   84: getfield os : Ljava/io/OutputStream;
    //   87: invokevirtual close : ()V
    //   90: aload_0
    //   91: monitorenter
    //   92: aload_0
    //   93: iconst_1
    //   94: putfield finished : Z
    //   97: aload_0
    //   98: invokevirtual notifyAll : ()V
    //   101: aload_0
    //   102: monitorexit
    //   103: return
    //   104: astore_2
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_2
    //   108: athrow
    //   109: astore_2
    //   110: ldc 'Got exception while closing exhausted output stream'
    //   112: aload_2
    //   113: invokestatic handleException : (Ljava/lang/String;Ljava/lang/Exception;)V
    //   116: goto -> 90
    //   119: astore_2
    //   120: ldc 'Got exception while closing exhausted output stream'
    //   122: aload_2
    //   123: invokestatic handleException : (Ljava/lang/String;Ljava/lang/Exception;)V
    //   126: goto -> 57
    //   129: astore_2
    //   130: aload_0
    //   131: monitorexit
    //   132: aload_2
    //   133: athrow
    //   134: astore_2
    //   135: aload_0
    //   136: getfield closeWhenExhausted : Z
    //   139: ifeq -> 149
    //   142: aload_0
    //   143: getfield os : Ljava/io/OutputStream;
    //   146: invokevirtual close : ()V
    //   149: aload_0
    //   150: monitorenter
    //   151: aload_0
    //   152: iconst_1
    //   153: putfield finished : Z
    //   156: aload_0
    //   157: invokevirtual notifyAll : ()V
    //   160: aload_0
    //   161: monitorexit
    //   162: aload_2
    //   163: athrow
    //   164: astore_3
    //   165: ldc 'Got exception while closing exhausted output stream'
    //   167: aload_3
    //   168: invokestatic handleException : (Ljava/lang/String;Ljava/lang/Exception;)V
    //   171: goto -> 149
    //   174: astore_2
    //   175: aload_0
    //   176: monitorexit
    //   177: aload_2
    //   178: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	71	finally
    //   16	25	42	java/lang/Exception
    //   16	25	134	finally
    //   29	39	42	java/lang/Exception
    //   29	39	134	finally
    //   50	57	119	java/io/IOException
    //   59	70	129	finally
    //   72	74	71	finally
    //   83	90	109	java/io/IOException
    //   92	103	104	finally
    //   105	107	104	finally
    //   130	132	129	finally
    //   142	149	164	java/io/IOException
    //   151	162	174	finally
    //   175	177	174	finally
  }
  
  public void waitFor() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual isFinished : ()Z
    //   6: ifne -> 21
    //   9: aload_0
    //   10: invokevirtual wait : ()V
    //   13: goto -> 2
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    // Exception table:
    //   from	to	target	type
    //   2	13	16	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\StreamPumper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */