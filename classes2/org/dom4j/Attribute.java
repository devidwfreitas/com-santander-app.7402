package org.dom4j;

public interface Attribute extends Node {
  Object getData();
  
  Namespace getNamespace();
  
  String getNamespacePrefix();
  
  String getNamespaceURI();
  
  QName getQName();
  
  String getQualifiedName();
  
  String getValue();
  
  void setData(Object paramObject);
  
  void setNamespace(Namespace paramNamespace);
  
  void setValue(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\Attribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */