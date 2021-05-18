package org.jaxen.expr;

abstract class DefaultMultiplicativeExpr extends DefaultArithExpr implements MultiplicativeExpr {
  DefaultMultiplicativeExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  public String toString() {
    return "[(DefaultMultiplicativeExpr): " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultMultiplicativeExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */