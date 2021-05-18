package org.simpleframework.xml.core;

import java.util.Collection;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class CompositeList implements Converter {
  private final Type entry;
  
  private final CollectionFactory factory;
  
  private final String name;
  
  private final Traverser root;
  
  private final Type type;
  
  public CompositeList(Context paramContext, Type paramType1, Type paramType2, String paramString) {
    this.factory = new CollectionFactory(paramContext, paramType1);
    this.root = new Traverser(paramContext);
    this.entry = paramType2;
    this.type = paramType1;
    this.name = paramString;
  }
  
  private Object populate(InputNode paramInputNode, Object paramObject) {
    paramObject = paramObject;
    while (true) {
      InputNode inputNode = paramInputNode.getNext();
      Class clazz = this.entry.getType();
      if (inputNode == null)
        return paramObject; 
      paramObject.add(this.root.read(inputNode, clazz));
    } 
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass) {
    while (true) {
      InputNode inputNode = paramInputNode.getNext();
      Class clazz = this.entry.getType();
      if (inputNode == null)
        return true; 
      this.root.validate(inputNode, clazz);
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
        Class clazz = this.entry.getType();
        Class<?> clazz1 = object.getClass();
        if (!clazz.isAssignableFrom(clazz1))
          throw new PersistenceException("Entry %s does not match %s for %s", new Object[] { clazz1, this.entry, this.type }); 
        this.root.write(paramOutputNode, object, clazz, this.name);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */