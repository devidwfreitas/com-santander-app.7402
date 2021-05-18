package org.apache.commons.exec;

import java.io.IOException;

public class ExecuteException extends IOException {
  private static final long serialVersionUID = 3256443620654331699L;
  
  private final Throwable cause = null;
  
  private final int exitValue;
  
  public ExecuteException(String paramString, int paramInt) {
    super(paramString + " (Exit value: " + paramInt + ")");
    this.exitValue = paramInt;
  }
  
  public ExecuteException(String paramString, int paramInt, Throwable paramThrowable) {
    super(paramString + " (Exit value: " + paramInt + ". Caused by " + paramThrowable + ")");
    this.exitValue = paramInt;
  }
  
  public Throwable getCause() {
    return this.cause;
  }
  
  public int getExitValue() {
    return this.exitValue;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\ExecuteException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */