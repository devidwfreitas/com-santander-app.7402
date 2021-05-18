package com.adjust.sdk;

public enum LogLevel {
  ASSERT,
  DEBUG,
  ERROR,
  INFO,
  SUPRESS,
  VERBOSE(2),
  WARN(2);
  
  final int androidLogLevel;
  
  static {
    DEBUG = new LogLevel("DEBUG", 1, 3);
    INFO = new LogLevel("INFO", 2, 4);
    WARN = new LogLevel("WARN", 3, 5);
    ERROR = new LogLevel("ERROR", 4, 6);
    ASSERT = new LogLevel("ASSERT", 5, 7);
    SUPRESS = new LogLevel("SUPRESS", 6, 8);
    $VALUES = new LogLevel[] { VERBOSE, DEBUG, INFO, WARN, ERROR, ASSERT, SUPRESS };
  }
  
  LogLevel(int paramInt1) {
    this.androidLogLevel = paramInt1;
  }
  
  public int getAndroidLogLevel() {
    return this.androidLogLevel;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\LogLevel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */