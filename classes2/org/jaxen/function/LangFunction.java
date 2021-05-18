package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;
import org.jaxen.UnsupportedAxisException;

public class LangFunction implements Function {
  private static final String LANG_LOCALNAME = "lang";
  
  private static final String XMLNS_URI = "http://www.w3.org/XML/1998/namespace";
  
  private static Boolean evaluate(List paramList, Object paramObject, Navigator paramNavigator) {
    return evaluate(paramList.get(0), StringFunction.evaluate(paramObject, paramNavigator), paramNavigator) ? Boolean.TRUE : Boolean.FALSE;
  }
  
  private static boolean evaluate(Object paramObject, String paramString, Navigator paramNavigator) {
    Object object = paramObject;
    if (!paramNavigator.isElement(paramObject))
      object = paramNavigator.getParentNode(paramObject); 
    while (object != null && paramNavigator.isElement(object)) {
      paramObject = paramNavigator.getAttributeAxisIterator(object);
      while (paramObject.hasNext()) {
        Object object1 = paramObject.next();
        if ("lang".equals(paramNavigator.getAttributeName(object1)) && "http://www.w3.org/XML/1998/namespace".equals(paramNavigator.getAttributeNamespaceUri(object1)))
          return isSublang(paramNavigator.getAttributeStringValue(object1), paramString); 
      } 
      object = paramNavigator.getParentNode(object);
    } 
    return false;
  }
  
  private static boolean isSublang(String paramString1, String paramString2) {
    if (!paramString1.equalsIgnoreCase(paramString2)) {
      int i = paramString2.length();
      if (paramString1.length() <= i || paramString1.charAt(i) != '-' || !paramString1.substring(0, i).equalsIgnoreCase(paramString2))
        return false; 
    } 
    return true;
  }
  
  public Object call(Context paramContext, List<List> paramList) {
    if (paramList.size() != 1)
      throw new FunctionCallException("lang() requires exactly one argument."); 
    paramList = paramList.get(0);
    try {
      return evaluate(paramContext.getNodeSet(), paramList, paramContext.getNavigator());
    } catch (UnsupportedAxisException unsupportedAxisException) {
      throw new FunctionCallException("Can't evaluate lang()", unsupportedAxisException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\LangFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */