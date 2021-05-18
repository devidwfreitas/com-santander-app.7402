package org.jaxen.expr;

import org.jaxen.Context;

class DefaultLiteralExpr extends DefaultExpr implements LiteralExpr {
  private static final long serialVersionUID = -953829179036273338L;
  
  private String literal;
  
  DefaultLiteralExpr(String paramString) {
    this.literal = paramString;
  }
  
  public Object evaluate(Context paramContext) {
    return getLiteral();
  }
  
  public String getLiteral() {
    return this.literal;
  }
  
  public String getText() {
    return (this.literal.indexOf('"') == -1) ? ("\"" + getLiteral() + "\"") : ("'" + getLiteral() + "'");
  }
  
  public String toString() {
    return "[(DefaultLiteralExpr): " + getLiteral() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultLiteralExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */