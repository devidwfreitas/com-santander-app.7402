package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

interface Context {
  Object getAttribute(Object paramObject);
  
  Caller getCaller(Class paramClass);
  
  Decorator getDecorator(Class paramClass);
  
  Instance getInstance(Class paramClass);
  
  Instance getInstance(Value paramValue);
  
  String getName(Class paramClass);
  
  Value getOverride(Type paramType, InputNode paramInputNode);
  
  String getProperty(String paramString);
  
  Schema getSchema(Class paramClass);
  
  Session getSession();
  
  Style getStyle();
  
  Support getSupport();
  
  Class getType(Type paramType, Object paramObject);
  
  Version getVersion(Class paramClass);
  
  boolean isFloat(Class paramClass);
  
  boolean isFloat(Type paramType);
  
  boolean isPrimitive(Class paramClass);
  
  boolean isPrimitive(Type paramType);
  
  boolean isStrict();
  
  boolean setOverride(Type paramType, Object paramObject, OutputNode paramOutputNode);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Context.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */