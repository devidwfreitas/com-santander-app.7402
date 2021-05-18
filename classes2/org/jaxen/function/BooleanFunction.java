package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class BooleanFunction implements Function {
  public static Boolean evaluate(Object paramObject, Navigator paramNavigator) {
    if (paramObject instanceof List) {
      paramObject = paramObject;
      if (paramObject.size() == 0)
        return Boolean.FALSE; 
      paramObject = paramObject.get(0);
    } 
    if (paramObject instanceof Boolean)
      return (Boolean)paramObject; 
    if (paramObject instanceof Number) {
      double d = ((Number)paramObject).doubleValue();
      return (d == 0.0D || Double.isNaN(d)) ? Boolean.FALSE : Boolean.TRUE;
    } 
    return (paramObject instanceof String) ? ((((String)paramObject).length() > 0) ? Boolean.TRUE : Boolean.FALSE) : ((paramObject != null) ? Boolean.TRUE : Boolean.FALSE);
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("boolean() requires one argument");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\BooleanFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */