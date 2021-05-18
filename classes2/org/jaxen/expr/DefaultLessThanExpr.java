package org.jaxen.expr;

class DefaultLessThanExpr extends DefaultRelationalExpr {
  private static final long serialVersionUID = 8423816025305001283L;
  
  DefaultLessThanExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  protected boolean evaluateDoubleDouble(Double paramDouble1, Double paramDouble2) {
    return (paramDouble1.doubleValue() < paramDouble2.doubleValue());
  }
  
  public String getOperator() {
    return "<";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultLessThanExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */