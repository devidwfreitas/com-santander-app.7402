package org.jaxen.expr;

import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.Navigator;
import org.jaxen.function.NumberFunction;

abstract class DefaultRelationalExpr extends DefaultTruthExpr implements RelationalExpr {
  DefaultRelationalExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  private boolean evaluateObjectObject(Object paramObject1, Object paramObject2, Navigator paramNavigator) {
    if (paramObject1 != null && paramObject2 != null) {
      paramObject1 = NumberFunction.evaluate(paramObject1, paramNavigator);
      paramObject2 = NumberFunction.evaluate(paramObject2, paramNavigator);
      if (!NumberFunction.isNaN((Double)paramObject1) && !NumberFunction.isNaN((Double)paramObject2))
        return evaluateDoubleDouble((Double)paramObject1, (Double)paramObject2); 
    } 
    return false;
  }
  
  private Object evaluateSetSet(List paramList1, List paramList2, Navigator paramNavigator) {
    if (setIsEmpty(paramList1) || setIsEmpty(paramList2))
      return Boolean.FALSE; 
    for (Object object : paramList1) {
      Iterator iterator = paramList2.iterator();
      while (iterator.hasNext()) {
        if (evaluateObjectObject(object, iterator.next(), paramNavigator))
          return Boolean.TRUE; 
      } 
    } 
    return Boolean.FALSE;
  }
  
  public Object evaluate(Context paramContext) {
    Object object1 = getLHS().evaluate(paramContext);
    Object object2 = getRHS().evaluate(paramContext);
    Navigator navigator = paramContext.getNavigator();
    return bothAreSets(object1, object2) ? evaluateSetSet((List)object1, (List)object2, navigator) : (eitherIsSet(object1, object2) ? (isSet(object1) ? evaluateSetSet((List)object1, convertToList(object2), navigator) : evaluateSetSet(convertToList(object1), (List)object2, navigator)) : (evaluateObjectObject(object1, object2, navigator) ? Boolean.TRUE : Boolean.FALSE));
  }
  
  protected abstract boolean evaluateDoubleDouble(Double paramDouble1, Double paramDouble2);
  
  public String toString() {
    return "[(DefaultRelationalExpr): " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultRelationalExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */