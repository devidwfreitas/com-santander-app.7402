package org.jaxen.expr;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.ContextSupport;

abstract class DefaultLocationPath extends DefaultExpr implements LocationPath {
  private List steps = new LinkedList();
  
  private boolean isReverseAxis(Step paramStep) {
    int i = paramStep.getAxis();
    return (i == 8 || i == 6 || i == 4 || i == 13);
  }
  
  public void addStep(Step paramStep) {
    getSteps().add(paramStep);
  }
  
  public Object evaluate(Context paramContext) {
    List<?> list2 = paramContext.getNodeSet();
    ArrayList arrayList = new ArrayList(list2);
    ContextSupport contextSupport = paramContext.getContextSupport();
    Context context = new Context(contextSupport);
    Iterator<Step> iterator = getSteps().iterator();
    List<?> list1 = arrayList;
    while (iterator.hasNext()) {
      Step step = iterator.next();
      context.setNodeSet(list1);
      List<?> list = step.evaluate(context);
      list1 = list;
      if (isReverseAxis(step)) {
        Collections.reverse(list);
        list1 = list;
      } 
    } 
    if (getSteps().size() > 1 || list2.size() > 1)
      Collections.sort(list1, new NodeComparator(contextSupport.getNavigator())); 
    return list1;
  }
  
  public List getSteps() {
    return this.steps;
  }
  
  public String getText() {
    StringBuffer stringBuffer = new StringBuffer();
    Iterator<Step> iterator = getSteps().iterator();
    while (iterator.hasNext()) {
      stringBuffer.append(((Step)iterator.next()).getText());
      if (iterator.hasNext())
        stringBuffer.append("/"); 
    } 
    return stringBuffer.toString();
  }
  
  public boolean isAbsolute() {
    return false;
  }
  
  public Expr simplify() {
    Iterator<Step> iterator = getSteps().iterator();
    while (iterator.hasNext())
      ((Step)iterator.next()).simplify(); 
    return this;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    Iterator<E> iterator = getSteps().iterator();
    while (iterator.hasNext()) {
      stringBuffer.append(iterator.next().toString());
      if (iterator.hasNext())
        stringBuffer.append("/"); 
    } 
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultLocationPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */