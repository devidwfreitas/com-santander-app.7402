package org.simpleframework.xml.core;

import java.util.Collection;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.Mode;
import org.simpleframework.xml.stream.OutputNode;

class PrimitiveInlineList implements Repeater {
  private final Type entry;
  
  private final CollectionFactory factory;
  
  private final String parent;
  
  private final Primitive root;
  
  public PrimitiveInlineList(Context paramContext, Type paramType1, Type paramType2, String paramString) {
    this.factory = new CollectionFactory(paramContext, paramType1);
    this.root = new Primitive(paramContext, paramType2);
    this.parent = paramString;
    this.entry = paramType2;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject) {
    return this.factory.setOverride(this.entry, paramObject, paramOutputNode);
  }
  
  private Object read(InputNode paramInputNode, Collection<Object> paramCollection) {
    InputNode inputNode = paramInputNode.getParent();
    String str = paramInputNode.getName();
    while (paramInputNode != null) {
      Object object = this.root.read(paramInputNode);
      if (object != null)
        paramCollection.add(object); 
      object = inputNode.getNext(str);
    } 
    return paramCollection;
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, Mode paramMode) {
    paramObject = ((Collection)paramObject).iterator();
    while (paramObject.hasNext()) {
      Object object = paramObject.next();
      if (object != null) {
        OutputNode outputNode = paramOutputNode.getChild(this.parent);
        if (!isOverridden(outputNode, object)) {
          outputNode.setMode(paramMode);
          this.root.write(outputNode, object);
        } 
      } 
    } 
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
    String str = paramInputNode.getName();
    while (paramInputNode != null) {
      if (!this.root.validate(paramInputNode))
        return false; 
      paramInputNode = inputNode.getNext(str);
    } 
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    OutputNode outputNode = paramOutputNode.getParent();
    Mode mode = paramOutputNode.getMode();
    if (!paramOutputNode.isCommitted())
      paramOutputNode.remove(); 
    write(outputNode, paramObject, mode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PrimitiveInlineList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */