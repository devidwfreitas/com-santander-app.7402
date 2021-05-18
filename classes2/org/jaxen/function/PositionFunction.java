package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;

public class PositionFunction implements Function {
  public static Double evaluate(Context paramContext) {
    return new Double(paramContext.getPosition());
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 0)
      return evaluate(paramContext); 
    throw new FunctionCallException("position() does not take any arguments.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\PositionFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */