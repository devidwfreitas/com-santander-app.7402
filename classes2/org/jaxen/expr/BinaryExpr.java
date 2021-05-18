package org.jaxen.expr;

public interface BinaryExpr extends Expr {
  Expr getLHS();
  
  String getOperator();
  
  Expr getRHS();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\BinaryExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */