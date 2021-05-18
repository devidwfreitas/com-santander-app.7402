package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.Position;

class ArrayFactory extends Factory {
  public ArrayFactory(Context paramContext, Type paramType) {
    super(paramContext, paramType);
  }
  
  private Class getComponentType() {
    Class clazz = getType();
    if (!clazz.isArray())
      throw new InstantiationException("The %s not an array for %s", new Object[] { clazz, this.type }); 
    return clazz.getComponentType();
  }
  
  private Instance getInstance(Value paramValue, Class<?> paramClass) {
    Class clazz = getComponentType();
    if (!clazz.isAssignableFrom(paramClass))
      throw new InstantiationException("Array of type %s cannot hold %s for %s", new Object[] { clazz, paramClass, this.type }); 
    return new ArrayInstance(paramValue);
  }
  
  public Object getInstance() {
    Class<?> clazz = getComponentType();
    return (clazz != null) ? Array.newInstance(clazz, 0) : null;
  }
  
  public Instance getInstance(InputNode paramInputNode) {
    Position position = paramInputNode.getPosition();
    Value value = getOverride(paramInputNode);
    if (value == null)
      throw new ElementException("Array length required for %s at %s", new Object[] { this.type, position }); 
    return getInstance(value, value.getType());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ArrayFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */