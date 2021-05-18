package org.jaxen;

import java.io.Serializable;

public class ContextSupport implements Serializable {
  private static final long serialVersionUID = 4494082174713652559L;
  
  private transient FunctionContext functionContext;
  
  private NamespaceContext namespaceContext;
  
  private Navigator navigator;
  
  private VariableContext variableContext;
  
  public ContextSupport() {}
  
  public ContextSupport(NamespaceContext paramNamespaceContext, FunctionContext paramFunctionContext, VariableContext paramVariableContext, Navigator paramNavigator) {
    setNamespaceContext(paramNamespaceContext);
    setFunctionContext(paramFunctionContext);
    setVariableContext(paramVariableContext);
    this.navigator = paramNavigator;
  }
  
  public Function getFunction(String paramString1, String paramString2, String paramString3) {
    FunctionContext functionContext = getFunctionContext();
    if (functionContext != null)
      return functionContext.getFunction(paramString1, paramString2, paramString3); 
    throw new UnresolvableException("No function context installed");
  }
  
  public FunctionContext getFunctionContext() {
    return this.functionContext;
  }
  
  public NamespaceContext getNamespaceContext() {
    return this.namespaceContext;
  }
  
  public Navigator getNavigator() {
    return this.navigator;
  }
  
  public VariableContext getVariableContext() {
    return this.variableContext;
  }
  
  public Object getVariableValue(String paramString1, String paramString2, String paramString3) {
    VariableContext variableContext = getVariableContext();
    if (variableContext != null)
      return variableContext.getVariableValue(paramString1, paramString2, paramString3); 
    throw new UnresolvableException("No variable context installed");
  }
  
  public void setFunctionContext(FunctionContext paramFunctionContext) {
    this.functionContext = paramFunctionContext;
  }
  
  public void setNamespaceContext(NamespaceContext paramNamespaceContext) {
    this.namespaceContext = paramNamespaceContext;
  }
  
  public void setVariableContext(VariableContext paramVariableContext) {
    this.variableContext = paramVariableContext;
  }
  
  public String translateNamespacePrefixToUri(String paramString) {
    if ("xml".equals(paramString))
      return "http://www.w3.org/XML/1998/namespace"; 
    NamespaceContext namespaceContext = getNamespaceContext();
    return (namespaceContext != null) ? namespaceContext.translateNamespacePrefixToUri(paramString) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\ContextSupport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */