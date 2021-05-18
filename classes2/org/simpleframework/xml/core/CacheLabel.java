package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

class CacheLabel implements Label {
  private final Annotation annotation;
  
  private final boolean attribute;
  
  private final boolean collection;
  
  private final Contact contact;
  
  private final boolean data;
  
  private final Decorator decorator;
  
  private final Type depend;
  
  private final String entry;
  
  private final Expression expression;
  
  private final boolean inline;
  
  private final Object key;
  
  private final Label label;
  
  private final boolean list;
  
  private final String name;
  
  private final String[] names;
  
  private final String override;
  
  private final String path;
  
  private final String[] paths;
  
  private final boolean required;
  
  private final boolean text;
  
  private final Class type;
  
  private final boolean union;
  
  public CacheLabel(Label paramLabel) {
    this.annotation = paramLabel.getAnnotation();
    this.expression = paramLabel.getExpression();
    this.decorator = paramLabel.getDecorator();
    this.attribute = paramLabel.isAttribute();
    this.collection = paramLabel.isCollection();
    this.contact = paramLabel.getContact();
    this.depend = paramLabel.getDependent();
    this.required = paramLabel.isRequired();
    this.override = paramLabel.getOverride();
    this.list = paramLabel.isTextList();
    this.inline = paramLabel.isInline();
    this.union = paramLabel.isUnion();
    this.names = paramLabel.getNames();
    this.paths = paramLabel.getPaths();
    this.path = paramLabel.getPath();
    this.type = paramLabel.getType();
    this.name = paramLabel.getName();
    this.entry = paramLabel.getEntry();
    this.data = paramLabel.isData();
    this.text = paramLabel.isText();
    this.key = paramLabel.getKey();
    this.label = paramLabel;
  }
  
  public Annotation getAnnotation() {
    return this.annotation;
  }
  
  public Contact getContact() {
    return this.contact;
  }
  
  public Converter getConverter(Context paramContext) {
    return this.label.getConverter(paramContext);
  }
  
  public Decorator getDecorator() {
    return this.decorator;
  }
  
  public Type getDependent() {
    return this.depend;
  }
  
  public Object getEmpty(Context paramContext) {
    return this.label.getEmpty(paramContext);
  }
  
  public String getEntry() {
    return this.entry;
  }
  
  public Expression getExpression() {
    return this.expression;
  }
  
  public Object getKey() {
    return this.key;
  }
  
  public Label getLabel(Class paramClass) {
    return this.label.getLabel(paramClass);
  }
  
  public String getName() {
    return this.name;
  }
  
  public String[] getNames() {
    return this.names;
  }
  
  public String getOverride() {
    return this.override;
  }
  
  public String getPath() {
    return this.path;
  }
  
  public String[] getPaths() {
    return this.paths;
  }
  
  public Class getType() {
    return this.type;
  }
  
  public Type getType(Class paramClass) {
    return this.label.getType(paramClass);
  }
  
  public boolean isAttribute() {
    return this.attribute;
  }
  
  public boolean isCollection() {
    return this.collection;
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
  
  public boolean isText() {
    return this.text;
  }
  
  public boolean isTextList() {
    return this.list;
  }
  
  public boolean isUnion() {
    return this.union;
  }
  
  public String toString() {
    return this.label.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\CacheLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */