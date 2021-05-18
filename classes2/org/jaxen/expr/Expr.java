package org.jaxen.expr;

import java.io.Serializable;
import org.jaxen.Context;

public interface Expr extends Serializable {
  Object evaluate(Context paramContext);
  
  String getText();
  
  Expr simplify();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\Expr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */