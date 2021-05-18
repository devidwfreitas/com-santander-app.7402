package org.simpleframework.xml.stream;

public interface OutputNode extends Node {
  void commit();
  
  NodeMap<OutputNode> getAttributes();
  
  OutputNode getChild(String paramString);
  
  String getComment();
  
  Mode getMode();
  
  NamespaceMap getNamespaces();
  
  OutputNode getParent();
  
  String getPrefix();
  
  String getPrefix(boolean paramBoolean);
  
  String getReference();
  
  boolean isCommitted();
  
  boolean isRoot();
  
  void remove();
  
  OutputNode setAttribute(String paramString1, String paramString2);
  
  void setComment(String paramString);
  
  void setData(boolean paramBoolean);
  
  void setMode(Mode paramMode);
  
  void setName(String paramString);
  
  void setReference(String paramString);
  
  void setValue(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\OutputNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */