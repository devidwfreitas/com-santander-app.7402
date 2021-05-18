package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

class Variable implements Label {
  private final Label label;
  
  private final Object value;
  
  public Variable(Label paramLabel, Object paramObject) {
    this.label = paramLabel;
    this.value = paramObject;
  }
  
  public Annotation getAnnotation() {
    return this.label.getAnnotation();
  }
  
  public Contact getContact() {
    return this.label.getContact();
  }
  
  public Converter getConverter(Context paramContext) {
    Converter converter = this.label.getConverter(paramContext);
    return (converter instanceof Variable$Adapter) ? converter : new Variable$Adapter(converter, this.label, this.value);
  }
  
  public Decorator getDecorator() {
    return this.label.getDecorator();
  }
  
  public Type getDependent() {
    return this.label.getDependent();
  }
  
  public Object getEmpty(Context paramContext) {
    return this.label.getEmpty(paramContext);
  }
  
  public String getEntry() {
    return this.label.getEntry();
  }
  
  public Expression getExpression() {
    return this.label.getExpression();
  }
  
  public Object getKey() {
    return this.label.getKey();
  }
  
  public Label getLabel(Class paramClass) {
    return this;
  }
  
  public String getName() {
    return this.label.getName();
  }
  
  public String[] getNames() {
    return this.label.getNames();
  }
  
  public String getOverride() {
    return this.label.getOverride();
  }
  
  public String getPath() {
    return this.label.getPath();
  }
  
  public String[] getPaths() {
    return this.label.getPaths();
  }
  
  public Class getType() {
    return this.label.getType();
  }
  
  public Type getType(Class paramClass) {
    return this.label.getType(paramClass);
  }
  
  public Object getValue() {
    return this.value;
  }
  
  public boolean isAttribute() {
    return this.label.isAttribute();
  }
  
  public boolean isCollection() {
    return this.label.isCollection();
  }
  
  public boolean isData() {
    return this.label.isData();
  }
  
  public boolean isInline() {
    return this.label.isInline();
  }
  
  public boolean isRequired() {
    return this.label.isRequired();
  }
  
  public boolean isText() {
    return this.label.isText();
  }
  
  public boolean isTextList() {
    return this.label.isTextList();
  }
  
  public boolean isUnion() {
    return this.label.isUnion();
  }
  
  public String toString() {
    return this.label.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Variable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */