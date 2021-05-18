package org.simpleframework.xml.core;

interface Section extends Iterable<String> {
  String getAttribute(String paramString);
  
  LabelMap getAttributes();
  
  Label getElement(String paramString);
  
  LabelMap getElements();
  
  String getName();
  
  String getPath(String paramString);
  
  String getPrefix();
  
  Section getSection(String paramString);
  
  Label getText();
  
  boolean isSection(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Section.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */