package org.jaxen;

public class FunctionCallException extends JaxenException {
  private static final long serialVersionUID = 7908649612495640943L;
  
  public FunctionCallException(String paramString) {
    super(paramString);
  }
  
  public FunctionCallException(String paramString, Exception paramException) {
    super(paramString, paramException);
  }
  
  public FunctionCallException(Throwable paramThrowable) {
    super(paramThrowable);
  }
  
  public Throwable getNestedException() {
    return getCause();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\FunctionCallException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */