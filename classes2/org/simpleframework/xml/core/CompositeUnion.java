package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class CompositeUnion implements Converter {
  private final Context context;
  
  private final LabelMap elements;
  
  private final Group group;
  
  private final Expression path;
  
  private final Type type;
  
  public CompositeUnion(Context paramContext, Group paramGroup, Expression paramExpression, Type paramType) {
    this.elements = paramGroup.getElements();
    this.context = paramContext;
    this.group = paramGroup;
    this.type = paramType;
    this.path = paramExpression;
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, Label paramLabel) {
    paramLabel.getConverter(this.context).write(paramOutputNode, paramObject);
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
    Class<?> clazz = paramObject.getClass();
    Label label = this.group.getLabel(clazz);
    if (label == null)
      throw new UnionException("Value of %s not declared in %s with annotation %s", new Object[] { clazz, this.type, this.group }); 
    write(paramOutputNode, paramObject, label);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeUnion.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */