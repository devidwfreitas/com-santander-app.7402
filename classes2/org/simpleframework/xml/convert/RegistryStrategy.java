package org.simpleframework.xml.convert;

import java.util.Map;
import org.simpleframework.xml.strategy.Strategy;
import org.simpleframework.xml.strategy.TreeStrategy;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;

public class RegistryStrategy implements Strategy {
  private final Registry registry;
  
  private final Strategy strategy;
  
  public RegistryStrategy(Registry paramRegistry) {
    this(paramRegistry, (Strategy)new TreeStrategy());
  }
  
  public RegistryStrategy(Registry paramRegistry, Strategy paramStrategy) {
    this.registry = paramRegistry;
    this.strategy = paramStrategy;
  }
  
  private boolean isReference(Value paramValue) {
    return (paramValue != null && paramValue.isReference());
  }
  
  private Converter lookup(Type paramType, Object paramObject) {
    Class<?> clazz = paramType.getType();
    if (paramObject != null)
      clazz = paramObject.getClass(); 
    return this.registry.lookup(clazz);
  }
  
  private Converter lookup(Type paramType, Value paramValue) {
    Class clazz = paramType.getType();
    if (paramValue != null)
      clazz = paramValue.getType(); 
    return this.registry.lookup(clazz);
  }
  
  private Value read(Type paramType, NodeMap<InputNode> paramNodeMap, Value paramValue) {
    Converter<Value> converter = lookup(paramType, paramValue);
    InputNode inputNode = (InputNode)paramNodeMap.getNode();
    Value value = paramValue;
    if (converter != null) {
      value = converter.read(inputNode);
      Class clazz = paramType.getType();
      if (paramValue != null)
        paramValue.setValue(value); 
      value = new Reference(paramValue, value, clazz);
    } 
    return value;
  }
  
  private boolean write(Type paramType, Object paramObject, NodeMap<OutputNode> paramNodeMap) {
    Converter<Object> converter = lookup(paramType, paramObject);
    OutputNode outputNode = (OutputNode)paramNodeMap.getNode();
    if (converter != null) {
      converter.write(outputNode, paramObject);
      return true;
    } 
    return false;
  }
  
  public Value read(Type paramType, NodeMap<InputNode> paramNodeMap, Map paramMap) {
    Value value = this.strategy.read(paramType, paramNodeMap, paramMap);
    return isReference(value) ? value : read(paramType, paramNodeMap, value);
  }
  
  public boolean write(Type paramType, Object paramObject, NodeMap<OutputNode> paramNodeMap, Map paramMap) {
    boolean bool2 = this.strategy.write(paramType, paramObject, paramNodeMap, paramMap);
    boolean bool1 = bool2;
    if (!bool2)
      bool1 = write(paramType, paramObject, paramNodeMap); 
    return bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\RegistryStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */