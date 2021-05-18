package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.stream.Format;

class AttributeLabel extends TemplateLabel {
  private Decorator decorator;
  
  private Introspector detail;
  
  private String empty;
  
  private Format format;
  
  private Attribute label;
  
  private String name;
  
  private Expression path;
  
  private boolean required;
  
  private Class type;
  
  public AttributeLabel(Contact paramContact, Attribute paramAttribute, Format paramFormat) {
    this.detail = new Introspector(paramContact, this, paramFormat);
    this.decorator = new Qualifier(paramContact);
    this.required = paramAttribute.required();
    this.type = paramContact.getType();
    this.empty = paramAttribute.empty();
    this.name = paramAttribute.name();
    this.format = paramFormat;
    this.label = paramAttribute;
  }
  
  public Annotation getAnnotation() {
    return (Annotation)this.label;
  }
  
  public Contact getContact() {
    return this.detail.getContact();
  }
  
  public Converter getConverter(Context paramContext) {
    String str = getEmpty(paramContext);
    return new Primitive(paramContext, getContact(), str);
  }
  
  public Decorator getDecorator() {
    return this.decorator;
  }
  
  public String getEmpty(Context paramContext) {
    return this.detail.isEmpty(this.empty) ? null : this.empty;
  }
  
  public Expression getExpression() {
    if (this.path == null)
      this.path = this.detail.getExpression(); 
    return this.path;
  }
  
  public String getName() {
    return this.format.getStyle().getAttribute(this.detail.getName());
  }
  
  public String getOverride() {
    return this.name;
  }
  
  public String getPath() {
    return getExpression().getAttribute(getName());
  }
  
  public Class getType() {
    return this.type;
  }
  
  public boolean isAttribute() {
    return true;
  }
  
  public boolean isData() {
    return false;
  }
  
  public boolean isRequired() {
    return this.required;
  }
  
  public String toString() {
    return this.detail.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\AttributeLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */