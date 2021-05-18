package org.simpleframework.xml.core;

public class PersistenceException extends Exception {
  public PersistenceException(String paramString, Object... paramVarArgs) {
    super(String.format(paramString, paramVarArgs));
  }
  
  public PersistenceException(Throwable paramThrowable, String paramString, Object... paramVarArgs) {
    super(String.format(paramString, paramVarArgs), paramThrowable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PersistenceException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */