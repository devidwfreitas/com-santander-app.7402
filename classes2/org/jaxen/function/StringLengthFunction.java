package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class StringLengthFunction implements Function {
  public static Double evaluate(Object paramObject, Navigator paramNavigator) {
    int i = 0;
    paramObject = StringFunction.evaluate(paramObject, paramNavigator);
    char[] arrayOfChar = paramObject.toCharArray();
    int j;
    for (j = 0; i < arrayOfChar.length; j = k) {
      char c = arrayOfChar[i];
      int k = j + 1;
      j = i;
      if (c >= '?') {
        j = i;
        if (c <= '?') {
          j = arrayOfChar[i + 1];
          if (j < 56320 || j > 57343)
            try {
              throw new FunctionCallException("Bad surrogate pair in string " + paramObject);
            } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
              throw new FunctionCallException("Bad surrogate pair in string " + paramObject);
            }  
          j = i + 1;
        } 
      } 
      i = j + 1;
    } 
    return new Double(j);
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 0)
      return evaluate(paramContext.getNodeSet(), paramContext.getNavigator()); 
    if (paramList.size() == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("string-length() requires one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\StringLengthFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */