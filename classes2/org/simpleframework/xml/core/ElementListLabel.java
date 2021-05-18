package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class ElementListLabel extends TemplateLabel {
  private Expression cache;
  
  private boolean data;
  
  private Decorator decorator;
  
  private Introspector detail;
  
  private String entry;
  
  private Format format;
  
  private boolean inline;
  
  private Class item;
  
  private ElementList label;
  
  private String name;
  
  private String override;
  
  private String path;
  
  private boolean required;
  
  private Class type;
  
  public ElementListLabel(Contact paramContact, ElementList paramElementList, Format paramFormat) {
    this.detail = new Introspector(paramContact, this, paramFormat);
    this.decorator = new Qualifier(paramContact);
    this.required = paramElementList.required();
    this.type = paramContact.getType();
    this.override = paramElementList.name();
    this.inline = paramElementList.inline();
    this.entry = paramElementList.entry();
    this.data = paramElementList.data();
    this.item = paramElementList.type();
    this.format = paramFormat;
    this.label = paramElementList;
  }
  
  private Converter getConverter(Context paramContext, String paramString) {
    Type type = getDependent();
    Contact contact = getContact();
    return (Converter)(!paramContext.isPrimitive(type) ? new CompositeList(paramContext, contact, type, paramString) : new PrimitiveList(paramContext, contact, type, paramString));
  }
  
  private Converter getInlineConverter(Context paramContext, String paramString) {
    Type type = getDependent();
    Contact contact = getContact();
    return (Converter)(!paramContext.isPrimitive(type) ? new CompositeInlineList(paramContext, contact, type, paramString) : new PrimitiveInlineList(paramContext, contact, type, paramString));
  }
  
  public Annotation getAnnotation() {
    return (Annotation)this.label;
  }
  
  public Contact getContact() {
    return this.detail.getContact();
  }
  
  public Converter getConverter(Context paramContext) {
    String str = getEntry();
    return !this.label.inline() ? getConverter(paramContext, str) : getInlineConverter(paramContext, str);
  }
  
  public Decorator getDecorator() {
    return this.decorator;
  }
  
  public Type getDependent() {
    Contact contact = getContact();
    if (this.item == void.class)
      this.item = contact.getDependent(); 
    if (this.item == null)
      throw new ElementException("Unable to determine generic type for %s", new Object[] { contact }); 
    return new ClassType(this.item);
  }
  
  public Object getEmpty(Context paramContext) {
    CollectionFactory collectionFactory = new CollectionFactory(paramContext, new ClassType(this.type));
    return !this.label.empty() ? collectionFactory.getInstance() : null;
  }
  
  public String getEntry() {
    Style style = this.format.getStyle();
    if (this.detail.isEmpty(this.entry))
      this.entry = this.detail.getEntry(); 
    return style.getElement(this.entry);
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
    return this.type;
  }
  
  public boolean isCollection() {
    return true;
  }
  
  public boolean isData() {
    return this.data;
  }
  
  public boolean isInline() {
    return this.inline;
  }
  
  public boolean isRequired() {
    return this.required;
  }
  
  public String toString() {
    return this.detail.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ElementListLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */