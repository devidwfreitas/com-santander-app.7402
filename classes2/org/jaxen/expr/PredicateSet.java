package org.jaxen.expr;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.ContextSupport;
import org.jaxen.function.BooleanFunction;

public class PredicateSet implements Serializable {
  private static final long serialVersionUID = -7166491740228977853L;
  
  private List predicates = Collections.EMPTY_LIST;
  
  private boolean anyMatchingNode(List<Object> paramList, ContextSupport paramContextSupport) {
    if (this.predicates.size() == 0)
      return false; 
    Iterator<Predicate> iterator = this.predicates.iterator();
    while (iterator.hasNext()) {
      int j = paramList.size();
      Context context = new Context(paramContextSupport);
      ArrayList arrayList = new ArrayList(1);
      context.setNodeSet(arrayList);
      for (int i = 0; i < j; i++) {
        Object object = paramList.get(i);
        arrayList.clear();
        arrayList.add(object);
        context.setNodeSet(arrayList);
        context.setPosition(i + 1);
        context.setSize(j);
        object = ((Predicate)iterator.next()).evaluate(context);
        if (object instanceof Number) {
          if (((Number)object).intValue() == i + 1)
            return true; 
        } else if (BooleanFunction.evaluate(object, context.getNavigator()).booleanValue()) {
          return true;
        } 
      } 
    } 
    return false;
  }
  
  public void addPredicate(Predicate paramPredicate) {
    if (this.predicates == Collections.EMPTY_LIST)
      this.predicates = new ArrayList(); 
    this.predicates.add(paramPredicate);
  }
  
  public List applyPredicate(Predicate paramPredicate, List<Object> paramList, ContextSupport paramContextSupport) {
    int j = paramList.size();
    ArrayList arrayList1 = new ArrayList(j);
    Context context = new Context(paramContextSupport);
    ArrayList arrayList2 = new ArrayList(1);
    context.setNodeSet(arrayList2);
    for (int i = 0; i < j; i++) {
      Object object = paramList.get(i);
      arrayList2.clear();
      arrayList2.add(object);
      context.setNodeSet(arrayList2);
      context.setPosition(i + 1);
      context.setSize(j);
      Object object1 = paramPredicate.evaluate(context);
      if (object1 instanceof Number) {
        if (((Number)object1).intValue() == i + 1)
          arrayList1.add(object); 
      } else if (BooleanFunction.evaluate(object1, context.getNavigator()).booleanValue()) {
        arrayList1.add(object);
      } 
    } 
    return arrayList1;
  }
  
  protected boolean evaluateAsBoolean(List paramList, ContextSupport paramContextSupport) {
    return anyMatchingNode(paramList, paramContextSupport);
  }
  
  protected List evaluatePredicates(List paramList, ContextSupport paramContextSupport) {
    if (this.predicates.size() == 0)
      return paramList; 
    Iterator<Predicate> iterator = this.predicates.iterator();
    while (true) {
      List list = paramList;
      if (iterator.hasNext()) {
        paramList = applyPredicate(iterator.next(), paramList, paramContextSupport);
        continue;
      } 
      return list;
    } 
  }
  
  public List getPredicates() {
    return this.predicates;
  }
  
  public String getText() {
    StringBuffer stringBuffer = new StringBuffer();
    Iterator<Predicate> iterator = this.predicates.iterator();
    while (iterator.hasNext())
      stringBuffer.append(((Predicate)iterator.next()).getText()); 
    return stringBuffer.toString();
  }
  
  public void simplify() {
    Iterator<Predicate> iterator = this.predicates.iterator();
    while (iterator.hasNext())
      ((Predicate)iterator.next()).simplify(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\PredicateSet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */