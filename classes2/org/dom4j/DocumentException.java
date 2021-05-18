package org.dom4j;

import java.io.PrintStream;
import java.io.PrintWriter;

public class DocumentException extends Exception {
  private Throwable nestedException;
  
  public DocumentException() {
    super("Error occurred in DOM4J application.");
  }
  
  public DocumentException(String paramString) {
    super(paramString);
  }
  
  public DocumentException(String paramString, Throwable paramThrowable) {
    super(paramString);
    this.nestedException = paramThrowable;
  }
  
  public DocumentException(Throwable paramThrowable) {
    super(paramThrowable.getMessage());
    this.nestedException = paramThrowable;
  }
  
  public String getMessage() {
    return (this.nestedException != null) ? (super.getMessage() + " Nested exception: " + this.nestedException.getMessage()) : super.getMessage();
  }
  
  public Throwable getNestedException() {
    return this.nestedException;
  }
  
  public void printStackTrace() {
    super.printStackTrace();
    if (this.nestedException != null) {
      System.err.print("Nested exception: ");
      this.nestedException.printStackTrace();
    } 
  }
  
  public void printStackTrace(PrintStream paramPrintStream) {
    super.printStackTrace(paramPrintStream);
    if (this.nestedException != null) {
      paramPrintStream.println("Nested exception: ");
      this.nestedException.printStackTrace(paramPrintStream);
    } 
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter) {
    super.printStackTrace(paramPrintWriter);
    if (this.nestedException != null) {
      paramPrintWriter.println("Nested exception: ");
      this.nestedException.printStackTrace(paramPrintWriter);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\DocumentException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */