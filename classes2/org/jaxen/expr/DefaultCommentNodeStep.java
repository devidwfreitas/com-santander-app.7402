package org.jaxen.expr;

import org.jaxen.ContextSupport;
import org.jaxen.expr.iter.IterableAxis;

public class DefaultCommentNodeStep extends DefaultStep implements CommentNodeStep {
  private static final long serialVersionUID = 4340788283861875606L;
  
  public DefaultCommentNodeStep(IterableAxis paramIterableAxis, PredicateSet paramPredicateSet) {
    super(paramIterableAxis, paramPredicateSet);
  }
  
  public String getText() {
    return getAxisName() + "::comment()";
  }
  
  public boolean matches(Object paramObject, ContextSupport paramContextSupport) {
    return paramContextSupport.getNavigator().isComment(paramObject);
  }
  
  public String toString() {
    return "[(DefaultCommentNodeStep): " + getAxis() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultCommentNodeStep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */