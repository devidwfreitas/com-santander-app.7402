package org.simpleframework.xml.strategy;

import org.simpleframework.xml.core.PersistenceException;

public class CycleException extends PersistenceException {
  public CycleException(String paramString, Object... paramVarArgs) {
    super(paramString, paramVarArgs);
  }
  
  public CycleException(Throwable paramThrowable, String paramString, Object... paramVarArgs) {
    super(paramThrowable, paramString, paramVarArgs);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\CycleException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */