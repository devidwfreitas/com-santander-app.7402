package org.simpleframework.xml.core;

import java.util.Collection;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class CompositeInlineList implements Repeater {
  private final Type entry;
  
  private final CollectionFactory factory;
  
  private final String name;
  
  private final Traverser root;
  
  private final Type type;
  
  public CompositeInlineList(Context paramContext, Type paramType1, Type paramType2, String paramString) {
    this.factory = new CollectionFactory(paramContext, paramType1);
    this.root = new Traverser(paramContext);
    this.entry = paramType2;
    this.type = paramType1;
    this.name = paramString;
  }
  
  private Object read(InputNode paramInputNode, Class<?> paramClass) {
    Object object = this.root.read(paramInputNode, paramClass);
    paramClass = object.getClass();
    if (!this.entry.getType().isAssignableFrom(paramClass))
      throw new PersistenceException("Entry %s does not match %s for %s", new Object[] { paramClass, this.entry, this.type }); 
    return object;
  }
  
  private Object read(InputNode paramInputNode, Collection<Object> paramCollection) {
    InputNode inputNode = paramInputNode.getParent();
    String str = paramInputNode.getName();
    while (paramInputNode != null) {
      Object object = read(paramInputNode, this.entry.getType());
      if (object != null)
        paramCollection.add(object); 
      object = inputNode.getNext(str);
    } 
    return paramCollection;
  }
  
  public Object read(InputNode paramInputNode) {
    Collection collection = (Collection)this.factory.getInstance();
    return (collection != null) ? read(paramInputNode, collection) : null;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    paramObject = paramObject;
    return (paramObject != null) ? read(paramInputNode, (Collection)paramObject) : read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode) {
    InputNode inputNode = paramInputNode.getParent();
    Class clazz = this.entry.getType();
    String str = paramInputNode.getName();
    while (paramInputNode != null) {
      if (!this.root.validate(paramInputNode, clazz))
        return false; 
      paramInputNode = inputNode.getNext(str);
    } 
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    paramObject = paramObject;
    OutputNode outputNode = paramOutputNode.getParent();
    if (!paramOutputNode.isCommitted())
      paramOutputNode.remove(); 
    write(outputNode, (Collection)paramObject);
  }
  
  public void write(OutputNode paramOutputNode, Collection paramCollection) {
    for (Object object : paramCollection) {
      if (object != null) {
        Class clazz = this.entry.getType();
        Class<?> clazz1 = object.getClass();
        if (!clazz.isAssignableFrom(clazz1))
          throw new PersistenceException("Entry %s does not match %s for %s", new Object[] { clazz1, clazz, this.type }); 
        this.root.write(paramOutputNode, object, clazz, this.name);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeInlineList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */