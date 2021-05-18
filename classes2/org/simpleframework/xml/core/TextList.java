package org.simpleframework.xml.core;

import java.util.Collection;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class TextList implements Repeater {
  private final CollectionFactory factory;
  
  private final Primitive primitive;
  
  private final Type type = new ClassType(String.class);
  
  public TextList(Context paramContext, Type paramType, Label paramLabel) {
    this.factory = new CollectionFactory(paramContext, paramType);
    this.primitive = new Primitive(paramContext, this.type);
  }
  
  public Object read(InputNode paramInputNode) {
    Instance instance = this.factory.getInstance(paramInputNode);
    Object object = instance.getInstance();
    return instance.isReference() ? instance.getInstance() : read(paramInputNode, object);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Collection<Object> collection = (Collection)paramObject;
    Object object = this.primitive.read(paramInputNode);
    if (object != null)
      collection.add(object); 
    return paramObject;
  }
  
  public boolean validate(InputNode paramInputNode) {
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    paramObject = paramObject;
    paramOutputNode = paramOutputNode.getParent();
    paramObject = paramObject.iterator();
    while (paramObject.hasNext()) {
      Object object = paramObject.next();
      this.primitive.write(paramOutputNode, object);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\TextList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */