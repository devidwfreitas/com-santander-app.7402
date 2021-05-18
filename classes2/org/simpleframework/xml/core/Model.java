package org.simpleframework.xml.core;

interface Model extends Iterable<String> {
  LabelMap getAttributes();
  
  LabelMap getElements();
  
  Expression getExpression();
  
  int getIndex();
  
  ModelMap getModels();
  
  String getName();
  
  String getPrefix();
  
  Label getText();
  
  boolean isAttribute(String paramString);
  
  boolean isComposite();
  
  boolean isElement(String paramString);
  
  boolean isEmpty();
  
  boolean isModel(String paramString);
  
  Model lookup(String paramString, int paramInt);
  
  Model lookup(Expression paramExpression);
  
  Model register(String paramString1, String paramString2, int paramInt);
  
  void register(Label paramLabel);
  
  void registerAttribute(String paramString);
  
  void registerAttribute(Label paramLabel);
  
  void registerElement(String paramString);
  
  void registerElement(Label paramLabel);
  
  void registerText(Label paramLabel);
  
  void validate(Class paramClass);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Model.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */