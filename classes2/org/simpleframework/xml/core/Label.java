package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

interface Label {
  Annotation getAnnotation();
  
  Contact getContact();
  
  Converter getConverter(Context paramContext);
  
  Decorator getDecorator();
  
  Type getDependent();
  
  Object getEmpty(Context paramContext);
  
  String getEntry();
  
  Expression getExpression();
  
  Object getKey();
  
  Label getLabel(Class paramClass);
  
  String getName();
  
  String[] getNames();
  
  String getOverride();
  
  String getPath();
  
  String[] getPaths();
  
  Class getType();
  
  Type getType(Class paramClass);
  
  boolean isAttribute();
  
  boolean isCollection();
  
  boolean isData();
  
  boolean isInline();
  
  boolean isRequired();
  
  boolean isText();
  
  boolean isTextList();
  
  boolean isUnion();
  
  String toString();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Label.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */