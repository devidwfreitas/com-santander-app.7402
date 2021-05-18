package com.adjust.sdk;

public interface ILogger {
  void Assert(String paramString, Object... paramVarArgs);
  
  void debug(String paramString, Object... paramVarArgs);
  
  void error(String paramString, Object... paramVarArgs);
  
  void info(String paramString, Object... paramVarArgs);
  
  void lockLogLevel();
  
  void setLogLevel(LogLevel paramLogLevel, boolean paramBoolean);
  
  void setLogLevelString(String paramString, boolean paramBoolean);
  
  void verbose(String paramString, Object... paramVarArgs);
  
  void warn(String paramString, Object... paramVarArgs);
  
  void warnInProduction(String paramString, Object... paramVarArgs);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\ILogger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */