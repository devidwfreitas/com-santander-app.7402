package org.jaxen.function.ext;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;
import org.jaxen.function.StringFunction;

public class EndsWithFunction implements Function {
  public static Boolean evaluate(Object paramObject1, Object paramObject2, Navigator paramNavigator) {
    return StringFunction.evaluate(paramObject1, paramNavigator).endsWith(StringFunction.evaluate(paramObject2, paramNavigator)) ? Boolean.TRUE : Boolean.FALSE;
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 2)
      return evaluate(paramList.get(0), paramList.get(1), paramContext.getNavigator()); 
    throw new FunctionCallException("ends-with() requires two arguments.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\ext\EndsWithFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */