package org.jaxen.expr;

import org.jaxen.Context;

public interface FilterExpr extends Expr, Predicated {
  boolean asBoolean(Context paramContext);
  
  Expr getExpr();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\FilterExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */