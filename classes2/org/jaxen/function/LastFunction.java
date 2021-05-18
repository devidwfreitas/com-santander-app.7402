package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;

public class LastFunction implements Function {
  public static Double evaluate(Context paramContext) {
    return new Double(paramContext.getSize());
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 0)
      return evaluate(paramContext); 
    throw new FunctionCallException("last() requires no arguments.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\LastFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */