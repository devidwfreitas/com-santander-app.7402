package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeMap implements Converter {
  private final Entry entry;
  
  private final MapFactory factory;
  
  private final Converter key;
  
  private final Style style;
  
  private final Converter value;
  
  public CompositeMap(Context paramContext, Entry paramEntry, Type paramType) {
    this.factory = new MapFactory(paramContext, paramType);
    this.value = paramEntry.getValue(paramContext);
    this.key = paramEntry.getKey(paramContext);
    this.style = paramContext.getStyle();
    this.entry = paramEntry;
  }
  
  private Object populate(InputNode paramInputNode, Object paramObject) {
    paramObject = paramObject;
    while (true) {
      InputNode inputNode = paramInputNode.getNext();
      if (inputNode == null)
        return paramObject; 
      paramObject.put(this.key.read(inputNode), this.value.read(inputNode));
    } 
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass) {
    boolean bool = false;
    while (true) {
      InputNode inputNode = paramInputNode.getNext();
      if (inputNode == null)
        return true; 
      boolean bool1 = bool;
      if (this.key.validate(inputNode)) {
        if (!this.value.validate(inputNode))
          return false; 
        continue;
      } 
      return bool1;
    } 
  }
  
  public Object read(InputNode paramInputNode) {
    Instance instance = this.factory.getInstance(paramInputNode);
    Object object2 = instance.getInstance();
    Object object1 = object2;
    if (!instance.isReference())
      object1 = populate(paramInputNode, object2); 
    return object1;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Instance instance = this.factory.getInstance(paramInputNode);
    if (instance.isReference())
      return instance.getInstance(); 
    instance.setInstance(paramObject);
    Object object = paramObject;
    return (paramObject != null) ? populate(paramInputNode, paramObject) : object;
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
    paramObject = paramObject;
    for (Object object : paramObject.keySet()) {
      String str = this.entry.getEntry();
      OutputNode outputNode = paramOutputNode.getChild(this.style.getElement(str));
      Object object1 = paramObject.get(object);
      this.key.write(outputNode, object);
      this.value.write(outputNode, object1);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */