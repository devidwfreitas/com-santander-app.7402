package org.simpleframework.xml.transform;

public class InvalidFormatException extends TransformException {
  public InvalidFormatException(String paramString, Object... paramVarArgs) {
    super(String.format(paramString, paramVarArgs), new Object[0]);
  }
  
  public InvalidFormatException(Throwable paramThrowable, String paramString, Object... paramVarArgs) {
    super(String.format(paramString, paramVarArgs), new Object[] { paramThrowable });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\InvalidFormatException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */