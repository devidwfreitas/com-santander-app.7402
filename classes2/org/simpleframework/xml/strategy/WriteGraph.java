package org.simpleframework.xml.strategy;

import java.lang.reflect.Array;
import java.util.IdentityHashMap;
import org.simpleframework.xml.stream.NodeMap;

class WriteGraph extends IdentityHashMap<Object, String> {
  private final String label;
  
  private final String length;
  
  private final String mark;
  
  private final String refer;
  
  public WriteGraph(Contract paramContract) {
    this.refer = paramContract.getReference();
    this.mark = paramContract.getIdentity();
    this.length = paramContract.getLength();
    this.label = paramContract.getLabel();
  }
  
  private Class writeArray(Class paramClass, Object paramObject, NodeMap paramNodeMap) {
    int i = Array.getLength(paramObject);
    if (!containsKey(paramObject))
      paramNodeMap.put(this.length, String.valueOf(i)); 
    return paramClass.getComponentType();
  }
  
  private boolean writeReference(Object paramObject, NodeMap paramNodeMap) {
    String str = get(paramObject);
    int i = size();
    if (str != null) {
      paramNodeMap.put(this.refer, str);
      return true;
    } 
    str = String.valueOf(i);
    paramNodeMap.put(this.mark, str);
    put(paramObject, str);
    return false;
  }
  
  public boolean write(Type paramType, Object paramObject, NodeMap paramNodeMap) {
    Class<?> clazz1;
    Class<?> clazz2 = paramObject.getClass();
    Class<?> clazz3 = paramType.getType();
    if (clazz2.isArray()) {
      clazz1 = writeArray(clazz2, paramObject, paramNodeMap);
    } else {
      clazz1 = clazz2;
    } 
    if (clazz2 != clazz3)
      paramNodeMap.put(this.label, clazz1.getName()); 
    return writeReference(paramObject, paramNodeMap);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\WriteGraph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */