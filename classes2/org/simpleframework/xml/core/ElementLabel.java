package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;

class ElementLabel extends TemplateLabel {
  private Expression cache;
  
  private boolean data;
  
  private Decorator decorator;
  
  private Introspector detail;
  
  private Class expect;
  
  private Format format;
  
  private Element label;
  
  private String name;
  
  private String override;
  
  private String path;
  
  private boolean required;
  
  private Class type;
  
  public ElementLabel(Contact paramContact, Element paramElement, Format paramFormat) {
    this.detail = new Introspector(paramContact, this, paramFormat);
    this.decorator = new Qualifier(paramContact);
    this.required = paramElement.required();
    this.type = paramContact.getType();
    this.override = paramElement.name();
    this.expect = paramElement.type();
    this.data = paramElement.data();
    this.format = paramFormat;
    this.label = paramElement;
  }
  
  public Annotation getAnnotation() {
    return (Annotation)this.label;
  }
  
  public Contact getContact() {
    return this.detail.getContact();
  }
  
  public Converter getConverter(Context paramContext) {
    Contact contact = getContact();
    return (Converter)(paramContext.isPrimitive(contact) ? new Primitive(paramContext, contact) : ((this.expect == void.class) ? new Composite(paramContext, contact) : new Composite(paramContext, contact, this.expect)));
  }
  
  public Decorator getDecorator() {
    return this.decorator;
  }
  
  public Object getEmpty(Context paramContext) {
    return null;
  }
  
  public Expression getExpression() {
    if (this.cache == null)
      this.cache = this.detail.getExpression(); 
    return this.cache;
  }
  
  public String getName() {
    if (this.name == null)
      this.name = this.format.getStyle().getElement(this.detail.getName()); 
    return this.name;
  }
  
  public String getOverride() {
    return this.override;
  }
  
  public String getPath() {
    if (this.path == null)
      this.path = getExpression().getElement(getName()); 
    return this.path;
  }
  
  public Class getType() {
    return (this.expect == void.class) ? this.type : this.expect;
  }
  
  public Type getType(Class paramClass) {
    Contact contact = getContact();
    return (Type)((this.expect == void.class) ? contact : new OverrideType(contact, this.expect));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ElementLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */