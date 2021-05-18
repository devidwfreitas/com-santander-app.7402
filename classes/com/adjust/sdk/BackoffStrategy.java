package com.adjust.sdk;

public enum BackoffStrategy {
  LONG_WAIT(1, 120000L, 86400000L, 0.5D, 1.0D),
  NO_WAIT(1, 120000L, 86400000L, 0.5D, 1.0D),
  SHORT_WAIT(1, 200L, 3600000L, 0.5D, 1.0D),
  TEST_WAIT(1, 200L, 1000L, 0.5D, 1.0D);
  
  double maxRange;
  
  long maxWait;
  
  long milliSecondMultiplier;
  
  double minRange;
  
  int minRetries;
  
  static {
    NO_WAIT = new BackoffStrategy("NO_WAIT", 3, 100, 1L, 1000L, 1.0D, 1.0D);
    $VALUES = new BackoffStrategy[] { LONG_WAIT, SHORT_WAIT, TEST_WAIT, NO_WAIT };
  }
  
  BackoffStrategy(int paramInt1, long paramLong1, long paramLong2, double paramDouble1, double paramDouble2) {
    this.minRetries = paramInt1;
    this.milliSecondMultiplier = paramLong1;
    this.maxWait = paramLong2;
    this.minRange = paramDouble1;
    this.maxRange = paramDouble2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\BackoffStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */