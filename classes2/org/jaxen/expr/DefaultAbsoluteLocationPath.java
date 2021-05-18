package org.jaxen.expr;

import java.util.Collections;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.ContextSupport;
import org.jaxen.Navigator;
import org.jaxen.util.SingletonList;

public class DefaultAbsoluteLocationPath extends DefaultLocationPath {
  private static final long serialVersionUID = 2174836928310146874L;
  
  public Object evaluate(Context paramContext) {
    ContextSupport contextSupport = paramContext.getContextSupport();
    Navigator navigator = contextSupport.getNavigator();
    Context context = new Context(contextSupport);
    List list = paramContext.getNodeSet();
    if (list.isEmpty())
      return Collections.EMPTY_LIST; 
    Object object = navigator.getDocumentNode(list.get(0));
    if (object == null)
      return Collections.EMPTY_LIST; 
    context.setNodeSet((List)new SingletonList(object));
    return super.evaluate(context);
  }
  
  public String getText() {
    return "/" + super.getText();
  }
  
  public boolean isAbsolute() {
    return true;
  }
  
  public String toString() {
    return "[(DefaultAbsoluteLocationPath): " + super.toString() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultAbsoluteLocationPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */