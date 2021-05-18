package org.jaxen.function;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class IdFunction implements Function {
  public static List evaluate(List<Object> paramList, Object<Object> paramObject, Navigator paramNavigator) {
    if (paramList.size() == 0)
      return Collections.EMPTY_LIST; 
    ArrayList<Object> arrayList = new ArrayList();
    Iterator iterator = (Iterator)paramList.get(0);
    if (paramObject instanceof List) {
      iterator = ((List)paramObject).iterator();
      while (true) {
        paramObject = (Object<Object>)arrayList;
        if (iterator.hasNext()) {
          arrayList.addAll(evaluate(paramList, StringFunction.evaluate(iterator.next(), paramNavigator), paramNavigator));
          continue;
        } 
        return (List)paramObject;
      } 
    } 
    StringTokenizer stringTokenizer = new StringTokenizer(StringFunction.evaluate(paramObject, paramNavigator), " \t\n\r");
    while (true) {
      paramObject = (Object<Object>)arrayList;
      if (stringTokenizer.hasMoreTokens()) {
        paramObject = (Object<Object>)paramNavigator.getElementById(iterator, stringTokenizer.nextToken());
        if (paramObject != null)
          arrayList.add(paramObject); 
        continue;
      } 
      return (List)paramObject;
    } 
  }
  
  public Object call(Context paramContext, List paramList) {
    if (paramList.size() == 1)
      return evaluate(paramContext.getNodeSet(), paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("id() requires one argument");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\IdFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */