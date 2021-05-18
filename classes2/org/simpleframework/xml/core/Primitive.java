package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class Primitive implements Converter {
  private final Context context;
  
  private final String empty;
  
  private final Class expect;
  
  private final PrimitiveFactory factory;
  
  private final Type type;
  
  public Primitive(Context paramContext, Type paramType) {
    this(paramContext, paramType, null);
  }
  
  public Primitive(Context paramContext, Type paramType, String paramString) {
    this.factory = new PrimitiveFactory(paramContext, paramType);
    this.expect = paramType.getType();
    this.context = paramContext;
    this.empty = paramString;
    this.type = paramType;
  }
  
  private Object readElement(InputNode paramInputNode) {
    Instance instance = this.factory.getInstance(paramInputNode);
    return !instance.isReference() ? readElement(paramInputNode, instance) : instance.getInstance();
  }
  
  private Object readElement(InputNode paramInputNode, Instance paramInstance) {
    Object object = read(paramInputNode, this.expect);
    if (paramInstance != null)
      paramInstance.setInstance(object); 
    return object;
  }
  
  private Object readTemplate(String paramString, Class paramClass) {
    paramString = this.context.getProperty(paramString);
    return (paramString != null) ? this.factory.getInstance(paramString, paramClass) : null;
  }
  
  private boolean validateElement(InputNode paramInputNode) {
    Instance instance = this.factory.getInstance(paramInputNode);
    if (!instance.isReference())
      instance.setInstance(null); 
    return true;
  }
  
  public Object read(InputNode paramInputNode) {
    return paramInputNode.isElement() ? readElement(paramInputNode) : read(paramInputNode, this.expect);
  }
  
  public Object read(InputNode paramInputNode, Class paramClass) {
    String str = paramInputNode.getValue();
    return (str == null) ? null : ((this.empty != null && str.equals(this.empty)) ? this.empty : readTemplate(str, paramClass));
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    if (paramObject != null)
      throw new PersistenceException("Can not read existing %s for %s", new Object[] { this.expect, this.type }); 
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode) {
    if (paramInputNode.isElement()) {
      validateElement(paramInputNode);
      return true;
    } 
    paramInputNode.getValue();
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    paramObject = this.factory.getText(paramObject);
    if (paramObject != null)
      paramOutputNode.setValue((String)paramObject); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Primitive.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */