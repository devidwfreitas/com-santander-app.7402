package org.jaxen.expr;

class DefaultLessThanEqualExpr extends DefaultRelationalExpr {
  private static final long serialVersionUID = 7980276649555334242L;
  
  DefaultLessThanEqualExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  protected boolean evaluateDoubleDouble(Double paramDouble1, Double paramDouble2) {
    return (paramDouble1.doubleValue() <= paramDouble2.doubleValue());
  }
  
  public String getOperator() {
    return "<=";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultLessThanEqualExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */