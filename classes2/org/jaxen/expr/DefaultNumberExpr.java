package org.jaxen.expr;

import org.jaxen.Context;

class DefaultNumberExpr extends DefaultExpr implements NumberExpr {
  private static final long serialVersionUID = -6021898973386269611L;
  
  private Double number;
  
  DefaultNumberExpr(Double paramDouble) {
    this.number = paramDouble;
  }
  
  public Object evaluate(Context paramContext) {
    return getNumber();
  }
  
  public Number getNumber() {
    return this.number;
  }
  
  public String getText() {
    return getNumber().toString();
  }
  
  public String toString() {
    return "[(DefaultNumberExpr): " + getNumber() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultNumberExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */