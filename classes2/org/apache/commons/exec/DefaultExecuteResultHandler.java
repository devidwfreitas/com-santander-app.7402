package org.apache.commons.exec;

public class DefaultExecuteResultHandler implements ExecuteResultHandler {
  private static final int SLEEP_TIME_MS = 50;
  
  private volatile ExecuteException exception;
  
  private volatile int exitValue = -559038737;
  
  private volatile boolean hasResult = false;
  
  public ExecuteException getException() {
    if (!this.hasResult)
      throw new IllegalStateException("The process has not exited yet therefore no result is available ..."); 
    return this.exception;
  }
  
  public int getExitValue() {
    if (!this.hasResult)
      throw new IllegalStateException("The process has not exited yet therefore no result is available ..."); 
    return this.exitValue;
  }
  
  public boolean hasResult() {
    return this.hasResult;
  }
  
  public void onProcessComplete(int paramInt) {
    this.exitValue = paramInt;
    this.exception = null;
    this.hasResult = true;
  }
  
  public void onProcessFailed(ExecuteException paramExecuteException) {
    this.exitValue = paramExecuteException.getExitValue();
    this.exception = paramExecuteException;
    this.hasResult = true;
  }
  
  public void waitFor() {
    while (!hasResult())
      Thread.sleep(50L); 
  }
  
  public void waitFor(long paramLong) {
    long l = System.currentTimeMillis();
    while (!hasResult() && System.currentTimeMillis() < l + paramLong)
      Thread.sleep(50L); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\DefaultExecuteResultHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */