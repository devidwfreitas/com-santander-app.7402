package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;

public class CountFunction implements Function {
  public static Double evaluate(Object paramObject) {
    if (paramObject instanceof List)
      return new Double(((List)paramObject).size()); 
    throw new FunctionCallException("count() function can only be used for node-sets");
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramList.get(0)); 
    throw new FunctionCallException("count() requires one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\CountFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */