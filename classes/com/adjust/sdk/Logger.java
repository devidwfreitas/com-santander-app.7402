package com.adjust.sdk;

import android.util.Log;
import java.util.Arrays;
import java.util.Locale;

public class Logger implements ILogger {
  private static String formatErrorMessage = "Error formating log message: %s, with params: %s";
  
  private boolean isProductionEnvironment = false;
  
  private LogLevel logLevel;
  
  private boolean logLevelLocked = false;
  
  public Logger() {
    setLogLevel(LogLevel.INFO, this.isProductionEnvironment);
  }
  
  public void Assert(String paramString, Object... paramVarArgs) {
    if (!this.isProductionEnvironment && this.logLevel.androidLogLevel <= 7)
      try {
        Log.println(7, "Adjust", String.format(Locale.US, paramString, paramVarArgs));
        return;
      } catch (Exception exception) {
        Log.e("Adjust", String.format(Locale.US, formatErrorMessage, new Object[] { paramString, Arrays.toString(paramVarArgs) }));
        return;
      }  
  }
  
  public void debug(String paramString, Object... paramVarArgs) {
    if (!this.isProductionEnvironment && this.logLevel.androidLogLevel <= 3)
      try {
        Log.d("Adjust", String.format(Locale.US, paramString, paramVarArgs));
        return;
      } catch (Exception exception) {
        Log.e("Adjust", String.format(Locale.US, formatErrorMessage, new Object[] { paramString, Arrays.toString(paramVarArgs) }));
        return;
      }  
  }
  
  public void error(String paramString, Object... paramVarArgs) {
    if (!this.isProductionEnvironment && this.logLevel.androidLogLevel <= 6)
      try {
        Log.e("Adjust", String.format(Locale.US, paramString, paramVarArgs));
        return;
      } catch (Exception exception) {
        Log.e("Adjust", String.format(Locale.US, formatErrorMessage, new Object[] { paramString, Arrays.toString(paramVarArgs) }));
        return;
      }  
  }
  
  public void info(String paramString, Object... paramVarArgs) {
    if (!this.isProductionEnvironment && this.logLevel.androidLogLevel <= 4)
      try {
        Log.i("Adjust", String.format(Locale.US, paramString, paramVarArgs));
        return;
      } catch (Exception exception) {
        Log.e("Adjust", String.format(Locale.US, formatErrorMessage, new Object[] { paramString, Arrays.toString(paramVarArgs) }));
        return;
      }  
  }
  
  public void lockLogLevel() {
    this.logLevelLocked = true;
  }
  
  public void setLogLevel(LogLevel paramLogLevel, boolean paramBoolean) {
    if (this.logLevelLocked)
      return; 
    this.logLevel = paramLogLevel;
    this.isProductionEnvironment = paramBoolean;
  }
  
  public void setLogLevelString(String paramString, boolean paramBoolean) {
    if (paramString != null)
      try {
        setLogLevel(LogLevel.valueOf(paramString.toUpperCase(Locale.US)), paramBoolean);
        return;
      } catch (IllegalArgumentException illegalArgumentException) {
        error("Malformed logLevel '%s', falling back to 'info'", new Object[] { paramString });
        return;
      }  
  }
  
  public void verbose(String paramString, Object... paramVarArgs) {
    if (!this.isProductionEnvironment && this.logLevel.androidLogLevel <= 2)
      try {
        Log.v("Adjust", String.format(Locale.US, paramString, paramVarArgs));
        return;
      } catch (Exception exception) {
        Log.e("Adjust", String.format(Locale.US, formatErrorMessage, new Object[] { paramString, Arrays.toString(paramVarArgs) }));
        return;
      }  
  }
  
  public void warn(String paramString, Object... paramVarArgs) {
    if (!this.isProductionEnvironment && this.logLevel.androidLogLevel <= 5)
      try {
        Log.w("Adjust", String.format(Locale.US, paramString, paramVarArgs));
        return;
      } catch (Exception exception) {
        Log.e("Adjust", String.format(Locale.US, formatErrorMessage, new Object[] { paramString, Arrays.toString(paramVarArgs) }));
        return;
      }  
  }
  
  public void warnInProduction(String paramString, Object... paramVarArgs) {
    if (this.logLevel.androidLogLevel <= 5)
      try {
        Log.w("Adjust", String.format(Locale.US, paramString, paramVarArgs));
        return;
      } catch (Exception exception) {
        Log.e("Adjust", String.format(Locale.US, formatErrorMessage, new Object[] { paramString, Arrays.toString(paramVarArgs) }));
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\Logger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */