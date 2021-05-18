package com.adjust.sdk;

import awf;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class TimerOnce {
  private Runnable command;
  
  private CustomScheduledExecutor executor;
  
  private ILogger logger;
  
  private String name;
  
  private ScheduledFuture waitingTask;
  
  public TimerOnce(Runnable paramRunnable, String paramString) {
    this.name = paramString;
    this.executor = new CustomScheduledExecutor(paramString, true);
    this.command = paramRunnable;
    this.logger = AdjustFactory.getLogger();
  }
  
  private void cancel(boolean paramBoolean) {
    if (this.waitingTask != null)
      this.waitingTask.cancel(paramBoolean); 
    this.waitingTask = null;
    this.logger.verbose("%s canceled", new Object[] { this.name });
  }
  
  public void cancel() {
    cancel(false);
  }
  
  public long getFireIn() {
    return (this.waitingTask == null) ? 0L : this.waitingTask.getDelay(TimeUnit.MILLISECONDS);
  }
  
  public void startIn(long paramLong) {
    cancel(false);
    String str = Util.SecondsDisplayFormat.format(paramLong / 1000.0D);
    this.logger.verbose("%s starting. Launching in %s seconds", new Object[] { this.name, str });
    this.waitingTask = this.executor.schedule((Runnable)new awf(this), paramLong, TimeUnit.MILLISECONDS);
  }
  
  public void teardown() {
    cancel(true);
    this.executor = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\TimerOnce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */