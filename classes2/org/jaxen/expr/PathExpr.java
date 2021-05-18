package org.jaxen.expr;

public interface PathExpr extends Expr {
  Expr getFilterExpr();
  
  LocationPath getLocationPath();
  
  void setFilterExpr(Expr paramExpr);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\PathExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */