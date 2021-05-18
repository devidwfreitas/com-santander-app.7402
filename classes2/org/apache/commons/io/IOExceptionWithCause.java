package org.apache.commons.io;

import java.io.IOException;

public class IOExceptionWithCause extends IOException {
  private static final long serialVersionUID = 1L;
  
  public IOExceptionWithCause(String paramString, Throwable paramThrowable) {
    super(paramString);
    initCause(paramThrowable);
  }
  
  public IOExceptionWithCause(Throwable paramThrowable) {
    super(str);
    String str;
    initCause(paramThrowable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\IOExceptionWithCause.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */