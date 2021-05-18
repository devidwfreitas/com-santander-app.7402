package org.jaxen.expr;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.XPathSyntaxException;

public class DefaultUnionExpr extends DefaultBinaryExpr implements UnionExpr {
  private static final long serialVersionUID = 7629142718276852707L;
  
  public DefaultUnionExpr(Expr paramExpr1, Expr paramExpr2) {
    super(paramExpr1, paramExpr2);
  }
  
  public Object evaluate(Context paramContext) {
    ArrayList<List> arrayList = new ArrayList();
    try {
      List list1 = (List)getLHS().evaluate(paramContext);
      list2 = (List)getRHS().evaluate(paramContext);
      HashSet<List> hashSet = new HashSet();
      arrayList.addAll(list1);
      hashSet.addAll(list1);
      for (List list2 : list2) {
        if (!hashSet.contains(list2)) {
          arrayList.add(list2);
          hashSet.add(list2);
        } 
      } 
    } catch (ClassCastException classCastException) {
      throw new XPathSyntaxException(getText(), paramContext.getPosition(), "Unions are only allowed over node-sets");
    } 
    Collections.sort((List<?>)classCastException, new NodeComparator(paramContext.getNavigator()));
    return classCastException;
  }
  
  public String getOperator() {
    return "|";
  }
  
  public String toString() {
    return "[(DefaultUnionExpr): " + getLHS() + ", " + getRHS() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultUnionExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */