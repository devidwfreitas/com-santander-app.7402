package org.jaxen.expr;

import org.jaxen.ContextSupport;
import org.jaxen.expr.iter.IterableAxis;

public class DefaultTextNodeStep extends DefaultStep implements TextNodeStep {
  private static final long serialVersionUID = -3821960984972022948L;
  
  public DefaultTextNodeStep(IterableAxis paramIterableAxis, PredicateSet paramPredicateSet) {
    super(paramIterableAxis, paramPredicateSet);
  }
  
  public String getText() {
    return getAxisName() + "::text()" + super.getText();
  }
  
  public boolean matches(Object paramObject, ContextSupport paramContextSupport) {
    return paramContextSupport.getNavigator().isText(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultTextNodeStep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */