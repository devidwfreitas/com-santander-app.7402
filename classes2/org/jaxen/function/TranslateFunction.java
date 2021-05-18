package org.jaxen.function;

import java.util.HashMap;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class TranslateFunction implements Function {
  public static String evaluate(Object paramObject1, Object<Object, Object> paramObject2, Object paramObject3, Navigator paramNavigator) {
    paramObject1 = StringFunction.evaluate(paramObject1, paramNavigator);
    String str2 = StringFunction.evaluate(paramObject2, paramNavigator);
    String str1 = StringFunction.evaluate(paramObject3, paramNavigator);
    paramObject2 = (Object<Object, Object>)new HashMap<Object, Object>();
    paramObject3 = toUnicodeCharacters(str2);
    String[] arrayOfString = toUnicodeCharacters(str1);
    int j = paramObject3.length;
    int k = arrayOfString.length;
    int i;
    for (i = 0; i < j; i++) {
      Object object = paramObject3[i];
      if (!paramObject2.containsKey(object))
        if (i < k) {
          paramObject2.put(object, arrayOfString[i]);
        } else {
          paramObject2.put(object, null);
        }  
    } 
    paramObject3 = new StringBuffer(paramObject1.length());
    paramObject1 = toUnicodeCharacters((String)paramObject1);
    j = paramObject1.length;
    for (i = 0; i < j; i++) {
      Object object = paramObject1[i];
      if (paramObject2.containsKey(object)) {
        object = paramObject2.get(object);
        if (object != null)
          paramObject3.append((String)object); 
      } else {
        paramObject3.append((String)object);
      } 
    } 
    return paramObject3.toString();
  }
  
  private static boolean isHighSurrogate(char paramChar) {
    return (paramChar >= '?' && paramChar <= '?');
  }
  
  private static boolean isLowSurrogate(char paramChar) {
    return (paramChar >= '?' && paramChar <= '?');
  }
  
  private static String[] toUnicodeCharacters(String paramString) {
    String[] arrayOfString = new String[paramString.length()];
    int i = 0;
    int j = 0;
    while (true) {
      if (i < paramString.length()) {
        char c = paramString.charAt(i);
        if (isHighSurrogate(c)) {
          try {
            char c1 = paramString.charAt(i + 1);
            if (isLowSurrogate(c1)) {
              arrayOfString[j] = (c + "" + c1).intern();
              i++;
            } else {
              throw new FunctionCallException("Mismatched surrogate pair in translate function");
            } 
          } catch (StringIndexOutOfBoundsException stringIndexOutOfBoundsException) {
            throw new FunctionCallException("High surrogate without low surrogate at end of string passed to translate function");
          } 
        } else {
          arrayOfString[j] = String.valueOf(c).intern();
        } 
      } else {
        if (j == arrayOfString.length)
          return arrayOfString; 
        String[] arrayOfString1 = new String[j];
        System.arraycopy(arrayOfString, 0, arrayOfString1, 0, j);
        return arrayOfString1;
      } 
      j++;
      i++;
    } 
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 3)
      return evaluate(paramList.get(0), paramList.get(1), paramList.get(2), paramContext.getNavigator()); 
    throw new FunctionCallException("translate() requires three arguments.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\TranslateFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */