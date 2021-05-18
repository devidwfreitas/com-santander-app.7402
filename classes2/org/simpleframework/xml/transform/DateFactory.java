package org.simpleframework.xml.transform;

import java.lang.reflect.Constructor;
import java.util.Date;

class DateFactory<T extends Date> {
  private final Constructor<T> factory;
  
  public DateFactory(Class<T> paramClass) {
    this(paramClass, new Class[] { long.class });
  }
  
  public DateFactory(Class<T> paramClass, Class... paramVarArgs) {
    this.factory = paramClass.getDeclaredConstructor(paramVarArgs);
  }
  
  public T getInstance(Object... paramVarArgs) {
    return this.factory.newInstance(paramVarArgs);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\DateFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */