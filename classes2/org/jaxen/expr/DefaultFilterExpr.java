package org.jaxen.expr;

import java.util.ArrayList;
import java.util.List;
import org.jaxen.Context;

public class DefaultFilterExpr extends DefaultExpr implements FilterExpr, Predicated {
  private static final long serialVersionUID = -549640659288005735L;
  
  private Expr expr;
  
  private PredicateSet predicates;
  
  public DefaultFilterExpr(Expr paramExpr, PredicateSet paramPredicateSet) {
    this.expr = paramExpr;
    this.predicates = paramPredicateSet;
  }
  
  public DefaultFilterExpr(PredicateSet paramPredicateSet) {
    this.predicates = paramPredicateSet;
  }
  
  public void addPredicate(Predicate paramPredicate) {
    this.predicates.addPredicate(paramPredicate);
  }
  
  public boolean asBoolean(Context paramContext) {
    Object object;
    if (this.expr != null) {
      object = this.expr.evaluate(paramContext);
    } else {
      List list = paramContext.getNodeSet();
      object = new ArrayList(list.size());
      object.addAll(list);
    } 
    return (object instanceof Boolean) ? ((Boolean)object).booleanValue() : ((object instanceof List) ? getPredicateSet().evaluateAsBoolean((List)object, paramContext.getContextSupport()) : false);
  }
  
  public Object evaluate(Context paramContext) {
    Object object2 = getExpr().evaluate(paramContext);
    Object object1 = object2;
    if (object2 instanceof List)
      object1 = getPredicateSet().evaluatePredicates((List)object2, paramContext.getContextSupport()); 
    return object1;
  }
  
  public Expr getExpr() {
    return this.expr;
  }
  
  public PredicateSet getPredicateSet() {
    return this.predicates;
  }
  
  public List getPredicates() {
    return this.predicates.getPredicates();
  }
  
  public String getText() {
    String str = "";
    if (this.expr != null)
      str = this.expr.getText(); 
    return str + this.predicates.getText();
  }
  
  public Expr simplify() {
    this.predicates.simplify();
    if (this.expr != null)
      this.expr = this.expr.simplify(); 
    Expr expr = this;
    if (this.predicates.getPredicates().size() == 0)
      expr = getExpr(); 
    return expr;
  }
  
  public String toString() {
    return "[(DefaultFilterExpr): expr: " + this.expr + " predicates: " + this.predicates + " ]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultFilterExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */