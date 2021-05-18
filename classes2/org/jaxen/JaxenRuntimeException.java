package org.jaxen;

import java.io.PrintStream;
import java.io.PrintWriter;

public class JaxenRuntimeException extends RuntimeException {
  private static final long serialVersionUID = -930309761511911193L;
  
  private Throwable cause;
  
  private boolean causeSet = false;
  
  public JaxenRuntimeException(String paramString) {
    super(paramString);
  }
  
  public JaxenRuntimeException(Throwable paramThrowable) {
    super(paramThrowable.getMessage());
    initCause(paramThrowable);
  }
  
  public Throwable getCause() {
    return this.cause;
  }
  
  public Throwable initCause(Throwable paramThrowable) {
    if (this.causeSet)
      throw new IllegalStateException("Cause cannot be reset"); 
    if (paramThrowable == this)
      throw new IllegalArgumentException("Exception cannot be its own cause"); 
    this.causeSet = true;
    this.cause = paramThrowable;
    return this;
  }
  
  public void printStackTrace(PrintStream paramPrintStream) {
    super.printStackTrace(paramPrintStream);
    if (JaxenException.javaVersion < 1.4D && getCause() != null) {
      paramPrintStream.print("Caused by: ");
      getCause().printStackTrace(paramPrintStream);
    } 
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter) {
    super.printStackTrace(paramPrintWriter);
    if (JaxenException.javaVersion < 1.4D && getCause() != null) {
      paramPrintWriter.print("Caused by: ");
      getCause().printStackTrace(paramPrintWriter);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\JaxenRuntimeException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */