package org.jaxen;

import java.util.HashMap;

public class SimpleFunctionContext implements FunctionContext {
  private HashMap functions = new HashMap<Object, Object>();
  
  public Function getFunction(String paramString1, String paramString2, String paramString3) {
    QualifiedName qualifiedName = new QualifiedName(paramString1, paramString3);
    if (this.functions.containsKey(qualifiedName))
      return (Function)this.functions.get(qualifiedName); 
    throw new UnresolvableException("No Such Function " + qualifiedName.getClarkForm());
  }
  
  public void registerFunction(String paramString1, String paramString2, Function paramFunction) {
    this.functions.put(new QualifiedName(paramString1, paramString2), paramFunction);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\SimpleFunctionContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */