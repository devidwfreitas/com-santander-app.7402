package org.jaxen.expr;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;

public class DefaultFunctionCallExpr extends DefaultExpr implements FunctionCallExpr {
  private static final long serialVersionUID = -4747789292572193708L;
  
  private String functionName;
  
  private List parameters;
  
  private String prefix;
  
  public DefaultFunctionCallExpr(String paramString1, String paramString2) {
    this.prefix = paramString1;
    this.functionName = paramString2;
    this.parameters = new ArrayList();
  }
  
  public void addParameter(Expr paramExpr) {
    this.parameters.add(paramExpr);
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
    return paramContext.getFunction(str1, str3, getFunctionName()).call(paramContext, evaluateParams(paramContext));
  }
  
  public List evaluateParams(Context paramContext) {
    List<Expr> list = getParameters();
    int j = list.size();
    ArrayList<Object> arrayList = new ArrayList(j);
    for (int i = 0; i < j; i++)
      arrayList.add(((Expr)list.get(i)).evaluate(paramContext)); 
    return arrayList;
  }
  
  public String getFunctionName() {
    return this.functionName;
  }
  
  public List getParameters() {
    return this.parameters;
  }
  
  public String getPrefix() {
    return this.prefix;
  }
  
  public String getText() {
    StringBuffer stringBuffer = new StringBuffer();
    String str = getPrefix();
    if (str != null && str.length() > 0) {
      stringBuffer.append(str);
      stringBuffer.append(":");
    } 
    stringBuffer.append(getFunctionName());
    stringBuffer.append("(");
    Iterator<Expr> iterator = getParameters().iterator();
    while (iterator.hasNext()) {
      stringBuffer.append(((Expr)iterator.next()).getText());
      if (iterator.hasNext())
        stringBuffer.append(", "); 
    } 
    stringBuffer.append(")");
    return stringBuffer.toString();
  }
  
  public Expr simplify() {
    List<Expr> list = getParameters();
    int j = list.size();
    ArrayList<Expr> arrayList = new ArrayList(j);
    for (int i = 0; i < j; i++)
      arrayList.add(((Expr)list.get(i)).simplify()); 
    this.parameters = arrayList;
    return this;
  }
  
  public String toString() {
    return (getPrefix() == null) ? ("[(DefaultFunctionCallExpr): " + getFunctionName() + "(" + getParameters() + ") ]") : ("[(DefaultFunctionCallExpr): " + getPrefix() + ":" + getFunctionName() + "(" + getParameters() + ") ]");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultFunctionCallExpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */