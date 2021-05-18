package org.jaxen.function.ext;

import java.util.List;
import java.util.Locale;
import org.jaxen.Context;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;
import org.jaxen.function.StringFunction;

public class UpperFunction extends LocaleFunctionSupport {
  public static String evaluate(Object paramObject, Locale paramLocale, Navigator paramNavigator) {
    String str = StringFunction.evaluate(paramObject, paramNavigator);
    paramObject = paramLocale;
    if (paramLocale == null)
      paramObject = Locale.ENGLISH; 
    return str.toUpperCase((Locale)paramObject);
  }
  
  public Object call(Context paramContext, List<Object> paramList) {
    Navigator navigator = paramContext.getNavigator();
    int i = paramList.size();
    if (i > 0) {
      Locale locale;
      Object object = paramList.get(0);
      paramContext = null;
      if (i > 1)
        locale = getLocale(paramList.get(1), navigator); 
      return evaluate(object, locale, navigator);
    } 
    throw new FunctionCallException("upper-case() requires at least one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\ext\UpperFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */