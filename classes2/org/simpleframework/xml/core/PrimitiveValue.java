package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class PrimitiveValue implements Converter {
  private final Context context;
  
  private final Entry entry;
  
  private final PrimitiveFactory factory;
  
  private final Primitive root;
  
  private final Style style;
  
  private final Type type;
  
  public PrimitiveValue(Context paramContext, Entry paramEntry, Type paramType) {
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
    InputNode inputNode = paramInputNode;
    if (paramString != null)
      inputNode = paramInputNode.getAttribute(this.style.getAttribute(paramString)); 
    return (inputNode == null) ? null : this.root.read(inputNode);
  }
  
  private Object readElement(InputNode paramInputNode, String paramString) {
    paramInputNode = paramInputNode.getNext(this.style.getAttribute(paramString));
    return (paramInputNode == null) ? null : this.root.read(paramInputNode);
  }
  
  private boolean validateAttribute(InputNode paramInputNode, String paramString) {
    InputNode inputNode = paramInputNode;
    if (paramString != null)
      inputNode = paramInputNode.getNext(this.style.getAttribute(paramString)); 
    return (inputNode == null) ? true : this.root.validate(inputNode);
  }
  
  private boolean validateElement(InputNode paramInputNode, String paramString) {
    return (paramInputNode.getNext(this.style.getAttribute(paramString)) == null) ? true : this.root.validate(paramInputNode);
  }
  
  private void writeAttribute(OutputNode paramOutputNode, Object paramObject, String paramString) {
    if (paramObject != null) {
      OutputNode outputNode = paramOutputNode;
      if (paramString != null)
        outputNode = paramOutputNode.setAttribute(this.style.getAttribute(paramString), null); 
      this.root.write(outputNode, paramObject);
    } 
  }
  
  private void writeElement(OutputNode paramOutputNode, Object paramObject, String paramString) {
    paramOutputNode = paramOutputNode.getChild(this.style.getAttribute(paramString));
    if (paramObject != null && !isOverridden(paramOutputNode, paramObject))
      this.root.write(paramOutputNode, paramObject); 
  }
  
  public Object read(InputNode paramInputNode) {
    Class clazz = this.type.getType();
    String str = this.entry.getValue();
    if (!this.entry.isInline()) {
      String str1 = str;
      if (str == null)
        str1 = this.context.getName(clazz); 
      return readElement(paramInputNode, str1);
    } 
    return readAttribute(paramInputNode, str);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Class clazz = this.type.getType();
    if (paramObject != null)
      throw new PersistenceException("Can not read value of %s for %s", new Object[] { clazz, this.entry }); 
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode) {
    Class clazz = this.type.getType();
    String str = this.entry.getValue();
    if (!this.entry.isInline()) {
      String str1 = str;
      if (str == null)
        str1 = this.context.getName(clazz); 
      return validateElement(paramInputNode, str1);
    } 
    return validateAttribute(paramInputNode, str);
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    Class clazz = this.type.getType();
    String str = this.entry.getValue();
    if (!this.entry.isInline()) {
      String str1 = str;
      if (str == null)
        str1 = this.context.getName(clazz); 
      writeElement(paramOutputNode, paramObject, str1);
      return;
    } 
    writeAttribute(paramOutputNode, paramObject, str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PrimitiveValue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */