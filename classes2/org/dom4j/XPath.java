package org.dom4j;

import java.util.List;
import java.util.Map;
import org.jaxen.FunctionContext;
import org.jaxen.NamespaceContext;
import org.jaxen.VariableContext;

public interface XPath extends NodeFilter {
  boolean booleanValueOf(Object paramObject);
  
  Object evaluate(Object paramObject);
  
  FunctionContext getFunctionContext();
  
  NamespaceContext getNamespaceContext();
  
  String getText();
  
  VariableContext getVariableContext();
  
  boolean matches(Node paramNode);
  
  Number numberValueOf(Object paramObject);
  
  List<? extends Node> selectNodes(Object paramObject);
  
  List<? extends Node> selectNodes(Object paramObject, XPath paramXPath);
  
  List<? extends Node> selectNodes(Object paramObject, XPath paramXPath, boolean paramBoolean);
  
  Object selectObject(Object paramObject);
  
  Node selectSingleNode(Object paramObject);
  
  void setFunctionContext(FunctionContext paramFunctionContext);
  
  void setNamespaceContext(NamespaceContext paramNamespaceContext);
  
  void setNamespaceURIs(Map<String, String> paramMap);
  
  void setVariableContext(VariableContext paramVariableContext);
  
  void sort(List<? extends Node> paramList);
  
  void sort(List<? extends Node> paramList, boolean paramBoolean);
  
  String valueOf(Object paramObject);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\XPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */