package org.jaxen.expr;

import org.jaxen.Context;

class DefaultVariableReferenceExpr extends DefaultExpr implements VariableReferenceExpr {
  private static final long serialVersionUID = 8832095437149358674L;
  
  private String localName;
  
  private String prefix;
  
  DefaultVariableReferenceExpr(String paramString1, String paramString2) {
    this.prefix = paramString1;
    this.localName = paramString2;
  }
  
  private String getQName() {
    return "".equals(this.prefix) ? this.localName : (this.prefix + ":" + this.localName);
  }
  
  public Object evaluate(Context paramContext) {
    String str3 = getPrefix();
    String str2 = null;
    String str1 = str2;
    if (str3 != null) {
      str1 = str2;
      if (!"".equals(str3))
        str1 = paramContext.translateNamespacePrefixToUri(str3); 
    } 
    return paramContext.getVariableValue(str1, str3, this.localName);
  }
  
  public String getPrefix() {
    return this.prefix;
  }
  
  public String getText() {
    return "$" + getQName();
  }
  
  public String getVariableName() {
    return this.localName;
  }
  
  public String toString() {
    return "[(DefaultVariableReferenceExpr): " + getQName() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultVariableReferenceExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */