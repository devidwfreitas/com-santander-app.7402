package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;

public class TrueFunction implements Function {
  public static Boolean evaluate() {
    return Boolean.TRUE;
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 0)
      return evaluate(); 
    throw new FunctionCallException("true() requires no arguments.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\TrueFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */