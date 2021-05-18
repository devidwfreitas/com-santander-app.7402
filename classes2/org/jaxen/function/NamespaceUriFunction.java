package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class NamespaceUriFunction implements Function {
  public static String evaluate(List<List> paramList, Navigator paramNavigator) {
    if (!paramList.isEmpty()) {
      String str1;
      String str2;
      paramList = paramList.get(0);
      if (paramList instanceof List)
        return evaluate(paramList, paramNavigator); 
      if (paramNavigator.isElement(paramList))
        return paramNavigator.getElementNamespaceUri(paramList); 
      if (paramNavigator.isAttribute(paramList)) {
        str2 = paramNavigator.getAttributeNamespaceUri(paramList);
        str1 = str2;
        return (str2 == null) ? "" : str1;
      } 
      if (str2.isProcessingInstruction(str1))
        return ""; 
      if (str2.isNamespace(str1))
        return ""; 
      if (str2.isDocument(str1))
        return ""; 
      if (str2.isComment(str1))
        return ""; 
      if (str2.isText(str1))
        return ""; 
      throw new FunctionCallException("The argument to the namespace-uri function must be a node-set");
    } 
    return "";
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 0)
      return evaluate(paramContext.getNodeSet(), paramContext.getNavigator()); 
    if (paramList.size() == 1)
      return evaluate(paramList, paramContext.getNavigator()); 
    throw new FunctionCallException("namespace-uri() requires zero or one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\NamespaceUriFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */