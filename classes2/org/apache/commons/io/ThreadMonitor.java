package org.apache.commons.io;

class ThreadMonitor implements Runnable {
  private final Thread thread;
  
  private final long timeout;
  
  private ThreadMonitor(Thread paramThread, long paramLong) {
    this.thread = paramThread;
    this.timeout = paramLong;
  }
  
  public static Thread start(long paramLong) {
    return start(Thread.currentThread(), paramLong);
  }
  
  public static Thread start(Thread paramThread, long paramLong) {
    Thread thread = null;
    if (paramLong > 0L) {
      thread = new Thread(new ThreadMonitor(paramThread, paramLong), ThreadMonitor.class.getSimpleName());
      thread.setDaemon(true);
      thread.start();
    } 
    return thread;
  }
  
  public static void stop(Thread paramThread) {
    if (paramThread != null)
      paramThread.interrupt(); 
  }
  
  public void run() {
    try {
      Thread.sleep(this.timeout);
      this.thread.interrupt();
      return;
    } catch (InterruptedException interruptedException) {
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\ThreadMonitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */