package org.simpleframework.xml.core;

import java.lang.reflect.Modifier;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

abstract class Factory {
  protected Context context;
  
  protected Class override;
  
  protected Support support;
  
  protected Type type;
  
  protected Factory(Context paramContext, Type paramType) {
    this(paramContext, paramType, null);
  }
  
  protected Factory(Context paramContext, Type paramType, Class paramClass) {
    this.support = paramContext.getSupport();
    this.override = paramClass;
    this.context = paramContext;
    this.type = paramType;
  }
  
  private Type getPrimitive(Type paramType, Class paramClass) {
    Support support = this.support;
    Class clazz = Support.getPrimitive(paramClass);
    Type type = paramType;
    if (clazz != paramClass)
      type = new OverrideType(paramType, clazz); 
    return type;
  }
  
  public static boolean isCompatible(Class<?> paramClass1, Class<?> paramClass2) {
    Class<?> clazz = paramClass1;
    if (paramClass1.isArray())
      clazz = paramClass1.getComponentType(); 
    return clazz.isAssignableFrom(paramClass2);
  }
  
  public static boolean isInstantiable(Class paramClass) {
    int i = paramClass.getModifiers();
    return (!Modifier.isAbstract(i) && !Modifier.isInterface(i));
  }
  
  public Value getConversion(InputNode paramInputNode) {
    Value value = this.context.getOverride(this.type, paramInputNode);
    if (value != null && this.override != null) {
      Class clazz = value.getType();
      if (!isCompatible(this.override, clazz))
        return new OverrideValue(value, this.override); 
    } 
    return value;
  }
  
  public Object getInstance() {
    Class clazz = getType();
    if (!isInstantiable(clazz))
      throw new InstantiationException("Type %s can not be instantiated", new Object[] { clazz }); 
    return clazz.newInstance();
  }
  
  protected Value getOverride(InputNode paramInputNode) {
    Value value = getConversion(paramInputNode);
    if (value != null) {
      Position position = paramInputNode.getPosition();
      Class clazz = value.getType();
      if (!isCompatible(getType(), clazz))
        throw new InstantiationException("Incompatible %s for %s at %s", new Object[] { clazz, this.type, position }); 
    } 
    return value;
  }
  
  public Class getType() {
    return (this.override != null) ? this.override : this.type.getType();
  }
  
  public boolean setOverride(Type paramType, Object paramObject, OutputNode paramOutputNode) {
    Class clazz = paramType.getType();
    Type type = paramType;
    if (clazz.isPrimitive())
      type = getPrimitive(paramType, clazz); 
    return this.context.setOverride(type, paramObject, paramOutputNode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Factory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */