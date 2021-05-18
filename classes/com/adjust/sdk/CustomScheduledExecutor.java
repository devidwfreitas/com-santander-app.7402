package com.adjust.sdk;

import avk;
import avm;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class CustomScheduledExecutor {
  private ScheduledThreadPoolExecutor executor;
  
  private String source;
  
  private final AtomicInteger threadCounter = new AtomicInteger(1);
  
  public CustomScheduledExecutor(String paramString, boolean paramBoolean) {
    this.source = paramString;
    this.executor = new ScheduledThreadPoolExecutor(1, (ThreadFactory)new avk(this, paramString), (RejectedExecutionHandler)new avm(this, paramString));
    if (!paramBoolean) {
      this.executor.setKeepAliveTime(10L, TimeUnit.MILLISECONDS);
      this.executor.allowCoreThreadTimeOut(true);
    } 
  }
  
  public ScheduledFuture<?> schedule(Runnable paramRunnable, long paramLong, TimeUnit paramTimeUnit) {
    return this.executor.schedule(paramRunnable, paramLong, paramTimeUnit);
  }
  
  public ScheduledFuture<?> scheduleWithFixedDelay(Runnable paramRunnable, long paramLong1, long paramLong2, TimeUnit paramTimeUnit) {
    return this.executor.scheduleWithFixedDelay(paramRunnable, paramLong1, paramLong2, paramTimeUnit);
  }
  
  public void shutdownNow() {
    this.executor.shutdownNow();
  }
  
  public Future<?> submit(Runnable paramRunnable) {
    return this.executor.submit(paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\CustomScheduledExecutor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */