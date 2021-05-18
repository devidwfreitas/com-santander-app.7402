package org.simpleframework.xml.stream;

interface EventNode extends Iterable<Attribute> {
  int getLine();
  
  String getName();
  
  String getPrefix();
  
  String getReference();
  
  Object getSource();
  
  String getValue();
  
  boolean isEnd();
  
  boolean isStart();
  
  boolean isText();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\EventNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */