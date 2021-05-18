package org.simpleframework.xml.core;

import java.util.Collections;
import java.util.Map;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeMapUnion implements Repeater {
  private final Context context;
  
  private final LabelMap elements;
  
  private final Group group;
  
  private final Expression path;
  
  private final Style style;
  
  private final Type type;
  
  public CompositeMapUnion(Context paramContext, Group paramGroup, Expression paramExpression, Type paramType) {
    this.elements = paramGroup.getElements();
    this.style = paramContext.getStyle();
    this.context = paramContext;
    this.group = paramGroup;
    this.type = paramType;
    this.path = paramExpression;
  }
  
  private void write(OutputNode paramOutputNode, Object<Object, Object> paramObject1, Object paramObject2, Label paramLabel) {
    Converter converter = paramLabel.getConverter(this.context);
    paramObject1 = Collections.singletonMap(paramObject1, paramObject2);
    if (!paramLabel.isInline()) {
      paramObject2 = paramLabel.getName();
      paramObject2 = this.style.getElement((String)paramObject2);
      if (!paramOutputNode.isCommitted())
        paramOutputNode.setName((String)paramObject2); 
    } 
    converter.write(paramOutputNode, paramObject1);
  }
  
  private void write(OutputNode paramOutputNode, Map paramMap) {
    for (Object object : paramMap.keySet()) {
      Object object1 = paramMap.get(object);
      if (object1 != null) {
        Class<?> clazz = object1.getClass();
        Label label = this.group.getLabel(clazz);
        if (label == null)
          throw new UnionException("Value of %s not declared in %s with annotation %s", new Object[] { clazz, this.type, this.group }); 
        write(paramOutputNode, object, object1, label);
      } 
    } 
  }
  
  public Object read(InputNode paramInputNode) {
    String str = paramInputNode.getName();
    str = this.path.getElement(str);
    return this.elements.get(str).getConverter(this.context).read(paramInputNode);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    String str = paramInputNode.getName();
    str = this.path.getElement(str);
    return this.elements.get(str).getConverter(this.context).read(paramInputNode, paramObject);
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
        write(paramOutputNode, (Map)paramObject);
        return;
      } 
      if (!paramOutputNode.isCommitted()) {
        paramOutputNode.remove();
        return;
      } 
      return;
    } 
    write(paramOutputNode, (Map)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeMapUnion.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */