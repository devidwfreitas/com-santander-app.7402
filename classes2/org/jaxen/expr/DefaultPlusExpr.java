package org.jaxen.expr;

import org.jaxen.Context;
import org.jaxen.function.NumberFunction;

class DefaultPlusExpr extends DefaultAdditiveExpr {
  private static final long serialVersionUID = -1426954461146769374L;
  
  DefaultPlusExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  public Object evaluate(Context paramContext) {
    Double double_2 = NumberFunction.evaluate(getLHS().evaluate(paramContext), paramContext.getNavigator());
    Double double_1 = NumberFunction.evaluate(getRHS().evaluate(paramContext), paramContext.getNavigator());
    double d = double_2.doubleValue();
    return new Double(double_1.doubleValue() + d);
  }
  
  public String getOperator() {
    return "+";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultPlusExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */