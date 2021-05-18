package org.jaxen.expr;

import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.Navigator;
import org.jaxen.function.BooleanFunction;
import org.jaxen.function.NumberFunction;
import org.jaxen.function.StringFunction;

abstract class DefaultEqualityExpr extends DefaultTruthExpr implements EqualityExpr {
  DefaultEqualityExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  private boolean evaluateObjectObject(Object paramObject1, Object paramObject2, Navigator paramNavigator) {
    return eitherIsBoolean(paramObject1, paramObject2) ? evaluateObjectObject(BooleanFunction.evaluate(paramObject1, paramNavigator), BooleanFunction.evaluate(paramObject2, paramNavigator)) : (eitherIsNumber(paramObject1, paramObject2) ? evaluateObjectObject(NumberFunction.evaluate(paramObject1, paramNavigator), NumberFunction.evaluate(paramObject2, paramNavigator)) : evaluateObjectObject(StringFunction.evaluate(paramObject1, paramNavigator), StringFunction.evaluate(paramObject2, paramNavigator)));
  }
  
  private Boolean evaluateSetSet(List paramList1, List paramList2, Navigator paramNavigator) {
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
    Object object2 = getLHS().evaluate(paramContext);
    Object object1 = getRHS().evaluate(paramContext);
    if (object2 == null || object1 == null)
      return Boolean.FALSE; 
    Navigator navigator = paramContext.getNavigator();
    if (bothAreSets(object2, object1))
      return evaluateSetSet((List)object2, (List)object1, navigator); 
    if (isSet(object2) && isBoolean(object1)) {
      if (((List)object2).isEmpty()) {
        Boolean bool1 = Boolean.FALSE;
        return Boolean.valueOf(evaluateObjectObject(bool1, object1, navigator));
      } 
      Boolean bool = Boolean.TRUE;
      return Boolean.valueOf(evaluateObjectObject(bool, object1, navigator));
    } 
    if (isBoolean(object2) && isSet(object1)) {
      object2 = object2;
      if (((List)object1).isEmpty()) {
        Boolean bool1 = Boolean.FALSE;
        return Boolean.valueOf(evaluateObjectObject(object2, bool1, navigator));
      } 
      Boolean bool = Boolean.TRUE;
      return Boolean.valueOf(evaluateObjectObject(object2, bool, navigator));
    } 
    return eitherIsSet(object2, object1) ? (isSet(object2) ? evaluateSetSet((List)object2, convertToList(object1), navigator) : evaluateSetSet(convertToList(object2), (List)object1, navigator)) : Boolean.valueOf(evaluateObjectObject(object2, object1, navigator));
  }
  
  protected abstract boolean evaluateObjectObject(Object paramObject1, Object paramObject2);
  
  public String toString() {
    return "[(DefaultEqualityExpr): " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultEqualityExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */