package org.apache.commons.io.monitor;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ThreadFactory;

public final class FileAlterationMonitor implements Runnable {
  private final long interval;
  
  private final List<FileAlterationObserver> observers = new CopyOnWriteArrayList<FileAlterationObserver>();
  
  private volatile boolean running = false;
  
  private Thread thread = null;
  
  private ThreadFactory threadFactory;
  
  public FileAlterationMonitor() {
    this(10000L);
  }
  
  public FileAlterationMonitor(long paramLong) {
    this.interval = paramLong;
  }
  
  public FileAlterationMonitor(long paramLong, FileAlterationObserver... paramVarArgs) {
    this(paramLong);
    if (paramVarArgs != null) {
      int j = paramVarArgs.length;
      int i;
      for (i = 0; i < j; i++)
        addObserver(paramVarArgs[i]); 
    } 
  }
  
  public void addObserver(FileAlterationObserver paramFileAlterationObserver) {
    if (paramFileAlterationObserver != null)
      this.observers.add(paramFileAlterationObserver); 
  }
  
  public long getInterval() {
    return this.interval;
  }
  
  public Iterable<FileAlterationObserver> getObservers() {
    return this.observers;
  }
  
  public void removeObserver(FileAlterationObserver paramFileAlterationObserver) {
    if (paramFileAlterationObserver != null)
      do {
      
      } while (this.observers.remove(paramFileAlterationObserver)); 
  }
  
  public void run() {
    while (true) {
      if (this.running) {
        Iterator<FileAlterationObserver> iterator = this.observers.iterator();
        while (iterator.hasNext())
          ((FileAlterationObserver)iterator.next()).checkAndNotify(); 
        if (this.running) {
          try {
            Thread.sleep(this.interval);
          } catch (InterruptedException interruptedException) {}
          continue;
        } 
      } 
      return;
    } 
  }
  
  public void setThreadFactory(ThreadFactory paramThreadFactory) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: putfield threadFactory : Ljava/util/concurrent/ThreadFactory;
    //   7: aload_0
    //   8: monitorexit
    //   9: return
    //   10: astore_1
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_1
    //   14: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	10	finally
  }
  
  public void start() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield running : Z
    //   6: ifeq -> 24
    //   9: new java/lang/IllegalStateException
    //   12: dup
    //   13: ldc 'Monitor is already running'
    //   15: invokespecial <init> : (Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: athrow
    //   24: aload_0
    //   25: getfield observers : Ljava/util/List;
    //   28: invokeinterface iterator : ()Ljava/util/Iterator;
    //   33: astore_1
    //   34: aload_1
    //   35: invokeinterface hasNext : ()Z
    //   40: ifeq -> 58
    //   43: aload_1
    //   44: invokeinterface next : ()Ljava/lang/Object;
    //   49: checkcast org/apache/commons/io/monitor/FileAlterationObserver
    //   52: invokevirtual initialize : ()V
    //   55: goto -> 34
    //   58: aload_0
    //   59: iconst_1
    //   60: putfield running : Z
    //   63: aload_0
    //   64: getfield threadFactory : Ljava/util/concurrent/ThreadFactory;
    //   67: ifnull -> 94
    //   70: aload_0
    //   71: aload_0
    //   72: getfield threadFactory : Ljava/util/concurrent/ThreadFactory;
    //   75: aload_0
    //   76: invokeinterface newThread : (Ljava/lang/Runnable;)Ljava/lang/Thread;
    //   81: putfield thread : Ljava/lang/Thread;
    //   84: aload_0
    //   85: getfield thread : Ljava/lang/Thread;
    //   88: invokevirtual start : ()V
    //   91: aload_0
    //   92: monitorexit
    //   93: return
    //   94: aload_0
    //   95: new java/lang/Thread
    //   98: dup
    //   99: aload_0
    //   100: invokespecial <init> : (Ljava/lang/Runnable;)V
    //   103: putfield thread : Ljava/lang/Thread;
    //   106: goto -> 84
    // Exception table:
    //   from	to	target	type
    //   2	19	19	finally
    //   24	34	19	finally
    //   34	55	19	finally
    //   58	84	19	finally
    //   84	91	19	finally
    //   94	106	19	finally
  }
  
  public void stop() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield interval : J
    //   7: invokevirtual stop : (J)V
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	13	finally
  }
  
  public void stop(long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield running : Z
    //   6: ifne -> 24
    //   9: new java/lang/IllegalStateException
    //   12: dup
    //   13: ldc 'Monitor is not running'
    //   15: invokespecial <init> : (Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_3
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_3
    //   23: athrow
    //   24: aload_0
    //   25: iconst_0
    //   26: putfield running : Z
    //   29: aload_0
    //   30: getfield thread : Ljava/lang/Thread;
    //   33: lload_1
    //   34: invokevirtual join : (J)V
    //   37: aload_0
    //   38: getfield observers : Ljava/util/List;
    //   41: invokeinterface iterator : ()Ljava/util/Iterator;
    //   46: astore_3
    //   47: aload_3
    //   48: invokeinterface hasNext : ()Z
    //   53: ifeq -> 81
    //   56: aload_3
    //   57: invokeinterface next : ()Ljava/lang/Object;
    //   62: checkcast org/apache/commons/io/monitor/FileAlterationObserver
    //   65: invokevirtual destroy : ()V
    //   68: goto -> 47
    //   71: astore_3
    //   72: invokestatic currentThread : ()Ljava/lang/Thread;
    //   75: invokevirtual interrupt : ()V
    //   78: goto -> 37
    //   81: aload_0
    //   82: monitorexit
    //   83: return
    // Exception table:
    //   from	to	target	type
    //   2	19	19	finally
    //   24	29	19	finally
    //   29	37	71	java/lang/InterruptedException
    //   29	37	19	finally
    //   37	47	19	finally
    //   47	68	19	finally
    //   72	78	19	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\monitor\FileAlterationMonitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */