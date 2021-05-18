package org.jaxen.expr;

import org.jaxen.ContextSupport;
import org.jaxen.expr.iter.IterableAxis;

public class DefaultAllNodeStep extends DefaultStep implements AllNodeStep {
  private static final long serialVersionUID = 292886316770123856L;
  
  public DefaultAllNodeStep(IterableAxis paramIterableAxis, PredicateSet paramPredicateSet) {
    super(paramIterableAxis, paramPredicateSet);
  }
  
  public String getText() {
    return getAxisName() + "::node()" + super.getText();
  }
  
  public boolean matches(Object paramObject, ContextSupport paramContextSupport) {
    return true;
  }
  
  public String toString() {
    return "[(DefaultAllNodeStep): " + getAxisName() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultAllNodeStep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */