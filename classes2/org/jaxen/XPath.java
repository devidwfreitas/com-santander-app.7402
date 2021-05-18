package org.jaxen;

import java.util.List;

public interface XPath {
  void addNamespace(String paramString1, String paramString2);
  
  boolean booleanValueOf(Object paramObject);
  
  Object evaluate(Object paramObject);
  
  FunctionContext getFunctionContext();
  
  NamespaceContext getNamespaceContext();
  
  Navigator getNavigator();
  
  VariableContext getVariableContext();
  
  Number numberValueOf(Object paramObject);
  
  List selectNodes(Object paramObject);
  
  Object selectSingleNode(Object paramObject);
  
  void setFunctionContext(FunctionContext paramFunctionContext);
  
  void setNamespaceContext(NamespaceContext paramNamespaceContext);
  
  void setVariableContext(VariableContext paramVariableContext);
  
  String stringValueOf(Object paramObject);
  
  String valueOf(Object paramObject);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\XPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */