package org.apache.commons.exec;

public class ExecuteWatchdog implements TimeoutObserver {
  public static final long INFINITE_TIMEOUT = -1L;
  
  private Exception caught;
  
  private final boolean hasWatchdog;
  
  private boolean killedProcess;
  
  private Process process;
  
  private volatile boolean processStarted;
  
  private boolean watch;
  
  private final Watchdog watchdog;
  
  public ExecuteWatchdog(long paramLong) {
    boolean bool;
    this.killedProcess = false;
    this.watch = false;
    if (paramLong != -1L) {
      bool = true;
    } else {
      bool = false;
    } 
    this.hasWatchdog = bool;
    this.processStarted = false;
    if (this.hasWatchdog) {
      this.watchdog = new Watchdog(paramLong);
      this.watchdog.addTimeoutObserver(this);
      return;
    } 
    this.watchdog = null;
  }
  
  private void ensureStarted() {
    while (!this.processStarted) {
      try {
        wait();
      } catch (InterruptedException interruptedException) {
        throw new RuntimeException(interruptedException.getMessage());
      } 
    } 
  }
  
  public void checkException() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield caught : Ljava/lang/Exception;
    //   6: ifnull -> 19
    //   9: aload_0
    //   10: getfield caught : Ljava/lang/Exception;
    //   13: athrow
    //   14: astore_1
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_1
    //   18: athrow
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    // Exception table:
    //   from	to	target	type
    //   2	14	14	finally
  }
  
  protected void cleanUp() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield watch : Z
    //   7: aload_0
    //   8: aconst_null
    //   9: putfield process : Ljava/lang/Process;
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: astore_1
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: athrow
    // Exception table:
    //   from	to	target	type
    //   2	12	15	finally
  }
  
  public void destroyProcess() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial ensureStarted : ()V
    //   6: aload_0
    //   7: aconst_null
    //   8: invokevirtual timeoutOccured : (Lorg/apache/commons/exec/Watchdog;)V
    //   11: aload_0
    //   12: invokevirtual stop : ()V
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
  
  public boolean isWatching() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial ensureStarted : ()V
    //   6: aload_0
    //   7: getfield watch : Z
    //   10: istore_1
    //   11: aload_0
    //   12: monitorexit
    //   13: iload_1
    //   14: ireturn
    //   15: astore_2
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_2
    //   19: athrow
    // Exception table:
    //   from	to	target	type
    //   2	11	15	finally
  }
  
  public boolean killedProcess() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield killedProcess : Z
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
  
  void setProcessNotStarted() {
    this.processStarted = false;
  }
  
  public void start(Process paramProcess) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull -> 21
    //   6: new java/lang/NullPointerException
    //   9: dup
    //   10: ldc 'process is null.'
    //   12: invokespecial <init> : (Ljava/lang/String;)V
    //   15: athrow
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    //   21: aload_0
    //   22: getfield process : Ljava/lang/Process;
    //   25: ifnull -> 38
    //   28: new java/lang/IllegalStateException
    //   31: dup
    //   32: ldc 'Already running.'
    //   34: invokespecial <init> : (Ljava/lang/String;)V
    //   37: athrow
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield caught : Ljava/lang/Exception;
    //   43: aload_0
    //   44: iconst_0
    //   45: putfield killedProcess : Z
    //   48: aload_0
    //   49: iconst_1
    //   50: putfield watch : Z
    //   53: aload_0
    //   54: aload_1
    //   55: putfield process : Ljava/lang/Process;
    //   58: aload_0
    //   59: iconst_1
    //   60: putfield processStarted : Z
    //   63: aload_0
    //   64: invokevirtual notifyAll : ()V
    //   67: aload_0
    //   68: getfield hasWatchdog : Z
    //   71: ifeq -> 81
    //   74: aload_0
    //   75: getfield watchdog : Lorg/apache/commons/exec/Watchdog;
    //   78: invokevirtual start : ()V
    //   81: aload_0
    //   82: monitorexit
    //   83: return
    // Exception table:
    //   from	to	target	type
    //   6	16	16	finally
    //   21	38	16	finally
    //   38	81	16	finally
  }
  
  public void stop() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield hasWatchdog : Z
    //   6: ifeq -> 16
    //   9: aload_0
    //   10: getfield watchdog : Lorg/apache/commons/exec/Watchdog;
    //   13: invokevirtual stop : ()V
    //   16: aload_0
    //   17: iconst_0
    //   18: putfield watch : Z
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield process : Ljava/lang/Process;
    //   26: aload_0
    //   27: monitorexit
    //   28: return
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	29	finally
    //   16	26	29	finally
  }
  
  public void timeoutOccured(Watchdog paramWatchdog) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield process : Ljava/lang/Process;
    //   6: ifnull -> 17
    //   9: aload_0
    //   10: getfield process : Ljava/lang/Process;
    //   13: invokevirtual exitValue : ()I
    //   16: pop
    //   17: aload_0
    //   18: invokevirtual cleanUp : ()V
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: astore_1
    //   25: aload_0
    //   26: getfield watch : Z
    //   29: ifeq -> 17
    //   32: aload_0
    //   33: iconst_1
    //   34: putfield killedProcess : Z
    //   37: aload_0
    //   38: getfield process : Ljava/lang/Process;
    //   41: invokevirtual destroy : ()V
    //   44: goto -> 17
    //   47: astore_1
    //   48: aload_0
    //   49: aload_1
    //   50: putfield caught : Ljava/lang/Exception;
    //   53: ldc 'Getting the exit value of the process failed'
    //   55: aload_1
    //   56: invokestatic handleException : (Ljava/lang/String;Ljava/lang/Exception;)V
    //   59: aload_0
    //   60: invokevirtual cleanUp : ()V
    //   63: goto -> 21
    //   66: astore_1
    //   67: aload_0
    //   68: monitorexit
    //   69: aload_1
    //   70: athrow
    //   71: astore_1
    //   72: aload_0
    //   73: invokevirtual cleanUp : ()V
    //   76: aload_1
    //   77: athrow
    // Exception table:
    //   from	to	target	type
    //   2	17	24	java/lang/IllegalThreadStateException
    //   2	17	47	java/lang/Exception
    //   2	17	71	finally
    //   17	21	66	finally
    //   25	44	47	java/lang/Exception
    //   25	44	71	finally
    //   48	59	71	finally
    //   59	63	66	finally
    //   72	78	66	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\ExecuteWatchdog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */