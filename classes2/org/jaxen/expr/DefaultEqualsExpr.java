package org.jaxen.expr;

class DefaultEqualsExpr extends DefaultEqualityExpr {
  private static final long serialVersionUID = -8327599812627931648L;
  
  DefaultEqualsExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  protected boolean evaluateObjectObject(Object paramObject1, Object paramObject2) {
    if (eitherIsNumber(paramObject1, paramObject2)) {
      paramObject1 = paramObject1;
      paramObject2 = paramObject2;
      return (paramObject1.doubleValue() == paramObject2.doubleValue());
    } 
    return paramObject1.equals(paramObject2);
  }
  
  public String getOperator() {
    return "=";
  }
  
  public String toString() {
    return "[(DefaultEqualsExpr): " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultEqualsExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */