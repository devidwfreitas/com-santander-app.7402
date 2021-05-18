package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;

class PrimitiveFactory extends Factory {
  public PrimitiveFactory(Context paramContext, Type paramType) {
    super(paramContext, paramType);
  }
  
  public PrimitiveFactory(Context paramContext, Type paramType, Class paramClass) {
    super(paramContext, paramType, paramClass);
  }
  
  public Object getInstance(String paramString, Class paramClass) {
    return this.support.read(paramString, paramClass);
  }
  
  public Instance getInstance(InputNode paramInputNode) {
    Value value = getOverride(paramInputNode);
    Class clazz = getType();
    return (value == null) ? this.context.getInstance(clazz) : new ObjectInstance(this.context, value);
  }
  
  public String getText(Object paramObject) {
    Class<?> clazz = paramObject.getClass();
    return clazz.isEnum() ? this.support.write(paramObject, clazz) : this.support.write(paramObject, clazz);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PrimitiveFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */