package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Collections;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeListUnion implements Repeater {
  private final Context context;
  
  private final LabelMap elements;
  
  private final Group group;
  
  private final Expression path;
  
  private final Style style;
  
  private final Type type;
  
  public CompositeListUnion(Context paramContext, Group paramGroup, Expression paramExpression, Type paramType) {
    this.elements = paramGroup.getElements();
    this.style = paramContext.getStyle();
    this.context = paramContext;
    this.group = paramGroup;
    this.type = paramType;
    this.path = paramExpression;
  }
  
  private Object readElement(InputNode paramInputNode) {
    String str = paramInputNode.getName();
    str = this.path.getElement(str);
    return this.elements.get(str).getConverter(this.context).read(paramInputNode);
  }
  
  private Object readElement(InputNode paramInputNode, Object paramObject) {
    String str = paramInputNode.getName();
    str = this.path.getElement(str);
    return this.elements.get(str).getConverter(this.context).read(paramInputNode, paramObject);
  }
  
  private Object readText(InputNode paramInputNode) {
    return this.group.getText().getConverter(this.context).read(paramInputNode);
  }
  
  private Object readText(InputNode paramInputNode, Object paramObject) {
    return this.group.getText().getConverter(this.context).read(paramInputNode.getParent(), paramObject);
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, Label paramLabel) {
    Converter converter = paramLabel.getConverter(this.context);
    paramObject = Collections.singleton(paramObject);
    if (!paramLabel.isInline()) {
      String str = paramLabel.getName();
      str = this.style.getElement(str);
      if (!paramOutputNode.isCommitted())
        paramOutputNode.setName(str); 
    } 
    converter.write(paramOutputNode, paramObject);
  }
  
  private void write(OutputNode paramOutputNode, Collection paramCollection) {
    for (Object object : paramCollection) {
      if (object != null) {
        Class<?> clazz = object.getClass();
        Label label = this.group.getLabel(clazz);
        if (label == null)
          throw new UnionException("Entry of %s not declared in %s with annotation %s", new Object[] { clazz, this.type, this.group }); 
        write(paramOutputNode, object, label);
      } 
    } 
  }
  
  public Object read(InputNode paramInputNode) {
    return (this.group.getText() == null) ? readElement(paramInputNode) : readText(paramInputNode);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Object object = readElement(paramInputNode, paramObject);
    if (this.group.getText() != null)
      object = readText(paramInputNode, paramObject); 
    return object;
  }
  
  public boolean validate(InputNode paramInputNode) {
    String str = paramInputNode.getName();
    str = this.path.getElement(str);
    return this.elements.get(str).getConverter(this.context).validate(paramInputNode);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    paramObject = paramObject;
    if (this.group.isInline()) {
      if (!paramObject.isEmpty()) {
        write(paramOutputNode, (Collection)paramObject);
        return;
      } 
      if (!paramOutputNode.isCommitted()) {
        paramOutputNode.remove();
        return;
      } 
      return;
    } 
    write(paramOutputNode, (Collection)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeListUnion.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */