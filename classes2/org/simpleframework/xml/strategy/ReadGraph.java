package org.simpleframework.xml.strategy;

import java.util.HashMap;
import org.simpleframework.xml.stream.Node;
import org.simpleframework.xml.stream.NodeMap;

class ReadGraph extends HashMap {
  private final String label;
  
  private final String length;
  
  private final Loader loader;
  
  private final String mark;
  
  private final String refer;
  
  public ReadGraph(Contract paramContract, Loader paramLoader) {
    this.refer = paramContract.getReference();
    this.mark = paramContract.getIdentity();
    this.length = paramContract.getLength();
    this.label = paramContract.getLabel();
    this.loader = paramLoader;
  }
  
  private Value readArray(Type paramType, Class paramClass, NodeMap paramNodeMap) {
    Node node = paramNodeMap.remove(this.length);
    int i = 0;
    if (node != null)
      i = Integer.parseInt(node.getValue()); 
    return new ArrayValue(paramClass, i);
  }
  
  private Value readInstance(Type paramType, Class paramClass, NodeMap paramNodeMap) {
    Node node = paramNodeMap.remove(this.mark);
    if (node == null)
      return readReference(paramType, paramClass, paramNodeMap); 
    String str = node.getValue();
    if (containsKey(str))
      throw new CycleException("Element '%s' already exists", new Object[] { str }); 
    return readValue(paramType, paramClass, paramNodeMap, str);
  }
  
  private Value readReference(Type paramType, Class paramClass, NodeMap paramNodeMap) {
    Node node = paramNodeMap.remove(this.refer);
    if (node == null)
      return readValue(paramType, paramClass, paramNodeMap); 
    String str = node.getValue();
    paramNodeMap = (NodeMap)get(str);
    if (!containsKey(str))
      throw new CycleException("Invalid reference '%s' found", new Object[] { str }); 
    return new Reference(paramNodeMap, paramClass);
  }
  
  private Value readValue(Type paramType, Class paramClass, NodeMap paramNodeMap) {
    return paramType.getType().isArray() ? readArray(paramType, paramClass, paramNodeMap) : new ObjectValue(paramClass);
  }
  
  private Value readValue(Type paramType, Class paramClass, NodeMap paramNodeMap, String paramString) {
    Value value = readValue(paramType, paramClass, paramNodeMap);
    return (paramString != null) ? new Allocate(value, this, paramString) : value;
  }
  
  public Value read(Type paramType, NodeMap paramNodeMap) {
    Node node = paramNodeMap.remove(this.label);
    Class<?> clazz1 = paramType.getType();
    Class clazz = clazz1;
    if (clazz1.isArray())
      clazz = clazz1.getComponentType(); 
    if (node != null) {
      String str = node.getValue();
      clazz = this.loader.load(str);
    } 
    return readInstance(paramType, clazz, paramNodeMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\ReadGraph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */