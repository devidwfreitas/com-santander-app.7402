package org.jaxen.expr;

abstract class DefaultLogicalExpr extends DefaultTruthExpr implements LogicalExpr {
  DefaultLogicalExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultLogicalExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */