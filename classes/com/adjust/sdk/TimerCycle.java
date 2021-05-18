package com.adjust.sdk;

import awe;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class TimerCycle {
  private Runnable command;
  
  private long cycleDelay;
  
  private CustomScheduledExecutor executor;
  
  private long initialDelay;
  
  private boolean isPaused;
  
  private ILogger logger;
  
  private String name;
  
  private ScheduledFuture waitingTask;
  
  public TimerCycle(Runnable paramRunnable, long paramLong1, long paramLong2, String paramString) {
    this.executor = new CustomScheduledExecutor(paramString, true);
    this.name = paramString;
    this.command = paramRunnable;
    this.initialDelay = paramLong1;
    this.cycleDelay = paramLong2;
    this.isPaused = true;
    this.logger = AdjustFactory.getLogger();
    String str1 = Util.SecondsDisplayFormat.format(paramLong2 / 1000.0D);
    String str2 = Util.SecondsDisplayFormat.format(paramLong1 / 1000.0D);
    this.logger.verbose("%s configured to fire after %s seconds of starting and cycles every %s seconds", new Object[] { paramString, str2, str1 });
  }
  
  private void cancel(boolean paramBoolean) {
    if (this.waitingTask != null)
      this.waitingTask.cancel(paramBoolean); 
    this.waitingTask = null;
  }
  
  public void start() {
    if (!this.isPaused) {
      this.logger.verbose("%s is already started", new Object[] { this.name });
      return;
    } 
    this.logger.verbose("%s starting", new Object[] { this.name });
    this.waitingTask = this.executor.scheduleWithFixedDelay((Runnable)new awe(this), this.initialDelay, this.cycleDelay, TimeUnit.MILLISECONDS);
    this.isPaused = false;
  }
  
  public void suspend() {
    if (this.isPaused) {
      this.logger.verbose("%s is already suspended", new Object[] { this.name });
      return;
    } 
    this.initialDelay = this.waitingTask.getDelay(TimeUnit.MILLISECONDS);
    this.waitingTask.cancel(false);
    String str = Util.SecondsDisplayFormat.format(this.initialDelay / 1000.0D);
    this.logger.verbose("%s suspended with %s seconds left", new Object[] { this.name, str });
    this.isPaused = true;
  }
  
  public void teardown() {
    cancel(true);
    if (this.executor != null)
      try {
        this.executor.shutdownNow();
      } catch (SecurityException securityException) {} 
    this.executor = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\TimerCycle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */