package org.jaxen.expr;

import org.jaxen.Context;
import org.jaxen.function.NumberFunction;

class DefaultUnaryExpr extends DefaultExpr implements UnaryExpr {
  private static final long serialVersionUID = 2303714238683092334L;
  
  private Expr expr;
  
  DefaultUnaryExpr(Expr paramExpr) {
    this.expr = paramExpr;
  }
  
  public Object evaluate(Context paramContext) {
    return new Double(NumberFunction.evaluate(getExpr().evaluate(paramContext), paramContext.getNavigator()).doubleValue() * -1.0D);
  }
  
  public Expr getExpr() {
    return this.expr;
  }
  
  public String getText() {
    return "-(" + getExpr().getText() + ")";
  }
  
  public Expr simplify() {
    this.expr = this.expr.simplify();
    return this;
  }
  
  public String toString() {
    return "[(DefaultUnaryExpr): " + getExpr() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultUnaryExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */