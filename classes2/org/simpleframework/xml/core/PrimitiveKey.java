package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class PrimitiveKey implements Converter {
  private final Context context;
  
  private final Entry entry;
  
  private final PrimitiveFactory factory;
  
  private final Primitive root;
  
  private final Style style;
  
  private final Type type;
  
  public PrimitiveKey(Context paramContext, Entry paramEntry, Type paramType) {
    this.factory = new PrimitiveFactory(paramContext, paramType);
    this.root = new Primitive(paramContext, paramType);
    this.style = paramContext.getStyle();
    this.context = paramContext;
    this.entry = paramEntry;
    this.type = paramType;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject) {
    return this.factory.setOverride(this.type, paramObject, paramOutputNode);
  }
  
  private Object readAttribute(InputNode paramInputNode, String paramString) {
    paramInputNode = paramInputNode.getAttribute(this.style.getAttribute(paramString));
    return (paramInputNode == null) ? null : this.root.read(paramInputNode);
  }
  
  private Object readElement(InputNode paramInputNode, String paramString) {
    paramInputNode = paramInputNode.getNext(this.style.getElement(paramString));
    return (paramInputNode == null) ? null : this.root.read(paramInputNode);
  }
  
  private boolean validateAttribute(InputNode paramInputNode, String paramString) {
    paramInputNode = paramInputNode.getAttribute(this.style.getElement(paramString));
    return (paramInputNode == null) ? true : this.root.validate(paramInputNode);
  }
  
  private boolean validateElement(InputNode paramInputNode, String paramString) {
    paramInputNode = paramInputNode.getNext(this.style.getElement(paramString));
    return (paramInputNode == null) ? true : this.root.validate(paramInputNode);
  }
  
  private void writeAttribute(OutputNode paramOutputNode, Object paramObject) {
    Class clazz = this.type.getType();
    String str2 = this.factory.getText(paramObject);
    String str1 = this.entry.getKey();
    paramObject = str1;
    if (str1 == null)
      paramObject = this.context.getName(clazz); 
    paramObject = this.style.getAttribute((String)paramObject);
    if (str2 != null)
      paramOutputNode.setAttribute((String)paramObject, str2); 
  }
  
  private void writeElement(OutputNode paramOutputNode, Object paramObject) {
    Class clazz = this.type.getType();
    String str2 = this.entry.getKey();
    String str1 = str2;
    if (str2 == null)
      str1 = this.context.getName(clazz); 
    paramOutputNode = paramOutputNode.getChild(this.style.getElement(str1));
    if (paramObject != null && !isOverridden(paramOutputNode, paramObject))
      this.root.write(paramOutputNode, paramObject); 
  }
  
  public Object read(InputNode paramInputNode) {
    Class clazz = this.type.getType();
    String str2 = this.entry.getKey();
    String str1 = str2;
    if (str2 == null)
      str1 = this.context.getName(clazz); 
    return !this.entry.isAttribute() ? readElement(paramInputNode, str1) : readAttribute(paramInputNode, str1);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Class clazz = this.type.getType();
    if (paramObject != null)
      throw new PersistenceException("Can not read key of %s for %s", new Object[] { clazz, this.entry }); 
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode) {
    Class clazz = this.type.getType();
    String str2 = this.entry.getKey();
    String str1 = str2;
    if (str2 == null)
      str1 = this.context.getName(clazz); 
    return !this.entry.isAttribute() ? validateElement(paramInputNode, str1) : validateAttribute(paramInputNode, str1);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    if (!this.entry.isAttribute()) {
      writeElement(paramOutputNode, paramObject);
      return;
    } 
    if (paramObject != null) {
      writeAttribute(paramOutputNode, paramObject);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PrimitiveKey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */