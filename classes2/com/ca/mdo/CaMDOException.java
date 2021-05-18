package com.ca.mdo;

public class CaMDOException extends RuntimeException {
  private CaMDOError code;
  
  CaMDOException(CaMDOError paramCaMDOError) {
    super(paramCaMDOError.getMessage());
    this.code = paramCaMDOError;
  }
  
  CaMDOException(CaMDOError paramCaMDOError, Throwable paramThrowable) {
    super(paramCaMDOError.getMessage(), paramThrowable);
    this.code = paramCaMDOError;
  }
  
  public int getCode() {
    return this.code.getCode();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CaMDOException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */