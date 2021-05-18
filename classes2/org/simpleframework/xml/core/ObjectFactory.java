package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;

class ObjectFactory extends PrimitiveFactory {
  public ObjectFactory(Context paramContext, Type paramType, Class paramClass) {
    super(paramContext, paramType, paramClass);
  }
  
  public Instance getInstance(InputNode paramInputNode) {
    Value value = getOverride(paramInputNode);
    Class clazz = getType();
    if (value == null) {
      if (!isInstantiable(clazz))
        throw new InstantiationException("Cannot instantiate %s for %s", new Object[] { clazz, this.type }); 
      return this.context.getInstance(clazz);
    } 
    return new ObjectInstance(this.context, value);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ObjectFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */