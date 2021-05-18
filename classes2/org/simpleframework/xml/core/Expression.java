package org.simpleframework.xml.core;

interface Expression extends Iterable<String> {
  String getAttribute(String paramString);
  
  String getElement(String paramString);
  
  String getFirst();
  
  int getIndex();
  
  String getLast();
  
  String getPath();
  
  Expression getPath(int paramInt);
  
  Expression getPath(int paramInt1, int paramInt2);
  
  String getPrefix();
  
  boolean isAttribute();
  
  boolean isEmpty();
  
  boolean isPath();
  
  String toString();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Expression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */