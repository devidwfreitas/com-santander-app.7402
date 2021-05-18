package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class NormalizeSpaceFunction implements Function {
  public static String evaluate(Object paramObject, Navigator paramNavigator) {
    paramObject = StringFunction.evaluate(paramObject, paramNavigator).toCharArray();
    int i = 0;
    boolean bool = false;
    int k = 0;
    int j = 0;
    label18: while (i < paramObject.length) {
      if (isXMLSpace(paramObject[i])) {
        int m = i;
        int n = j;
        if (bool) {
          paramObject[j] = 32;
          n = j + 1;
          m = i;
        } 
        while (true) {
          int i1 = m + 1;
          i = i1;
          j = n;
          if (i1 < paramObject.length) {
            m = i1;
            if (!isXMLSpace(paramObject[i1])) {
              i = i1;
              j = n;
            } 
            continue;
          } 
          continue label18;
        } 
      } 
      k = j + 1;
      paramObject[j] = paramObject[i];
      j = k;
      i++;
      bool = true;
    } 
    return new String((char[])paramObject, 0, k);
  }
  
  private static boolean isXMLSpace(char paramChar) {
    return (paramChar == ' ' || paramChar == '\n' || paramChar == '\r' || paramChar == '\t');
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 0)
      return evaluate(paramContext.getNodeSet(), paramContext.getNavigator()); 
    if (paramList.size() == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("normalize-space() cannot have more than one argument");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\NormalizeSpaceFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */