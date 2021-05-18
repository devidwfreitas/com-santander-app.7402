package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

class PrimitiveArray implements Converter {
  private final Type entry;
  
  private final ArrayFactory factory;
  
  private final String parent;
  
  private final Primitive root;
  
  private final Type type;
  
  public PrimitiveArray(Context paramContext, Type paramType1, Type paramType2, String paramString) {
    this.factory = new ArrayFactory(paramContext, paramType1);
    this.root = new Primitive(paramContext, paramType2);
    this.parent = paramString;
    this.entry = paramType2;
    this.type = paramType1;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject) {
    return this.factory.setOverride(this.entry, paramObject, paramOutputNode);
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass) {
    while (true) {
      InputNode inputNode = paramInputNode.getNext();
      if (inputNode == null)
        return true; 
      this.root.validate(inputNode);
    } 
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, int paramInt) {
    paramObject = Array.get(paramObject, paramInt);
    if (paramObject != null && !isOverridden(paramOutputNode, paramObject))
      this.root.write(paramOutputNode, paramObject); 
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
      Array.set(paramObject, i, this.root.read(inputNode));
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
    int i = 0;
    while (true) {
      if (i < j) {
        OutputNode outputNode = paramOutputNode.getChild(this.parent);
        if (outputNode != null) {
          write(outputNode, paramObject, i);
          i++;
          continue;
        } 
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PrimitiveArray.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */