package org.simpleframework.xml.stream;

public interface InputNode extends Node {
  InputNode getAttribute(String paramString);
  
  NodeMap<InputNode> getAttributes();
  
  InputNode getNext();
  
  InputNode getNext(String paramString);
  
  InputNode getParent();
  
  Position getPosition();
  
  String getPrefix();
  
  String getReference();
  
  Object getSource();
  
  boolean isElement();
  
  boolean isEmpty();
  
  boolean isRoot();
  
  void skip();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\InputNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */