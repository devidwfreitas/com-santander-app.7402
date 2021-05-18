package org.jaxen.function.xslt;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;
import org.jaxen.function.StringFunction;

public class DocumentFunction implements Function {
  public static Object evaluate(String paramString, Navigator paramNavigator) {
    return paramNavigator.getDocument(paramString);
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1) {
      Navigator navigator = paramContext.getNavigator();
      return evaluate(StringFunction.evaluate(paramList.get(0), navigator), navigator);
    } 
    throw new FunctionCallException("document() requires one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\xslt\DocumentFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */