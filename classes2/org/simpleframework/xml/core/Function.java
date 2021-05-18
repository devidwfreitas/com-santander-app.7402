package org.simpleframework.xml.core;

import java.lang.reflect.Method;
import java.util.Map;

class Function {
  private final boolean contextual;
  
  private final Method method;
  
  public Function(Method paramMethod) {
    this(paramMethod, false);
  }
  
  public Function(Method paramMethod, boolean paramBoolean) {
    this.contextual = paramBoolean;
    this.method = paramMethod;
  }
  
  public Object call(Context paramContext, Object paramObject) {
    if (paramObject != null) {
      Map map = paramContext.getSession().getMap();
      return this.contextual ? this.method.invoke(paramObject, new Object[] { map }) : this.method.invoke(paramObject, new Object[0]);
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Function.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */