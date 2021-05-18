package org.jaxen.expr;

import org.jaxen.Context;

class DefaultPathExpr extends DefaultExpr implements PathExpr {
  private static final long serialVersionUID = -6593934674727004281L;
  
  private Expr filterExpr;
  
  private LocationPath locationPath;
  
  DefaultPathExpr(Expr paramExpr, LocationPath paramLocationPath) {
    this.filterExpr = paramExpr;
    this.locationPath = paramLocationPath;
  }
  
  public Object evaluate(Context paramContext) {
    Object object1;
    Object object2 = null;
    if (getFilterExpr() != null) {
      object2 = getFilterExpr().evaluate(paramContext);
      Context context = new Context(paramContext.getContextSupport());
      context.setNodeSet(convertToList(object2));
      object1 = object2;
      object2 = context;
    } else {
      paramContext = null;
    } 
    if (getLocationPath() != null)
      object1 = getLocationPath().evaluate((Context)object2); 
    return object1;
  }
  
  public Expr getFilterExpr() {
    return this.filterExpr;
  }
  
  public LocationPath getLocationPath() {
    return this.locationPath;
  }
  
  public String getText() {
    StringBuffer stringBuffer = new StringBuffer();
    if (getFilterExpr() != null)
      stringBuffer.append(getFilterExpr().getText()); 
    if (getLocationPath() != null) {
      if (!getLocationPath().getSteps().isEmpty())
        stringBuffer.append("/"); 
      stringBuffer.append(getLocationPath().getText());
    } 
    return stringBuffer.toString();
  }
  
  public void setFilterExpr(Expr paramExpr) {
    this.filterExpr = paramExpr;
  }
  
  public Expr simplify() {
    if (getFilterExpr() != null)
      setFilterExpr(getFilterExpr().simplify()); 
    if (getLocationPath() != null)
      getLocationPath().simplify(); 
    if (getFilterExpr() == null && getLocationPath() == null)
      return null; 
    if (getLocationPath() == null)
      return getFilterExpr(); 
    DefaultPathExpr defaultPathExpr = this;
    return (Expr)((getFilterExpr() == null) ? getLocationPath() : defaultPathExpr);
  }
  
  public String toString() {
    return (getLocationPath() != null) ? ("[(DefaultPathExpr): " + getFilterExpr() + ", " + getLocationPath() + "]") : ("[(DefaultPathExpr): " + getFilterExpr() + "]");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultPathExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */