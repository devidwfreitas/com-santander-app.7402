package org.jaxen.expr;

import java.util.List;
import org.jaxen.Context;

public class DefaultXPathExpr implements XPathExpr {
  private static final long serialVersionUID = 3007613096320896040L;
  
  private Expr rootExpr;
  
  public DefaultXPathExpr(Expr paramExpr) {
    this.rootExpr = paramExpr;
  }
  
  public List asList(Context paramContext) {
    return DefaultExpr.convertToList(getRootExpr().evaluate(paramContext));
  }
  
  public Expr getRootExpr() {
    return this.rootExpr;
  }
  
  public String getText() {
    return getRootExpr().getText();
  }
  
  public void setRootExpr(Expr paramExpr) {
    this.rootExpr = paramExpr;
  }
  
  public void simplify() {
    setRootExpr(getRootExpr().simplify());
  }
  
  public String toString() {
    return "[(DefaultXPath): " + getRootExpr() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultXPathExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */