package org.jaxen.expr;

import org.jaxen.Context;
import org.jaxen.Navigator;
import org.jaxen.function.BooleanFunction;

class DefaultAndExpr extends DefaultLogicalExpr {
  private static final long serialVersionUID = -5237984010263103742L;
  
  DefaultAndExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  public Object evaluate(Context paramContext) {
    Navigator navigator = paramContext.getNavigator();
    return !BooleanFunction.evaluate(getLHS().evaluate(paramContext), navigator).booleanValue() ? Boolean.FALSE : (!BooleanFunction.evaluate(getRHS().evaluate(paramContext), navigator).booleanValue() ? Boolean.FALSE : Boolean.TRUE);
  }
  
  public String getOperator() {
    return "and";
  }
  
  public String toString() {
    return "[(DefaultAndExpr): " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultAndExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */