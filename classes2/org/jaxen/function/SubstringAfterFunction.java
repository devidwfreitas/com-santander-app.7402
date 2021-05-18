package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class SubstringAfterFunction implements Function {
  public static String evaluate(Object paramObject1, Object paramObject2, Navigator paramNavigator) {
    paramObject1 = StringFunction.evaluate(paramObject1, paramNavigator);
    paramObject2 = StringFunction.evaluate(paramObject2, paramNavigator);
    int i = paramObject1.indexOf((String)paramObject2);
    return (i < 0) ? "" : paramObject1.substring(paramObject2.length() + i);
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 2)
      return evaluate(paramList.get(0), paramList.get(1), paramContext.getNavigator()); 
    throw new FunctionCallException("substring-after() requires two arguments.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\SubstringAfterFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */