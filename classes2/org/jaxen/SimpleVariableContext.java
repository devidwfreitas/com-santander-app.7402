package org.jaxen;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class SimpleVariableContext implements Serializable, VariableContext {
  private static final long serialVersionUID = 961322093794516518L;
  
  private Map variables = new HashMap<Object, Object>();
  
  public Object getVariableValue(String paramString1, String paramString2, String paramString3) {
    QualifiedName qualifiedName = new QualifiedName(paramString1, paramString3);
    if (this.variables.containsKey(qualifiedName))
      return this.variables.get(qualifiedName); 
    throw new UnresolvableException("Variable " + qualifiedName.getClarkForm());
  }
  
  public void setVariableValue(String paramString, Object paramObject) {
    this.variables.put(new QualifiedName(null, paramString), paramObject);
  }
  
  public void setVariableValue(String paramString1, String paramString2, Object paramObject) {
    this.variables.put(new QualifiedName(paramString1, paramString2), paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\SimpleVariableContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */