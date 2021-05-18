package org.jaxen.expr;

import java.util.List;

public interface LocationPath extends Expr {
  void addStep(Step paramStep);
  
  List getSteps();
  
  boolean isAbsolute();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\LocationPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */