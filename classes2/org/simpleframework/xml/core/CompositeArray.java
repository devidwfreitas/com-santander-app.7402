package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

class CompositeArray implements Converter {
  private final Type entry;
  
  private final ArrayFactory factory;
  
  private final String parent;
  
  private final Traverser root;
  
  private final Type type;
  
  public CompositeArray(Context paramContext, Type paramType1, Type paramType2, String paramString) {
    this.factory = new ArrayFactory(paramContext, paramType1);
    this.root = new Traverser(paramContext);
    this.parent = paramString;
    this.entry = paramType2;
    this.type = paramType1;
  }
  
  private void read(InputNode paramInputNode, Object paramObject, int paramInt) {
    Class clazz = this.entry.getType();
    Object object = null;
    if (!paramInputNode.isEmpty())
      object = this.root.read(paramInputNode, clazz); 
    Array.set(paramObject, paramInt, object);
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass) {
    while (true) {
      InputNode inputNode = paramInputNode.getNext();
      if (inputNode == null)
        return true; 
      if (!inputNode.isEmpty())
        this.root.validate(inputNode, paramClass); 
    } 
  }
  
  public Object read(InputNode paramInputNode) {
    Instance instance = this.factory.getInstance(paramInputNode);
    Object object2 = instance.getInstance();
    Object object1 = object2;
    if (!instance.isReference())
      object1 = read(paramInputNode, object2); 
    return object1;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    int j = Array.getLength(paramObject);
    for (int i = 0;; i++) {
      Position position = paramInputNode.getPosition();
      InputNode inputNode = paramInputNode.getNext();
      if (inputNode == null)
        return paramObject; 
      if (i >= j)
        throw new ElementException("Array length missing or incorrect for %s at %s", new Object[] { this.type, position }); 
      read(inputNode, paramObject, i);
    } 
  }
  
  public boolean validate(InputNode paramInputNode) {
    Instance instance = this.factory.getInstance(paramInputNode);
    if (!instance.isReference()) {
      instance.setInstance(null);
      return validate(paramInputNode, instance.getType());
    } 
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    int j = Array.getLength(paramObject);
    for (int i = 0; i < j; i++) {
      Object object = Array.get(paramObject, i);
      Class clazz = this.entry.getType();
      this.root.write(paramOutputNode, object, clazz, this.parent);
    } 
    paramOutputNode.commit();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeArray.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */