package org.jaxen.function;

import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class ConcatFunction implements Function {
  public static String evaluate(List paramList, Navigator paramNavigator) {
    StringBuffer stringBuffer = new StringBuffer();
    Iterator iterator = paramList.iterator();
    while (iterator.hasNext())
      stringBuffer.append(StringFunction.evaluate(iterator.next(), paramNavigator)); 
    return stringBuffer.toString();
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() >= 2)
      return evaluate(paramList, paramContext.getNavigator()); 
    throw new FunctionCallException("concat() requires at least two arguments");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\ConcatFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */