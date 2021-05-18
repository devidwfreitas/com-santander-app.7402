package org.jaxen.expr;

class DefaultGreaterThanEqualExpr extends DefaultRelationalExpr {
  private static final long serialVersionUID = -7848747981787197470L;
  
  DefaultGreaterThanEqualExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  protected boolean evaluateDoubleDouble(Double paramDouble1, Double paramDouble2) {
    return (paramDouble1.compareTo(paramDouble2) >= 0);
  }
  
  public String getOperator() {
    return ">=";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultGreaterThanEqualExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */