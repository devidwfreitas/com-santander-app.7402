package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;
import org.simpleframework.xml.stream.Style;

class CompositeKey implements Converter {
  private final Context context;
  
  private final Entry entry;
  
  private final Traverser root;
  
  private final Style style;
  
  private final Type type;
  
  public CompositeKey(Context paramContext, Entry paramEntry, Type paramType) {
    this.root = new Traverser(paramContext);
    this.style = paramContext.getStyle();
    this.context = paramContext;
    this.entry = paramEntry;
    this.type = paramType;
  }
  
  private Object read(InputNode paramInputNode, String paramString) {
    String str = this.style.getElement(paramString);
    Class clazz = this.type.getType();
    InputNode inputNode = paramInputNode;
    if (str != null)
      inputNode = paramInputNode.getNext(str); 
    return (inputNode != null && !inputNode.isEmpty()) ? this.root.read(inputNode, clazz) : null;
  }
  
  private boolean validate(InputNode paramInputNode, String paramString) {
    paramInputNode = paramInputNode.getNext(this.style.getElement(paramString));
    Class clazz = this.type.getType();
    return (paramInputNode != null && !paramInputNode.isEmpty()) ? this.root.validate(paramInputNode, clazz) : true;
  }
  
  public Object read(InputNode paramInputNode) {
    Position position = paramInputNode.getPosition();
    Class clazz = this.type.getType();
    String str2 = this.entry.getKey();
    String str1 = str2;
    if (str2 == null)
      str1 = this.context.getName(clazz); 
    if (this.entry.isAttribute())
      throw new AttributeException("Can not have %s as an attribute for %s at %s", new Object[] { clazz, this.entry, position }); 
    return read(paramInputNode, str1);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Position position = paramInputNode.getPosition();
    Class clazz = this.type.getType();
    if (paramObject != null)
      throw new PersistenceException("Can not read key of %s for %s at %s", new Object[] { clazz, this.entry, position }); 
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode) {
    Position position = paramInputNode.getPosition();
    Class clazz = this.type.getType();
    String str2 = this.entry.getKey();
    String str1 = str2;
    if (str2 == null)
      str1 = this.context.getName(clazz); 
    if (this.entry.isAttribute())
      throw new ElementException("Can not have %s as an attribute for %s at %s", new Object[] { clazz, this.entry, position }); 
    return validate(paramInputNode, str1);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    Class clazz = this.type.getType();
    String str2 = this.entry.getKey();
    if (this.entry.isAttribute())
      throw new ElementException("Can not have %s as an attribute for %s", new Object[] { clazz, this.entry }); 
    String str1 = str2;
    if (str2 == null)
      str1 = this.context.getName(clazz); 
    str1 = this.style.getElement(str1);
    this.root.write(paramOutputNode, paramObject, clazz, str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CompositeKey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */