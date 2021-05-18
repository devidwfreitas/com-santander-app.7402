package org.jaxen.expr;

import java.util.List;

abstract class DefaultTruthExpr extends DefaultBinaryExpr {
  DefaultTruthExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  protected boolean bothAreBoolean(Object paramObject1, Object paramObject2) {
    return (paramObject1 instanceof Boolean && paramObject2 instanceof Boolean);
  }
  
  protected boolean bothAreSets(Object paramObject1, Object paramObject2) {
    return (paramObject1 instanceof List && paramObject2 instanceof List);
  }
  
  protected boolean eitherIsBoolean(Object paramObject1, Object paramObject2) {
    return (paramObject1 instanceof Boolean || paramObject2 instanceof Boolean);
  }
  
  protected boolean eitherIsNumber(Object paramObject1, Object paramObject2) {
    return (paramObject1 instanceof Number || paramObject2 instanceof Number);
  }
  
  protected boolean eitherIsSet(Object paramObject1, Object paramObject2) {
    return (paramObject1 instanceof List || paramObject2 instanceof List);
  }
  
  protected boolean isBoolean(Object paramObject) {
    return paramObject instanceof Boolean;
  }
  
  protected boolean isSet(Object paramObject) {
    return paramObject instanceof List;
  }
  
  protected boolean setIsEmpty(List paramList) {
    return (paramList == null || paramList.size() == 0);
  }
  
  public String toString() {
    return "[(DefaultTruthExpr): " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultTruthExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */