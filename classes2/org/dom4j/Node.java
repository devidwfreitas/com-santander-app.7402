package org.dom4j;

import java.io.Writer;
import java.util.List;

public interface Node extends Cloneable {
  void accept(Visitor paramVisitor);
  
  String asXML();
  
  Node asXPathResult(Element paramElement);
  
  Object clone();
  
  XPath createXPath(String paramString);
  
  Node detach();
  
  Document getDocument();
  
  String getName();
  
  short getNodeType();
  
  NodeType getNodeTypeEnum();
  
  String getNodeTypeName();
  
  Element getParent();
  
  String getPath();
  
  String getPath(Element paramElement);
  
  String getStringValue();
  
  String getText();
  
  String getUniquePath();
  
  String getUniquePath(Element paramElement);
  
  boolean hasContent();
  
  boolean isReadOnly();
  
  boolean matches(String paramString);
  
  Number numberValueOf(String paramString);
  
  List<? extends Node> selectNodes(String paramString);
  
  List<? extends Node> selectNodes(String paramString1, String paramString2);
  
  List<? extends Node> selectNodes(String paramString1, String paramString2, boolean paramBoolean);
  
  Object selectObject(String paramString);
  
  Node selectSingleNode(String paramString);
  
  void setDocument(Document paramDocument);
  
  void setName(String paramString);
  
  void setParent(Element paramElement);
  
  void setText(String paramString);
  
  boolean supportsParent();
  
  String valueOf(String paramString);
  
  void write(Writer paramWriter);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\Node.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */