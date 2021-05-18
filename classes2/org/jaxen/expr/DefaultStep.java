package org.jaxen.expr;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.ContextSupport;
import org.jaxen.expr.iter.IterableAxis;
import org.jaxen.saxpath.Axis;

public abstract class DefaultStep implements Step {
  private IterableAxis axis;
  
  private PredicateSet predicates;
  
  public DefaultStep(IterableAxis paramIterableAxis, PredicateSet paramPredicateSet) {
    this.axis = paramIterableAxis;
    this.predicates = paramPredicateSet;
  }
  
  public void addPredicate(Predicate paramPredicate) {
    this.predicates.addPredicate(paramPredicate);
  }
  
  public Iterator axisIterator(Object paramObject, ContextSupport paramContextSupport) {
    return getIterableAxis().iterator(paramObject, paramContextSupport);
  }
  
  public List evaluate(Context paramContext) {
    List<Object> list = paramContext.getNodeSet();
    IdentitySet identitySet = new IdentitySet();
    int j = list.size();
    ArrayList arrayList1 = new ArrayList();
    ArrayList arrayList2 = new ArrayList();
    ContextSupport contextSupport = paramContext.getContextSupport();
    for (int i = 0; i < j; i++) {
      Iterator<Object> iterator = (Iterator<Object>)list.get(i);
      iterator = this.axis.iterator(iterator, contextSupport);
      while (iterator.hasNext()) {
        Object object = iterator.next();
        if (!identitySet.contains(object) && matches(object, contextSupport)) {
          identitySet.add(object);
          arrayList1.add(object);
        } 
      } 
      arrayList2.addAll(getPredicateSet().evaluatePredicates(arrayList1, contextSupport));
      arrayList1.clear();
    } 
    return arrayList2;
  }
  
  public int getAxis() {
    return this.axis.value();
  }
  
  public String getAxisName() {
    return Axis.lookup(getAxis());
  }
  
  public IterableAxis getIterableAxis() {
    return this.axis;
  }
  
  public PredicateSet getPredicateSet() {
    return this.predicates;
  }
  
  public List getPredicates() {
    return this.predicates.getPredicates();
  }
  
  public String getText() {
    return this.predicates.getText();
  }
  
  public void simplify() {
    this.predicates.simplify();
  }
  
  public String toString() {
    return getIterableAxis() + " " + super.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultStep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */