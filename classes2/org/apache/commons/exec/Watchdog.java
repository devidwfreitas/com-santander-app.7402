package org.apache.commons.exec;

import java.util.Enumeration;
import java.util.Vector;

public class Watchdog implements Runnable {
  private final Vector observers = new Vector(1);
  
  private boolean stopped = false;
  
  private final long timeout;
  
  public Watchdog(long paramLong) {
    if (paramLong < 1L)
      throw new IllegalArgumentException("timeout must not be less than 1."); 
    this.timeout = paramLong;
  }
  
  public void addTimeoutObserver(TimeoutObserver paramTimeoutObserver) {
    this.observers.addElement(paramTimeoutObserver);
  }
  
  protected final void fireTimeoutOccured() {
    Enumeration<TimeoutObserver> enumeration = this.observers.elements();
    while (enumeration.hasMoreElements())
      ((TimeoutObserver)enumeration.nextElement()).timeoutOccured(this); 
  }
  
  public void removeTimeoutObserver(TimeoutObserver paramTimeoutObserver) {
    this.observers.removeElement(paramTimeoutObserver);
  }
  
  public void run() {
    // Byte code:
    //   0: invokestatic currentTimeMillis : ()J
    //   3: lstore #4
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield timeout : J
    //   11: invokestatic currentTimeMillis : ()J
    //   14: lload #4
    //   16: lsub
    //   17: lsub
    //   18: lstore_2
    //   19: lload_2
    //   20: lconst_0
    //   21: lcmp
    //   22: ifle -> 93
    //   25: iconst_1
    //   26: istore_1
    //   27: aload_0
    //   28: getfield stopped : Z
    //   31: istore #6
    //   33: iload #6
    //   35: ifne -> 70
    //   38: iload_1
    //   39: ifeq -> 70
    //   42: aload_0
    //   43: lload_2
    //   44: invokevirtual wait : (J)V
    //   47: aload_0
    //   48: getfield timeout : J
    //   51: invokestatic currentTimeMillis : ()J
    //   54: lload #4
    //   56: lsub
    //   57: lsub
    //   58: lstore_2
    //   59: lload_2
    //   60: lconst_0
    //   61: lcmp
    //   62: ifle -> 98
    //   65: iconst_1
    //   66: istore_1
    //   67: goto -> 27
    //   70: aload_0
    //   71: monitorexit
    //   72: iload_1
    //   73: ifne -> 80
    //   76: aload_0
    //   77: invokevirtual fireTimeoutOccured : ()V
    //   80: return
    //   81: astore #7
    //   83: aload_0
    //   84: monitorexit
    //   85: aload #7
    //   87: athrow
    //   88: astore #7
    //   90: goto -> 47
    //   93: iconst_0
    //   94: istore_1
    //   95: goto -> 27
    //   98: iconst_0
    //   99: istore_1
    //   100: goto -> 27
    // Exception table:
    //   from	to	target	type
    //   7	19	81	finally
    //   27	33	81	finally
    //   42	47	88	java/lang/InterruptedException
    //   42	47	81	finally
    //   47	59	81	finally
    //   70	72	81	finally
    //   83	85	81	finally
  }
  
  public void start() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield stopped : Z
    //   7: new java/lang/Thread
    //   10: dup
    //   11: aload_0
    //   12: ldc 'WATCHDOG'
    //   14: invokespecial <init> : (Ljava/lang/Runnable;Ljava/lang/String;)V
    //   17: astore_1
    //   18: aload_1
    //   19: iconst_1
    //   20: invokevirtual setDaemon : (Z)V
    //   23: aload_1
    //   24: invokevirtual start : ()V
    //   27: aload_0
    //   28: monitorexit
    //   29: return
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    // Exception table:
    //   from	to	target	type
    //   2	27	30	finally
  }
  
  public void stop() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield stopped : Z
    //   7: aload_0
    //   8: invokevirtual notifyAll : ()V
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: astore_1
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_1
    //   18: athrow
    // Exception table:
    //   from	to	target	type
    //   2	11	14	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\Watchdog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */