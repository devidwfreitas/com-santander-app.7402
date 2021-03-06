package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class ElementMapLabel extends TemplateLabel {
  private Expression cache;
  
  private boolean data;
  
  private Decorator decorator;
  
  private Introspector detail;
  
  private Entry entry;
  
  private Format format;
  
  private boolean inline;
  
  private Class[] items;
  
  private ElementMap label;
  
  private String name;
  
  private String override;
  
  private String parent;
  
  private String path;
  
  private boolean required;
  
  private Class type;
  
  public ElementMapLabel(Contact paramContact, ElementMap paramElementMap, Format paramFormat) {
    this.detail = new Introspector(paramContact, this, paramFormat);
    this.decorator = new Qualifier(paramContact);
    this.entry = new Entry(paramContact, paramElementMap);
    this.required = paramElementMap.required();
    this.type = paramContact.getType();
    this.inline = paramElementMap.inline();
    this.override = paramElementMap.name();
    this.data = paramElementMap.data();
    this.format = paramFormat;
    this.label = paramElementMap;
  }
  
  private Type getMap() {
    return new ClassType(this.type);
  }
  
  public Annotation getAnnotation() {
    return (Annotation)this.label;
  }
  
  public Contact getContact() {
    return this.detail.getContact();
  }
  
  public Converter getConverter(Context paramContext) {
    Type type = getMap();
    return (Converter)(!this.label.inline() ? new CompositeMap(paramContext, this.entry, type) : new CompositeInlineMap(paramContext, this.entry, type));
  }
  
  public Decorator getDecorator() {
    return this.decorator;
  }
  
  public Type getDependent() {
    Contact contact = getContact();
    if (this.items == null)
      this.items = contact.getDependents(); 
    if (this.items == null)
      throw new ElementException("Unable to determine type for %s", new Object[] { contact }); 
    return (this.items.length == 0) ? new ClassType(Object.class) : new ClassType(this.items[0]);
  }
  
  public Object getEmpty(Context paramContext) {
    MapFactory mapFactory = new MapFactory(paramContext, new ClassType(this.type));
    return !this.label.empty() ? mapFactory.getInstance() : null;
  }
  
  public String getEntry() {
    Style style = this.format.getStyle();
    if (this.detail.isEmpty(this.parent))
      this.parent = this.detail.getEntry(); 
    return style.getElement(this.parent);
  }
  
  public Expression getExpression() {
    if (this.cache == null)
      this.cache = this.detail.getExpression(); 
    return this.cache;
  }
  
  public String getName() {
    if (this.name == null) {
      Style style = this.format.getStyle();
      String str = this.entry.getEntry();
      if (!this.label.inline())
        str = this.detail.getName(); 
      this.name = style.getElement(str);
    } 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ElementMapLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */