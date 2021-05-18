package org.jaxen.expr;

import org.jaxen.Context;

class DefaultPredicate implements Predicate {
  private static final long serialVersionUID = -4140068594075364971L;
  
  private Expr expr;
  
  DefaultPredicate(Expr paramExpr) {
    setExpr(paramExpr);
  }
  
  public Object evaluate(Context paramContext) {
    return getExpr().evaluate(paramContext);
  }
  
  public Expr getExpr() {
    return this.expr;
  }
  
  public String getText() {
    return "[" + getExpr().getText() + "]";
  }
  
  public void setExpr(Expr paramExpr) {
    this.expr = paramExpr;
  }
  
  public void simplify() {
    setExpr(getExpr().simplify());
  }
  
  public String toString() {
    return "[(DefaultPredicate): " + getExpr() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultPredicate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */