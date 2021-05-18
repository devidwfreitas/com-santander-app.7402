package org.jaxen.saxpath;

import java.io.PrintStream;
import java.io.PrintWriter;

public class SAXPathException extends Exception {
  private static double javaVersion = 1.4D;
  
  private static final long serialVersionUID = 4826444568928720706L;
  
  private Throwable cause;
  
  private boolean causeSet = false;
  
  static {
    try {
      javaVersion = Double.valueOf(System.getProperty("java.version").substring(0, 3)).doubleValue();
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public SAXPathException(String paramString) {
    super(paramString);
  }
  
  public SAXPathException(String paramString, Throwable paramThrowable) {
    super(paramString);
    initCause(paramThrowable);
  }
  
  public SAXPathException(Throwable paramThrowable) {
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
    if (javaVersion < 1.4D && getCause() != null) {
      paramPrintStream.print("Caused by: ");
      getCause().printStackTrace(paramPrintStream);
    } 
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter) {
    super.printStackTrace(paramPrintWriter);
    if (javaVersion < 1.4D && getCause() != null) {
      paramPrintWriter.print("Caused by: ");
      getCause().printStackTrace(paramPrintWriter);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\SAXPathException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */