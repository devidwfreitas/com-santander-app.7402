package org.simpleframework.xml.core;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;

class MapFactory extends Factory {
  public MapFactory(Context paramContext, Type paramType) {
    super(paramContext, paramType);
  }
  
  private boolean isMap(Class<?> paramClass) {
    return Map.class.isAssignableFrom(paramClass);
  }
  
  public Class getConversion(Class paramClass) {
    if (paramClass.isAssignableFrom(HashMap.class))
      return HashMap.class; 
    if (paramClass.isAssignableFrom(TreeMap.class))
      return TreeMap.class; 
    throw new InstantiationException("Cannot instantiate %s for %s", new Object[] { paramClass, this.type });
  }
  
  public Object getInstance() {
    Class clazz1;
    Class clazz2 = getType();
    if (!isInstantiable(clazz2)) {
      clazz1 = getConversion(clazz2);
    } else {
      clazz1 = clazz2;
    } 
    if (!isMap(clazz1))
      throw new InstantiationException("Invalid map %s for %s", new Object[] { clazz2, this.type }); 
    return clazz1.newInstance();
  }
  
  public Instance getInstance(Value paramValue) {
    Class clazz2 = paramValue.getType();
    Class clazz1 = clazz2;
    if (!isInstantiable(clazz2))
      clazz1 = getConversion(clazz2); 
    if (!isMap(clazz1))
      throw new InstantiationException("Invalid map %s for %s", new Object[] { clazz1, this.type }); 
    return new ConversionInstance(this.context, paramValue, clazz1);
  }
  
  public Instance getInstance(InputNode paramInputNode) {
    Value value = getOverride(paramInputNode);
    Class clazz2 = getType();
    if (value != null)
      return getInstance(value); 
    Class clazz1 = clazz2;
    if (!isInstantiable(clazz2))
      clazz1 = getConversion(clazz2); 
    if (!isMap(clazz1))
      throw new InstantiationException("Invalid map %s for %s", new Object[] { clazz1, this.type }); 
    return this.context.getInstance(clazz1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\MapFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */