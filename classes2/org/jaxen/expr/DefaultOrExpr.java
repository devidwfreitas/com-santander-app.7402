package org.jaxen.expr;

import org.jaxen.Context;
import org.jaxen.Navigator;
import org.jaxen.function.BooleanFunction;

class DefaultOrExpr extends DefaultLogicalExpr {
  private static final long serialVersionUID = 4894552680753026730L;
  
  DefaultOrExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  public Object evaluate(Context paramContext) {
    Navigator navigator = paramContext.getNavigator();
    return BooleanFunction.evaluate(getLHS().evaluate(paramContext), navigator).booleanValue() ? Boolean.TRUE : (BooleanFunction.evaluate(getRHS().evaluate(paramContext), navigator).booleanValue() ? Boolean.TRUE : Boolean.FALSE);
  }
  
  public String getOperator() {
    return "or";
  }
  
  public String toString() {
    return "[(DefaultOrExpr): " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultOrExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */