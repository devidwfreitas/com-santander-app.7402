package org.jaxen.function;

import java.util.List;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class LocalNameFunction implements Function {
  public static String evaluate(List<List> paramList, Navigator paramNavigator) {
    if (!paramList.isEmpty()) {
      paramList = paramList.get(0);
      if (paramList instanceof List)
        return evaluate(paramList, paramNavigator); 
      if (paramNavigator.isElement(paramList))
        return paramNavigator.getElementName(paramList); 
      if (paramNavigator.isAttribute(paramList))
        return paramNavigator.getAttributeName(paramList); 
      if (paramNavigator.isProcessingInstruction(paramList))
        return paramNavigator.getProcessingInstructionTarget(paramList); 
      if (paramNavigator.isNamespace(paramList))
        return paramNavigator.getNamespacePrefix(paramList); 
      if (paramNavigator.isDocument(paramList))
        return ""; 
      if (paramNavigator.isComment(paramList))
        return ""; 
      if (paramNavigator.isText(paramList))
        return ""; 
      throw new FunctionCallException("The argument to the local-name function must be a node-set");
    } 
    return "";
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 0)
      return evaluate(paramContext.getNodeSet(), paramContext.getNavigator()); 
    if (paramList.size() == 1)
      return evaluate(paramList, paramContext.getNavigator()); 
    throw new FunctionCallException("local-name() requires zero or one argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\LocalNameFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */