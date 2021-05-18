package org.jaxen.function.ext;

import java.util.Locale;
import java.util.StringTokenizer;
import org.jaxen.Function;
import org.jaxen.Navigator;
import org.jaxen.function.StringFunction;

public abstract class LocaleFunctionSupport implements Function {
  protected Locale findLocale(String paramString) {
    StringTokenizer stringTokenizer = new StringTokenizer(paramString, "-");
    if (stringTokenizer.hasMoreTokens()) {
      String str1 = stringTokenizer.nextToken();
      if (!stringTokenizer.hasMoreTokens())
        return findLocaleForLanguage(str1); 
      String str2 = stringTokenizer.nextToken();
      return !stringTokenizer.hasMoreTokens() ? new Locale(str1, str2) : new Locale(str1, str2, stringTokenizer.nextToken());
    } 
    return null;
  }
  
  protected Locale findLocaleForLanguage(String paramString) {
    for (Locale locale : Locale.getAvailableLocales()) {
      if (paramString.equals(locale.getLanguage())) {
        String str = locale.getCountry();
        if (str == null || str.length() == 0) {
          str = locale.getVariant();
          if (str == null || str.length() == 0)
            return locale; 
        } 
      } 
    } 
    return null;
  }
  
  protected Locale getLocale(Object paramObject, Navigator paramNavigator) {
    if (paramObject instanceof Locale)
      return (Locale)paramObject; 
    if (paramObject instanceof java.util.List) {
      paramObject = paramObject;
      if (!paramObject.isEmpty())
        return getLocale(paramObject.get(0), paramNavigator); 
    } else {
      paramObject = StringFunction.evaluate(paramObject, paramNavigator);
      if (paramObject != null && paramObject.length() > 0)
        return findLocale((String)paramObject); 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\ext\LocaleFunctionSupport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */