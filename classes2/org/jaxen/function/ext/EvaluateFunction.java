package org.jaxen.function.ext;

import java.util.Collections;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.ContextSupport;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;
import org.jaxen.function.StringFunction;
import org.jaxen.saxpath.SAXPathException;

public class EvaluateFunction implements Function {
  public static List evaluate(Context paramContext, Object paramObject) {
    if (paramContext.getNodeSet().size() == 0)
      return Collections.EMPTY_LIST; 
    Navigator navigator = paramContext.getNavigator();
    if (paramObject instanceof String) {
      paramObject = paramObject;
    } else {
      paramObject = StringFunction.evaluate(paramObject, navigator);
    } 
    try {
      paramObject = navigator.parseXPath((String)paramObject);
      ContextSupport contextSupport = paramContext.getContextSupport();
      paramObject.setVariableContext(contextSupport.getVariableContext());
      paramObject.setFunctionContext(contextSupport.getFunctionContext());
      paramObject.setNamespaceContext(contextSupport.getNamespaceContext());
      return paramObject.selectNodes(paramContext.duplicate());
    } catch (SAXPathException sAXPathException) {
      throw new FunctionCallException(sAXPathException.toString());
    } 
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramContext, paramList.get(0)); 
    throw new FunctionCallException("evaluate() requires one argument");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\ext\EvaluateFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */