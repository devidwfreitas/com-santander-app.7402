package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class ElementArrayLabel extends TemplateLabel {
  private boolean data;
  
  private Decorator decorator;
  
  private Introspector detail;
  
  private String entry;
  
  private Format format;
  
  private ElementArray label;
  
  private String name;
  
  private Expression path;
  
  private boolean required;
  
  private Class type;
  
  public ElementArrayLabel(Contact paramContact, ElementArray paramElementArray, Format paramFormat) {
    this.detail = new Introspector(paramContact, this, paramFormat);
    this.decorator = new Qualifier(paramContact);
    this.required = paramElementArray.required();
    this.type = paramContact.getType();
    this.entry = paramElementArray.entry();
    this.data = paramElementArray.data();
    this.name = paramElementArray.name();
    this.format = paramFormat;
    this.label = paramElementArray;
  }
  
  private Converter getConverter(Context paramContext, String paramString) {
    Type type = getDependent();
    Contact contact = getContact();
    return (Converter)(!paramContext.isPrimitive(type) ? new CompositeArray(paramContext, contact, type, paramString) : new PrimitiveArray(paramContext, contact, type, paramString));
  }
  
  public Annotation getAnnotation() {
    return (Annotation)this.label;
  }
  
  public Contact getContact() {
    return this.detail.getContact();
  }
  
  public Converter getConverter(Context paramContext) {
    Contact contact = getContact();
    String str = getEntry();
    if (!this.type.isArray())
      throw new InstantiationException("Type is not an array %s for %s", new Object[] { this.type, contact }); 
    return getConverter(paramContext, str);
  }
  
  public Decorator getDecorator() {
    return this.decorator;
  }
  
  public Type getDependent() {
    Class<?> clazz = this.type.getComponentType();
    return (clazz == null) ? new ClassType(this.type) : new ClassType(clazz);
  }
  
  public Object getEmpty(Context paramContext) {
    ArrayFactory arrayFactory = new ArrayFactory(paramContext, new ClassType(this.type));
    return !this.label.empty() ? arrayFactory.getInstance() : null;
  }
  
  public String getEntry() {
    Style style = this.format.getStyle();
    if (this.detail.isEmpty(this.entry))
      this.entry = this.detail.getEntry(); 
    return style.getElement(this.entry);
  }
  
  public Expression getExpression() {
    if (this.path == null)
      this.path = this.detail.getExpression(); 
    return this.path;
  }
  
  public String getName() {
    return this.format.getStyle().getElement(this.detail.getName());
  }
  
  public String getOverride() {
    return this.name;
  }
  
  public String getPath() {
    return getExpression().getElement(getName());
  }
  
  public Class getType() {
    return this.type;
  }
  
  public boolean isData() {
    return this.data;
  }
  
  public boolean isRequired() {
    return this.required;
  }
  
  public String toString() {
    return this.detail.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ElementArrayLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */