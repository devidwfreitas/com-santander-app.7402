package org.simpleframework.xml.core;

import java.util.Collection;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class PrimitiveList implements Converter {
  private final Type entry;
  
  private final CollectionFactory factory;
  
  private final String parent;
  
  private final Primitive root;
  
  public PrimitiveList(Context paramContext, Type paramType1, Type paramType2, String paramString) {
    this.factory = new CollectionFactory(paramContext, paramType1);
    this.root = new Primitive(paramContext, paramType2);
    this.parent = paramString;
    this.entry = paramType2;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject) {
    return this.factory.setOverride(this.entry, paramObject, paramOutputNode);
  }
  
  private Object populate(InputNode paramInputNode, Object paramObject) {
    paramObject = paramObject;
    while (true) {
      InputNode inputNode = paramInputNode.getNext();
      if (inputNode == null)
        return paramObject; 
      paramObject.add(this.root.read(inputNode));
    } 
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass) {
    while (true) {
      InputNode inputNode = paramInputNode.getNext();
      if (inputNode == null)
        return true; 
      this.root.validate(inputNode);
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
    paramObject = ((Collection)paramObject).iterator();
    while (paramObject.hasNext()) {
      Object object = paramObject.next();
      if (object != null) {
        OutputNode outputNode = paramOutputNode.getChild(this.parent);
        if (!isOverridden(outputNode, object))
          this.root.write(outputNode, object); 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PrimitiveList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */