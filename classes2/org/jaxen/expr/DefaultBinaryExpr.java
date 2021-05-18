package org.jaxen.expr;

abstract class DefaultBinaryExpr extends DefaultExpr implements BinaryExpr {
  private Expr lhs;
  
  private Expr rhs;
  
  DefaultBinaryExpr(Expr paramExpr1, Expr paramExpr2) {
    this.lhs = paramExpr1;
    this.rhs = paramExpr2;
  }
  
  public Expr getLHS() {
    return this.lhs;
  }
  
  public abstract String getOperator();
  
  public Expr getRHS() {
    return this.rhs;
  }
  
  public String getText() {
    return "(" + getLHS().getText() + " " + getOperator() + " " + getRHS().getText() + ")";
  }
  
  public void setLHS(Expr paramExpr) {
    this.lhs = paramExpr;
  }
  
  public void setRHS(Expr paramExpr) {
    this.rhs = paramExpr;
  }
  
  public Expr simplify() {
    setLHS(getLHS().simplify());
    setRHS(getRHS().simplify());
    return this;
  }
  
  public String toString() {
    return "[" + getClass().getName() + ": " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultBinaryExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */