package org.jaxen.expr;

import java.util.List;

public interface FunctionCallExpr extends Expr {
  void addParameter(Expr paramExpr);
  
  String getFunctionName();
  
  List getParameters();
  
  String getPrefix();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\FunctionCallExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */