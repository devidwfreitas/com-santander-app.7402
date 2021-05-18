package org.jaxen.expr;

import java.io.Serializable;
import java.util.List;

public interface Predicated extends Serializable {
  void addPredicate(Predicate paramPredicate);
  
  PredicateSet getPredicateSet();
  
  List getPredicates();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\Predicated.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */