package org.dom4j;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

public interface Element extends Branch {
  void add(Attribute paramAttribute);
  
  void add(CDATA paramCDATA);
  
  void add(Entity paramEntity);
  
  void add(Namespace paramNamespace);
  
  void add(Text paramText);
  
  Element addAttribute(String paramString1, String paramString2);
  
  Element addAttribute(QName paramQName, String paramString);
  
  Element addCDATA(String paramString);
  
  Element addComment(String paramString);
  
  Element addEntity(String paramString1, String paramString2);
  
  Element addNamespace(String paramString1, String paramString2);
  
  Element addProcessingInstruction(String paramString1, String paramString2);
  
  Element addProcessingInstruction(String paramString, Map paramMap);
  
  Element addText(String paramString);
  
  List<Namespace> additionalNamespaces();
  
  void appendAttributes(Element paramElement);
  
  Attribute attribute(int paramInt);
  
  Attribute attribute(String paramString);
  
  Attribute attribute(QName paramQName);
  
  int attributeCount();
  
  Iterator<Attribute> attributeIterator();
  
  String attributeValue(String paramString);
  
  String attributeValue(String paramString1, String paramString2);
  
  String attributeValue(QName paramQName);
  
  String attributeValue(QName paramQName, String paramString);
  
  List<Attribute> attributes();
  
  Element createCopy();
  
  Element createCopy(String paramString);
  
  Element createCopy(QName paramQName);
  
  List<Namespace> declaredNamespaces();
  
  Element element(String paramString);
  
  Element element(QName paramQName);
  
  Iterator<Element> elementIterator();
  
  Iterator<Element> elementIterator(String paramString);
  
  Iterator<Element> elementIterator(QName paramQName);
  
  String elementText(String paramString);
  
  String elementText(QName paramQName);
  
  String elementTextTrim(String paramString);
  
  String elementTextTrim(QName paramQName);
  
  List<Element> elements();
  
  List<Element> elements(String paramString);
  
  List<Element> elements(QName paramQName);
  
  Object getData();
  
  Namespace getNamespace();
  
  Namespace getNamespaceForPrefix(String paramString);
  
  Namespace getNamespaceForURI(String paramString);
  
  String getNamespacePrefix();
  
  String getNamespaceURI();
  
  List<Namespace> getNamespacesForURI(String paramString);
  
  QName getQName();
  
  QName getQName(String paramString);
  
  String getQualifiedName();
  
  String getStringValue();
  
  String getText();
  
  String getTextTrim();
  
  Node getXPathResult(int paramInt);
  
  boolean hasMixedContent();
  
  boolean isRootElement();
  
  boolean isTextOnly();
  
  boolean remove(Attribute paramAttribute);
  
  boolean remove(CDATA paramCDATA);
  
  boolean remove(Entity paramEntity);
  
  boolean remove(Namespace paramNamespace);
  
  boolean remove(Text paramText);
  
  void setAttributes(List<Attribute> paramList);
  
  void setData(Object paramObject);
  
  void setQName(QName paramQName);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\Element.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */