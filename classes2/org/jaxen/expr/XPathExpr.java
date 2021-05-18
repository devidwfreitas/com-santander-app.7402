package org.jaxen.expr;

import java.io.Serializable;
import java.util.List;
import org.jaxen.Context;

public interface XPathExpr extends Serializable {
  List asList(Context paramContext);
  
  Expr getRootExpr();
  
  String getText();
  
  void setRootExpr(Expr paramExpr);
  
  void simplify();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\XPathExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */