package org.jaxen.expr;

import java.io.Serializable;
import org.jaxen.Context;

public interface Predicate extends Serializable {
  Object evaluate(Context paramContext);
  
  Expr getExpr();
  
  String getText();
  
  void setExpr(Expr paramExpr);
  
  void simplify();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\Predicate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */