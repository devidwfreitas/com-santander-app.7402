package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeValue implements Converter {
  private final Context context;
  
  private final Entry entry;
  
  private final Traverser root;
  
  private final Style style;
  
  private final Type type;
  
  public CompositeValue(Context paramContext, Entry paramEntry, Type paramType) {
    this.root = new Traverser(paramContext);
    this.style = paramContext.getStyle();
    this.context = paramContext;
    this.entry = paramEntry;
    this.type = paramType;
  }
  
  private boolean validate(InputNode paramInputNode, String paramString) {
    paramInputNode = paramInputNode.getNext(this.style.getElement(paramString));
    Class clazz = this.type.getType();
    return (paramInputNode != null && !paramInputNode.isEmpty()) ? this.root.validate(paramInputNode, clazz) : true;
  }
  
  public Object read(InputNode paramInputNode) {
    paramInputNode = paramInputNode.getNext();
    Class clazz = this.type.getType();
    return (paramInputNode != null && !paramInputNode.isEmpty()) ? this.root.read(paramInputNode, clazz) : null;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Class clazz = this.type.getType();
    if (paramObject != null)
      throw new PersistenceException("Can not read value of %s for %s", new Object[] { clazz, this.entry }); 
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode) {
    Class clazz = this.type.getType();
    String str2 = this.entry.getValue();
    String str1 = str2;
    if (str2 == null)
      str1 = this.context.getName(clazz); 
    return validate(paramInputNode, str1);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    Class clazz = this.type.getType();
    String str2 = this.entry.getValue();
    String str1 = str2;
    if (str2 == null)
      str1 = this.context.getName(clazz); 
    str1 = this.style.getElement(str1);
    this.root.write(paramOutputNode, paramObject, clazz, str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeValue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */