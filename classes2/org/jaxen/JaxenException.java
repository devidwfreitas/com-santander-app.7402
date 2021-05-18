package org.jaxen;

import org.jaxen.saxpath.SAXPathException;

public class JaxenException extends SAXPathException {
  static double javaVersion = 1.4D;
  
  private static final long serialVersionUID = 7132891439526672639L;
  
  static {
    try {
      javaVersion = Double.valueOf(System.getProperty("java.version").substring(0, 3)).doubleValue();
      return;
    } catch (RuntimeException runtimeException) {
      return;
    } 
  }
  
  public JaxenException(String paramString) {
    super(paramString);
  }
  
  public JaxenException(String paramString, Throwable paramThrowable) {
    super(paramString, paramThrowable);
  }
  
  public JaxenException(Throwable paramThrowable) {
    super(paramThrowable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\JaxenException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */