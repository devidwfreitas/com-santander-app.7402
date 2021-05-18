package org.simpleframework.xml.strategy;

import java.lang.reflect.Array;
import java.util.Map;
import org.simpleframework.xml.stream.Node;
import org.simpleframework.xml.stream.NodeMap;

public class TreeStrategy implements Strategy {
  private final String label;
  
  private final String length;
  
  private final Loader loader = new Loader();
  
  public TreeStrategy() {
    this("class", "length");
  }
  
  public TreeStrategy(String paramString1, String paramString2) {
    this.length = paramString2;
    this.label = paramString1;
  }
  
  private Value readArray(Class paramClass, NodeMap paramNodeMap) {
    Node node = paramNodeMap.remove(this.length);
    int i = 0;
    if (node != null)
      i = Integer.parseInt(node.getValue()); 
    return new ArrayValue(paramClass, i);
  }
  
  private Class readValue(Type paramType, NodeMap paramNodeMap) {
    Node node = paramNodeMap.remove(this.label);
    Class<?> clazz1 = paramType.getType();
    Class clazz = clazz1;
    if (clazz1.isArray())
      clazz = clazz1.getComponentType(); 
    if (node != null) {
      String str = node.getValue();
      clazz = this.loader.load(str);
    } 
    return clazz;
  }
  
  private Class writeArray(Class paramClass, Object paramObject, NodeMap paramNodeMap) {
    int i = Array.getLength(paramObject);
    if (this.length != null)
      paramNodeMap.put(this.length, String.valueOf(i)); 
    return paramClass.getComponentType();
  }
  
  public Value read(Type paramType, NodeMap paramNodeMap, Map paramMap) {
    Class clazz2 = readValue(paramType, paramNodeMap);
    Class clazz1 = paramType.getType();
    return clazz1.isArray() ? readArray(clazz2, paramNodeMap) : ((clazz1 != clazz2) ? new ObjectValue(clazz2) : null);
  }
  
  public boolean write(Type paramType, Object paramObject, NodeMap paramNodeMap, Map paramMap) {
    Class<?> clazz1;
    Class<?> clazz2 = paramObject.getClass();
    Class<?> clazz3 = paramType.getType();
    if (clazz2.isArray()) {
      clazz1 = writeArray(clazz3, paramObject, paramNodeMap);
    } else {
      clazz1 = clazz2;
    } 
    if (clazz2 != clazz3)
      paramNodeMap.put(this.label, clazz1.getName()); 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\TreeStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */