package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class NumberFunction implements Function {
  private static final Double NaN = new Double(Double.NaN);
  
  public static Double evaluate(Object paramObject, Navigator paramNavigator) {
    if (paramObject instanceof Double)
      return (Double)paramObject; 
    if (paramObject instanceof String) {
      paramObject = paramObject;
      try {
        return new Double((String)paramObject);
      } catch (NumberFormatException numberFormatException) {
        return NaN;
      } 
    } 
    return (numberFormatException instanceof List || numberFormatException instanceof java.util.Iterator) ? evaluate(StringFunction.evaluate(numberFormatException, paramNavigator), paramNavigator) : ((paramNavigator.isElement(numberFormatException) || paramNavigator.isAttribute(numberFormatException) || paramNavigator.isText(numberFormatException) || paramNavigator.isComment(numberFormatException) || paramNavigator.isProcessingInstruction(numberFormatException) || paramNavigator.isDocument(numberFormatException) || paramNavigator.isNamespace(numberFormatException)) ? evaluate(StringFunction.evaluate(numberFormatException, paramNavigator), paramNavigator) : ((numberFormatException instanceof Boolean) ? (Boolean.TRUE.equals(numberFormatException) ? new Double(1.0D) : new Double(0.0D)) : NaN));
  }
  
  public static boolean isNaN(double paramDouble) {
    return Double.isNaN(paramDouble);
  }
  
  public static boolean isNaN(Double paramDouble) {
    return paramDouble.equals(NaN);
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    if (paramList.size() == 0)
      return evaluate(paramContext.getNodeSet(), paramContext.getNavigator()); 
    throw new FunctionCallException("number() takes at most one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\NumberFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */