package org.simpleframework.xml.core;

interface Group {
  LabelMap getElements();
  
  Label getLabel(Class paramClass);
  
  Label getText();
  
  boolean isInline();
  
  boolean isTextList();
  
  String toString();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Group.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */